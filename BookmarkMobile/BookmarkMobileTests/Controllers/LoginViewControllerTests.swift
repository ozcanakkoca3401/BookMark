//
//  LoginViewController.swift
//  BookmarkMobileTests
//
//  Created by Umut on 13.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import XCTest
@testable import BookmarkMobile

class LoginViewControllerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_LoginViewController_didLoad() {
        
        let login = LoginViewController()
        login.viewDidLoad()
    }
    
}
