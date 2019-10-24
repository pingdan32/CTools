import XCTest
@testable import CTools

final class CToolsTests: XCTestCase {
    func testHost16ToLEExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(CTools.Host16ToLE(0x1234), [UInt8]([0x34, 0x12]))
    }
    
    func testHost32ToLEExample() {
        XCTAssertEqual(CTools.Host32ToLE(0x12345678), [UInt8]([0x78, 0x56, 0x34, 0x12]))
    }

    static var allTests = [
        ("testHost16ToLEExample", testHost16ToLEExample),
        ("testHost32ToLEExample", testHost32ToLEExample),
    ]
}
