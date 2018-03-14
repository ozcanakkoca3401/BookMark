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

// #TODO: Error codeları için bir func hazırlanacak ve error codeları için mesaj oluşturulacak

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
    
    func isValidResponse(resJson: JSON) -> (Bool, String) {
        
        var response = (result: false, errorCode: "")
        
        // Convert to json
        let json = JSON(resJson)
        
        // Get json array  from data
        let object = json["operationResult"].object
        
        // Map json array to Array<Message> object
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
            error = BookmarkError.init(errorCode: errorCode, errorMessage: "Kullanıcı adı veya şifre hatalı")
        default:
            error = BookmarkError.init(errorCode: errorCode, errorMessage: "Bilinmeyen bir hata oluştu")
        }

        return error!
    }
    
    func requestGETURL(_ strURL: String, success:@escaping (JSON) -> Void, failure:@escaping (BookmarkError) -> Void) {
        guard Utilities.sharedInstance.isNetworkConnectivityAvailable() else {
            let bookmarError = BookmarkError.init(errorCode: "NETWORK_ERROR", errorMessage: "Internet yok")
            failure(bookmarError)
            return
        }
        
        self.sessionManager.request(baseURL + strURL).responseJSON { (responseObject) -> Void in
            //print(responseObject)
            if responseObject.result.isSuccess {
                let resJson = JSON(responseObject.result.value!)
                
                let (result, errorCode) = self.isValidResponse(resJson: resJson)
                if result {
                    success(resJson)
                } else {
                    let error = self.formatedErrorMessage(errorCode: errorCode)
                    failure(error)
                }
            }
            
            if responseObject.result.isFailure {
                let error: Error = responseObject.result.error!
                let bookmarError = BookmarkError.init(errorCode: "NETWORK_ERROR", errorMessage: error.localizedDescription)
                failure(bookmarError)
            }
        }
    }
    
    func requestPOSTURL(_ strURL: String, params: [String: AnyObject]?, headers: [String: String]?, success:@escaping (JSON) -> Void, failure: @escaping (BookmarkError) -> Void) {
        
        guard Utilities.sharedInstance.isNetworkConnectivityAvailable() else {
            let bookmarError = BookmarkError.init(errorCode: "NETWORK_ERROR", errorMessage: "Internet yok")
            failure(bookmarError)
            return
        }
        
        self.sessionManager.request(baseURL + strURL, method: .post, parameters: params, encoding: JSONEncoding.default, headers: headers).responseJSON { (responseObject) -> Void in
            //print(responseObject)
            if responseObject.result.isSuccess {
                let resJson = JSON(responseObject.result.value!)
                
                let (result, errorCode) = self.isValidResponse(resJson: resJson)
                if result {
                    success(resJson)
                } else {
                    let error = self.formatedErrorMessage(errorCode: errorCode)
                    failure(error)
                }
                
            }
            
            if responseObject.result.isFailure {
                let error: Error = responseObject.result.error!
                let bookmarError = BookmarkError.init(errorCode: "NETWORK_ERROR", errorMessage: error.localizedDescription)
                failure(bookmarError)
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
