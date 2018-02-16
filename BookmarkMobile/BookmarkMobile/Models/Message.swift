//
//  Test.swift
//  BookmarkMobile
//
//  Created by Alaattin Bedir on 16.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//


import ObjectMapper
import SwiftyJSON

class Message: Mappable {
    
    var message: String?
    var timestamp: Int32?
    var nickname: String?
    var avatarUrl: String?
    var type:UInt8 = 0
    
    init(message: String, timestamp: Int32, nickname: String, avatarUrl: String, type:UInt8) {
        self.message = message
        self.timestamp = timestamp
        self.nickname = nickname
        self.avatarUrl = avatarUrl
        self.type = type
    }
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        message <- map["message"]
        timestamp <- map["timestamp"]
        nickname <- map["nickname"]
        avatarUrl <- map["avatarUrl"]
    }
    
}

extension Message {
    
    // Get messages from service

    static func getMessages(success:@escaping (JSON) -> Void, failure:@escaping (Error) -> Void) -> Void {
        let dict = [String : AnyObject]()
        
        BookmarkSessionManager.sharedInstance.requestPOSTURL("http://", params: dict as! [String : AnyObject], headers: nil, success: { (json) in
            // success code
            success(json)
            print(json)
        }, failure: { (error) in
            //error code
            failure(error)
            print(error)
        })
        
        
    }
}



