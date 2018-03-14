//
//  Authentication.swift
//  BookmarkMobile
//
//  Created by Umut on 13.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import ObjectMapper
import SwiftyJSON

class Authentication: Mappable {
    
    var userId: Int32?
    var name: String?
    var saleCnlId: Int32?
    var customerId: Int32?
    var preferredCollation: String?
    var id: Int32?
    
    init() {
        
    }
    
    init(userId: Int32, name: String, saleCnlId: Int32, customerId: Int32, preferredCollation: String?, id: Int32) {
        self.userId = userId
        self.name = name
        self.saleCnlId = saleCnlId
        self.customerId = customerId
        self.preferredCollation = preferredCollation
        self.id = id
    }
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        userId <- map["userId"]
        name <- map["name"]
        saleCnlId <- map["saleCnlId"]
        customerId <- map["customerId"]
        preferredCollation <- map["preferredCollation"]
        id <- map["id"]
    }

}

extension Authentication {
    
    // Get messages from service
    static func auth(params: [String: AnyObject], success:@escaping (Authentication) -> Void, failure:@escaping (BookmarkError) -> Void) {
        
        BookmarkSessionManager.sharedInstance.requestPOSTURL("auth", params: params, headers: nil, success: { (responseJSON) in
            
            // Convert to json
            let json = JSON(responseJSON)
            
            // Get json array  from data
            let object = json["data"].object
            
            // Map json array to Array<Message> object
            guard let result: Authentication = Mapper<Authentication>().map(JSONObject: object) else {
                let error = BookmarkSessionManager.sharedInstance.formatedErrorMessage(errorCode: "MAP_ERROR")
                failure(error)
                return
            }
            
            // Send to array to calling controllers
            success(result)
            
        }, failure: { (error) in
            failure(error)
        })
    }
    
    static func validateCredential(username: String, password: String) -> Bool {
        var result: Bool
        
        if username.trimmingCharacters(in: .whitespacesAndNewlines).count <= 1 {
            result = false
        }
        
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z]{8,}$")
        
        result = passwordTest.evaluate(with: password)
        
        return result
    }
    
}
