//
//  CICDDemoTests.swift
//  CICDDemoTests
//
//  Created by Shivam Sevarik on 12/07/21.
//

import XCTest
@testable import CICDDemo

class CICDDemoTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAditionOperation() {
        let x = 20
        let y = 30
        let total = x + y
        XCTAssertEqual(total, 50, "Equal")
    }
}
