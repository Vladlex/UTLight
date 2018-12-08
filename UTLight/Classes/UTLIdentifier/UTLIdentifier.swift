//
//  UTLIdentifier.swift
//  Pods-UTLight_Tests
//
//  Created by Lex on 06/12/2018.
//

import Foundation

/**
 Uniform Type Identifiers (or UTIs) are strings which uniquely identify
 abstract types. They can be used to describe a file format, an
 in-memory data type, but can also be used to describe the type of
 other sorts of entities, such as directories, volumes, or packages.
 
 The syntax of a UTI has the form of a reversed DNS name.
 Some special top-level UTI domains are reserved by Apple and are outside the current IANA
 top-level Internet domain name space.
 
 Examples:
 
 ```
 public.jpeg
 public.utf16-plain-text
 com.apple.xml-property-list
 ```
 
 Types which are standard or not controlled by any one organization
 are declared in the "public" domain. Currently, public types may
 be declared only by Apple.
 
 - warning:
 UTL type equality is a special method which doest not equalts UTI strings representations.
 It's more complex and UTI with difference DNS strings still can be equal in cases of dynamic UTIs.
 If you want to equal UTIs by a DNS string – check it by yourself using UTLIdentifier `rawValue`
 */
public struct UTLIdentifier: RawRepresentable {
    
    public typealias RawValue = String
    
    // An original UT DNS string.
    public let rawValue: String
    
    public init(rawValue: String) {
        self.rawValue = rawValue
    }
    
    public init(_ rawValue: String) {
        self.init(rawValue: rawValue)
    }
    
    public init(_ string: CFString) {
        self.init(string as String)
    }
    
    public var UTType: CFString {
        return self.rawValue as CFString
    }
    
}
