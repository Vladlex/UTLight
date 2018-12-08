import XCTest
import UTLight
import MobileCoreServices

class Tests: XCTestCase {
    
    func testAppleIDsAreDeclared() {
        XCTAssertTrue(UTLIdentifier.appleICNS.isDeclared)
        XCTAssertTrue(UTLIdentifier.appleScript.isDeclared)
        XCTAssertTrue(UTLIdentifier.JPEG.isDeclared)
    }
    
    func testFictionalIDsAreNotDeclared() {
        XCTAssertFalse(UTLIdentifier("my.own.type").isDeclared)
        XCTAssertFalse(UTLIdentifier("\(UTLIdentifier.appleICNS.rawValue).my").isDeclared)
    }
    
    func testIdsConforming() {
        XCTAssertTrue(UTLIdentifier.appleICNS.conforms(to: .image))
        XCTAssertTrue(UTLIdentifier.GIF.conforms(to: .image))
        XCTAssertTrue(UTLIdentifier.AVIMovie.conforms(to: .movie))
        XCTAssertTrue(UTLIdentifier.AVIMovie.conforms(to: .audiovisualContent))
        XCTAssertTrue(UTLIdentifier.MPEG.conforms(to: .audiovisualContent))
    }
    
    func testIdsNotConforming() {
        XCTAssertFalse(UTLIdentifier.video.conforms(to: .audio))
        XCTAssertFalse(UTLIdentifier.image.conforms(to: .JPEG))
    }
    
    func testIDsMimeTypes() {
        XCTAssertNotNil(UTLIdentifier.GIF.preferredMimeType)
        XCTAssertEqual(UTLIdentifier.GIF.preferredMimeType!.rawValue, "image/gif")
        XCTAssertEqual(UTLIdentifier.JPEG.preferredMimeType!.rawValue, "image/jpeg")
    }
    
    func testBundle() {
        let bundleUrl = UTLIdentifier.appleICNS.declaringBundleURL
        XCTAssertNotNil(bundleUrl)
        
        let bundle = Bundle(url: bundleUrl!)
        XCTAssertNotNil(bundle)
        
        let plist = bundle!.infoDictionary
        XCTAssertNotNil(plist)
    }
    
    
}
