//
//  UTLIdentifier.swift
//  Pods-UTLight_Tests
//
//  Created by Lex on 06/12/2018.
//

import Foundation

/// A shortcut for a plist represented as a dictionary
public typealias UTLIdentifierDeclarationDictionary = [String : AnyObject]

/// A small struct keeping original declaration and a set of methods for easy access.
/// Use subscript (`declaration[.key]`) for
public struct UTLIdentifierDeclaration {
   
    public let dictionary: UTLIdentifierDeclarationDictionary
    
    init?(dictionary: CFDictionary) {
        if let bridgedDictionary = dictionary as? UTLIdentifierDeclarationDictionary {
            self.dictionary = bridgedDictionary
        }
        return nil
    }
    
}
