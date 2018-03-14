//
//  BookmarkSessionManager.swift
//  BookmarkMobile
//
//  Created by Alaattin Bedir on 16.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import SwiftyJSON
import ObjectMapper

class BookmarkError: Error {
    
    var errorCode: String
    var errorMessage: String
    
    init() {
        self.errorCode = ""
        self.errorMessage = ""
    }
    
    init(errorCode: String, errorMessage: String) {
        self.errorCode = errorCode
        self.errorMessage = errorMessage
    }
}

class BookmarkSessionManager: NSObject {
    
    static let sharedInstance = BookmarkSessionManager()
    private var sessionManager: SessionManager
    //    let baseURL = "https://jsonblob.com/api/"
    let baseURL = "http://dcomm.etiya.com/Dev-CommerceBackend/"
    
    private override init() {
        // Create custom manager
        let configuration = URLSessionConfiguration.default
        var headers = Alamofire.SessionManager.defaultHTTPHeaders
        headers["Clien-Version"] = "1.0"
        configuration.httpAdditionalHeaders = headers
        let manager = Alamofire.SessionManager(
            configuration: URLSessionConfiguration.default,
            serverTrustPolicyManager: CustomServerTrustPoliceManager()
        )
        
        self.sessionManager = manager
    }
    
    func isValidResponse(json: JSON) -> (Bool, String) {
        var response = (result: false, errorCode: "")
        
        let object = json["operationResult"].object
        guard let result: OperationResult = Mapper<OperationResult>().map(JSONObject: object) else {
            return response
        }
        
        if result.resultCode == "SUCCESS" {
            response.result = true
            response.errorCode = ""
        } else {
            response.result = false
            response.errorCode = result.operationResultCode!
        }
        
        return response
    }
    
    func formatedErrorMessage(errorCode: String) -> BookmarkError {
        var error: BookmarkError? = nil
        
        switch errorCode {
        case "BAD_CREDENTIALS":
            error = BookmarkError.init(errorCode: errorCode, errorMessage: "Username or password is wrong")
        case "MAP_ERROR":
            error = BookmarkError.init(errorCode: errorCode, errorMessage: "Error mapping response")
        default:
            error = BookmarkError.init(errorCode: errorCode, errorMessage: "An unknown error has occurred")
        }

        return error!
    }
    
    func requestGETURL(_ strURL: String, success:@escaping (JSON) -> Void, failure:@escaping (BookmarkError) -> Void) {
        guard Utilities.sharedInstance.isNetworkConnectivityAvailable() else {
            let bookmarError = BookmarkError.init(errorCode: "NO_CONNECTION_ERROR", errorMessage: "No Internet connection")
            failure(bookmarError)
            return
        }
        
        self.sessionManager.request(baseURL + strURL).responseJSON { (responseObject) -> Void in
            //print(responseObject)
            if responseObject.result.isSuccess {
                if let value = responseObject.result.value {
                    let json = JSON(value)
                    let (result, errorCode) = self.isValidResponse(json: json)
                    if result {
                        success(json)
                    } else {
                        let error = self.formatedErrorMessage(errorCode: errorCode)
                        failure(error)
                    }
                }
            }
            
            if responseObject.result.isFailure {
                if let error = responseObject.result.error {
                    let bookmarError = BookmarkError.init(errorCode: "NETWORK_ERROR", errorMessage: error.localizedDescription)
                    failure(bookmarError)
                }
            }
        }
    }
    
    func requestPOSTURL(_ strURL: String, params: [String: AnyObject]?, headers: [String: String]?, success:@escaping (JSON) -> Void, failure: @escaping (BookmarkError) -> Void) {
        
        guard Utilities.sharedInstance.isNetworkConnectivityAvailable() else {
            let bookmarError = BookmarkError.init(errorCode: "NO_CONNECTION_ERROR", errorMessage: "No Internet connection")
            failure(bookmarError)
            return
        }
        
        self.sessionManager.request(baseURL + strURL, method: .post, parameters: params, encoding: JSONEncoding.default, headers: headers).responseJSON { (responseObject) -> Void in
            //print(responseObject)
            if responseObject.result.isSuccess {
                if responseObject.result.isSuccess {
                    if let value = responseObject.result.value {
                        let json = JSON(value)
                        let (result, errorCode) = self.isValidResponse(json: json)
                        if result {
                            success(json)
                        } else {
                            let error = self.formatedErrorMessage(errorCode: errorCode)
                            failure(error)
                        }
                    }
                }
            }
            
            if responseObject.result.isFailure {
                if let error = responseObject.result.error {
                    let bookmarError = BookmarkError.init(errorCode: "NETWORK_ERROR", errorMessage: error.localizedDescription)
                    failure(bookmarError)
                }
            }
        }
    }
}

class CustomServerTrustPoliceManager: ServerTrustPolicyManager {
    override func serverTrustPolicy(forHost host: String) -> ServerTrustPolicy? {
        return .disableEvaluation
    }
    public init() {
        super.init(policies: [:])
    }
}
