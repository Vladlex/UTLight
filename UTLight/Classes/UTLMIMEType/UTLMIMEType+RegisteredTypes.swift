//
//  UTLTag.swift
//  Pods-UTLight_Tests
//
//  Created by Lex on 06/12/2018.
//

import Foundation

/**
 A media type (formerly known as MIME type) is a two-part identifier for file formats and format contents transmitted on the Internet.
 
 
 */
public extension UTLMIMEType {
    
    public enum RegisteredType: String, CaseIterable {
        case application
        case audio
        case example
        case font
        case image
        case message
        case model
        case multipart
        case text
        case video
    }
    
    public var registeredType: RegisteredType? {
        return RegisteredType.allCases.first(where: {self.rawValue.hasPrefix($0.rawValue)})
    }
    
}
