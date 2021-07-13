//
//  CICDDemoUITests.swift
//  CICDDemoUITests
//
//  Created by Shivam Sevarik on 12/07/21.
//

import XCTest

class CICDDemoUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

}

//MARK: - Extension For the XCUIElement for Type in TextField/TextView
//MARK: -
extension XCUIElement {
    /**
     Removes any current text in the field before typing in the new value
     - Parameter text: the text to enter into the field
     */
    func clearAndEnterText(_ text: String) {
        guard let stringValue = self.value as? String else {
            XCTFail("Tried to clear and enter text into a non string value")
            return
        }
        self.tap()
        let deleteString = stringValue.map { _ in "\u{8}" }.joined(separator: "")
        self.typeText(deleteString)
        self.typeText(text)
    }
}
