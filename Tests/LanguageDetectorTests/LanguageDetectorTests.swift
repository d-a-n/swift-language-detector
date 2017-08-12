import XCTest
@testable import LanguageDetector

class LanguageDetectorTests: XCTestCase {
    func testEn() {
        XCTAssertEqual(LanguageDetector.detect(text: "The quick brown fox jumps over the lazy dog"), Optional("en"))
    }
    func testDe() {
        XCTAssertEqual(LanguageDetector.detect(text: "Der schnelle braune Fuchs springt über den faulen Hund"), Optional("de"))
    }
    func testFr() {
        XCTAssertEqual(LanguageDetector.detect(text: "Le renard brun rapide saute sur le chien paresseux"), Optional("fr"))
    }
    func testEs() {
        XCTAssertEqual(LanguageDetector.detect(text: "El zorro marrón rápido salta sobre el perro perezoso"), Optional("es"))
    }
    func testIt() {
        XCTAssertEqual(LanguageDetector.detect(text: "La volpe marrone veloce salta sul cane pigro"), Optional("it"))
    }
    func testUnknown() {
        XCTAssertEqual(LanguageDetector.detect(text: "abc def"), nil)
    }
    func testEmpt() {
        XCTAssertEqual(LanguageDetector.detect(text: ""), nil)
    }
}


