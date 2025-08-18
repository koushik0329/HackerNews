//
//  SampleTests.swift
//  SampleTests
//
//  Created by Koushik Reddy Kambham on 8/13/25.
//

import XCTest
@testable import Sample

final class SampleTests: XCTestCase {
    var objLoginViewController: LogInViewController?
    var objSignUpViewController: SignUpViewController?
    
    override func setUpWithError() throws{
        objLoginViewController = LogInViewController()
        objSignUpViewController = SignUpViewController()
    }
    
    override func tearDownWithError() throws{
        objLoginViewController = nil
        objSignUpViewController = nil
    }
    
    func testName() {
        let result = objSignUpViewController?.validateName(firstName: "koushik", lastName: "kambham")
        XCTAssertEqual(result, true)
    }
    
    func testValidateEmail() {
        let result = objLoginViewController?.validateLoginEmail(email: "koushik@gmail.com")
        XCTAssertEqual(result, true)
        
        let result1 = objLoginViewController?.validateLoginEmail(email: "koushik")
        XCTAssertEqual(result1, false)
        
        let result2 = objSignUpViewController?.validateSignUpEmail(email: "koushik@gmail.com")
        XCTAssertEqual(result2, true)
        
        let result3 = objSignUpViewController?.validateSignUpEmail(email: "koushik")
        XCTAssertEqual(result3, false)
    }
    
    func testValidatePassword() {
        let result = objLoginViewController?.validateLoginPassword(password: "koushik")
        XCTAssertEqual(result, true)
        
        let result1 = objLoginViewController?.validateLoginPassword(password: "kok")
        XCTAssertEqual(result1, false)
     
        let result2 = objSignUpViewController?.validateSignUpPassword(password: "koushik", verifyPassword: "koushik")
        XCTAssertEqual(result2, true)
        
        let result3 = objSignUpViewController?.validateSignUpPassword(password: "koushdsik", verifyPassword: "koushik")
        XCTAssertEqual(result3, false)
    }
}
