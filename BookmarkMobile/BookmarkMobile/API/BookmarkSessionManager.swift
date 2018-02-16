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

class BookmarkSessionManager: NSObject {
    
    static let sharedInstance = BookmarkSessionManager()
    
    let baseURL = "http://dcomm.etiya.com/Dev-CommerceBackend/"
    
    //TODO :-
    /* Handle Time out request alamofire */
    
    
    func requestGETURL(_ strURL: String, success:@escaping (JSON) -> Void, failure:@escaping (Error) -> Void)
    {
        Alamofire.request(baseURL + strURL).responseJSON { (responseObject) -> Void in
            //print(responseObject)
            if responseObject.result.isSuccess {
                let resJson = JSON(responseObject.result.value!)
                //let title = resJson["title"].string
                //print(title!)
                success(resJson)
            }
            
            if responseObject.result.isFailure {
                let error : Error = responseObject.result.error!
                failure(error)
            }
        }
    }
    
    func requestPOSTURL(_ strURL : String, params : [String : AnyObject]?, headers : [String : String]?, success:@escaping (JSON) -> Void, failure:@escaping (Error) -> Void){
        Alamofire.request(baseURL + strURL, method: .post, parameters: params, encoding: JSONEncoding.default, headers: headers).responseJSON { (responseObject) -> Void in
            //print(responseObject)
            if responseObject.result.isSuccess {
                let resJson = JSON(responseObject.result.value!)
                success(resJson)
            }
            if responseObject.result.isFailure {
                let error : Error = responseObject.result.error!
                failure(error)
            }
        }
    }
}
