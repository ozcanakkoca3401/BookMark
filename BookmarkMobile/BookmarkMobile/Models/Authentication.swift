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
        userId <- map["message"]
        name <- map["timestamp"]
        saleCnlId <- map["nickname"]
        customerId <- map["avatarUrl"]
        preferredCollation <- map["preferredCollation"]
        id <- map["id"]
    }
    
}
