//
//  UTLTag.swift
//  Pods-UTLight_Tests
//
//  Created by Lex on 06/12/2018.
//

import Foundation

/**
 A media type (formerly known as MIME type) is a two-part identifier for file formats and format contents transmitted on the Internet.
 The currently registered types are: application, audio, example, font, image, message, model, multipart, text and videom but you can use your very own type using
 */
public struct UTLMIMEType: RawRepresentable {
    
    public typealias RawValue = String
    
    public let rawValue: String
    
    public init(rawValue: RawValue) {
        self.rawValue = rawValue
    }
    
    public init(custom: String) {
        self.init(rawValue: custom)
    }
    
    public init(_ cfString: CFString) {
        self.init(rawValue: cfString as String)
    }
    
    public var UTMIMEType: CFString {
        return self.rawValue as CFString
    }
}
