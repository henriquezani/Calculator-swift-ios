//
//  CalcTests.swift
//  CalcTests
//
//  Created by zani on 14/06/22.
//

import XCTest
@testable import Calc

class MathEquationTests: XCTestCase {

    func testAddition() throws {
        var mathEquation = MathEquation(lhs: .zero)
        mathEquation.lhs = 4
        mathEquation.operation = .add
        mathEquation.rhs = 4
        mathEquation.execute()
        
        let expectedResult = Decimal(8)
        XCTAssertTrue(mathEquation.result?.isEqual(to: expectedResult) ?? false)
    }
    
    func testSubtraction() throws {
        var mathEquation = MathEquation(lhs: .zero)
        mathEquation.lhs = 4
        mathEquation.operation = .subtract
        mathEquation.rhs = 4
        mathEquation.execute()
        
        let expectedResult = Decimal(0)
        XCTAssertTrue(mathEquation.result?.isEqual(to: expectedResult) ?? false)
    }
    
    func testMultiplication() throws {
        var mathEquation = MathEquation(lhs: .zero)
        mathEquation.lhs = 4
        mathEquation.operation = .multiply
        mathEquation.rhs = 4
        mathEquation.execute()
        
        let expectedResult = Decimal(16)
        XCTAssertTrue(mathEquation.result?.isEqual(to: expectedResult) ?? false)
    }
    
    func testDivision() throws {
        var mathEquation = MathEquation(lhs: .zero)
        mathEquation.lhs = 4
        mathEquation.operation = .divide
        mathEquation.rhs = 4
        mathEquation.execute()
        
        let expectedResult = Decimal(1)
        XCTAssertTrue(mathEquation.result?.isEqual(to: expectedResult) ?? false)
    }


}
