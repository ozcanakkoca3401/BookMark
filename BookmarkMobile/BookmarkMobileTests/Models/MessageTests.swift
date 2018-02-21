//
//  MessageTests.swift
//  BookmarkMobileTests
//
//  Created by Alaattin Bedir on 21.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import XCTest
@testable import BookmarkMobile

class MessageTests: XCTestCase {
    var message: Message!
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_GetMessages() {
        
        let messageExpectation = expectation(description: "MessageList")
        var messagesList = [message]
        
        Message.getMessages(success: { (messages) in
            messagesList = messages
            messageExpectation.fulfill()
        }) { (error) in
            
        }
        
        waitForExpectations(timeout: 2) { _ in
            XCTAssertNotNil(messagesList)
            XCTAssertEqual(messagesList.count, 3)
        }
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
