import XCTest
@testable import LanguageDetector

class LanguageDetectorTests: XCTestCase {
    func testEn() {
        XCTAssertEqual(LanguageDetector.detect(text: "The quick brown fox jumps over the lazy dog"), Optional("en"))
    }
    func testDe() {
        XCTAssertEqual(LanguageDetector.detect(text: "Zwölf Boxkämpfer jagen Eva quer über den großen Sylter Deich"), Optional("de"))
    }
    func testFr() {
        XCTAssertEqual(LanguageDetector.detect(text: "Buvez de ce whisky que le patron juge fameux"), Optional("fr"))
    }
    func testEs() {
        XCTAssertEqual(LanguageDetector.detect(text: "El zorro marrón rápido salta sobre el perro perezoso"), Optional("es"))
    }
    func testIt() {
        XCTAssertEqual(LanguageDetector.detect(text: "La volpe marrone veloce salta sul cane pigro"), Optional("it"))
    }
    func testZh() {
        XCTAssertEqual(LanguageDetector.detect(text: "千 字 文"), Optional("zh_cn"))
    }
    func testUnknown() {
        XCTAssertEqual(LanguageDetector.detect(text: "abc def"), nil)
    }
    func testEmpt() {
        XCTAssertEqual(LanguageDetector.detect(text: ""), nil)
    }
}


