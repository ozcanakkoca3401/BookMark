//
//  OperationResult.swift
//  BookmarkMobile
//
//  Created by Umut on 13.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import ObjectMapper
import SwiftyJSON

class OperationResult: Mappable {
    
    var resultCode: String?
    var operationResultCode: String?
    
    init() {
        
    }
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        resultCode <- map["resultCode"]
        operationResultCode <- map["operationResultCode"]
    }
    
}
