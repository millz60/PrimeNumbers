//
//  PrimeNumbersTests.swift
//  PrimeNumbersTests
//
//  Created by Matt Milner on 8/1/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

import XCTest
@testable import PrimeNumbers

class PrimeNumbersTests: XCTestCase {
    
    private var storyboard: UIStoryboard!
    private var controller: PrimeNumbersViewController!
    
    override func setUp() {
        super.setUp()

        storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        controller = storyboard.instantiateViewControllerWithIdentifier("PrimeNumbersViewController") as! PrimeNumbersViewController
        
        let _ = controller.view
        
    
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDoesNotAllowNonNumbers() {
        
        controller.inputTextField.text = "5!2410?"
        
        controller.computeButtonPressed()
        
        let result = controller.displayLabel.text!
        
        XCTAssertTrue(result == "Invalid Input")
        
        controller.inputTextField.text = "35,12,41"
        
        controller.computeButtonPressed()
        
        let result2 = controller.displayLabel.text!
        
        XCTAssertTrue(result2 == "Invalid Input")

    }

    
    func testDoesNotAllowDecimalNumbers() {
        
        controller.inputTextField.text = "3.1"
        
        controller.computeButtonPressed()
        
        let result = controller.displayLabel.text!
        
        XCTAssertTrue(result == "Invalid Input")
        
        controller.inputTextField.text = "33.7"
        
        controller.computeButtonPressed()
        
        let result2 = controller.displayLabel.text!
        
        XCTAssertTrue(result2 == "Invalid Input")
        
    }
    
    func testDoesNotAllowEmptyInput() {
        
        controller.inputTextField.text = ""
        
        controller.computeButtonPressed()
        
        let result = controller.displayLabel.text!
        
        XCTAssertTrue(result == "Invalid Input")
        
    }
    
    func testDoesNotAllowLettersOrSpecialCharacters() {
        
        controller.inputTextField.text = "abc12&^*1#"
        
        controller.computeButtonPressed()
        
        let result = controller.displayLabel.text!
        
        XCTAssertTrue(result == "Invalid Input")
        
    }
    
    func testOnlyAcceptsNumbersFromZeroToOneHundred() {
        
        controller.inputTextField.text = "101"
        
        controller.computeButtonPressed()
        
        let result = controller.displayLabel.text!
        
        XCTAssertTrue(result == "Invalid Input")
        
        controller.inputTextField.text = "-5"
        
        controller.computeButtonPressed()
        
        let result2 = controller.displayLabel.text!
        
        XCTAssertTrue(result2 == "Invalid Input")
        
    }
    
    
    
    
    
    
}
