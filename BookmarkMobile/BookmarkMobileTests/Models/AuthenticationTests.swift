//
//  Authentication.swift
//  BookmarkMobileTests
//
//  Created by Umut on 13.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import XCTest
@testable import BookmarkMobile

class AuthenticationTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_Authentication() {
       
        // given
        
        let authenticationExpectation = expectation(description: "Authentication")
        var authentication = Authentication()
        let params: [String: AnyObject] = [
            "userName": "semih@abc.com" as AnyObject,
            "password": "Abc12345" as AnyObject ]
        
        // when
        
        Authentication.auth(params: params, success: { (result) in
            authentication = result
            authenticationExpectation.fulfill()
        }, failure: { (error) in
            print(error)
        })

        // expection
        
        waitForExpectations(timeout: 2) { _ in
            XCTAssertNotNil(authentication)
            XCTAssertEqual(authentication.name, "Ceren Bal")
        }
        
    }
    
    func test_validateCredential() {
    
        let result: Bool = Authentication.validateCredential(username: "semih@abc.com", password: "Abc12345")
        XCTAssertTrue(result)
    }
        
}
