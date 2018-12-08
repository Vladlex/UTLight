//
//  UTLTag.swift
//  Pods-UTLight_Tests
//
//  Created by Lex on 06/12/2018.
//

import Foundation

public struct UTLFileExtension: RawRepresentable {
    
    public typealias RawValue = String
    
    public let rawValue: String
    
    public init(rawValue: RawValue) {
        self.rawValue = rawValue
    }
    
    public init(_ cfString: CFString) {
        self.init(rawValue: cfString as String)
    }
    
    public var UTFileExtension: CFString {
        return self.rawValue as CFString
    }
}
