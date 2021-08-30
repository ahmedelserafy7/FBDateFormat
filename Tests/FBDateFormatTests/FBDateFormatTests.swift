import XCTest
@testable import FBDateFormat

final class FBDateFormatTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(FBDateFormat().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
