//
//  UTLTag.swift
//  Pods-UTLight_Tests
//
//  Created by Lex on 06/12/2018.
//

import Foundation
import MobileCoreServices

public struct UTLTag: RawRepresentable {
    
    public typealias RawValue = String
    
    public let rawValue: String
    
    public init(rawValue: RawValue) {
        self.rawValue = rawValue
    }
    
    public var UTTagClass: CFString {
        return self.rawValue as CFString
    }
    
    public init(_ cfString: CFString) {
        self.init(rawValue: cfString as String)
    }
}

public extension UTLTag {
    
    public static let filenameExtension = UTLTag(kUTTagClassFilenameExtension)
    
    public static let MIMEType = UTLTag(kUTTagClassMIMEType)
}


public protocol UTLTagRepresentable {
    
    static var tag: UTLTag { get }
    
}
