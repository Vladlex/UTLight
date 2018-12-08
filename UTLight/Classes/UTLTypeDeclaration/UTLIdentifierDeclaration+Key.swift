//
//  UTLIdentifierDeclaration+Key.swift
//  Pods-UTLight_Tests
//
//  Created by Lex on 08/12/2018.
//

import Foundation
import MobileCoreServices

public extension UTLIdentifierDeclaration {
    
    public struct Key: RawRepresentable {
        
        public typealias RawValue = String
        
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
        
    }

}

/// A key to fetch informatoin from UTLIdentifierDeclaration

public extension UTLIdentifierDeclaration.Key {
    
    /// An array of exported UTI declarations.
    public static let exportedType = UTLIdentifierDeclaration.Key(kUTExportedTypeDeclarationsKey)
    
    /// An array of imported UTI declarations.
    public static let importedType = UTLIdentifierDeclaration.Key(kUTImportedTypeDeclarationsKey)
    
    /// The uniform type identifier for the declared type. This key is required.
    public static let identifier = UTLIdentifierDeclaration.Key(kUTTypeIdentifierKey)
    
    /// A dictionary containing conversions of the uniform type identifier
    /// to equivalent tags in other classification schemes.
    /// See Type Tag Classes for examples.
    public static let tagSpecification = UTLIdentifierDeclaration.Key(kUTTypeTagSpecificationKey)
    
    /// The UTIs to which this identifier conforms.
    public static let conformsTo = UTLIdentifierDeclaration.Key(kUTTypeConformsToKey)
    
    /// A user-visible description of this type (may be localized).
    public static let description = UTLIdentifierDeclaration.Key(kUTTypeDescriptionKey)
    
    /// The name of the bundle icon resource to associate with this UTI.
    public static let iconFile = UTLIdentifierDeclaration.Key(kUTTypeIconFileKey)
    
    /// The URL of a reference document describing this type.
    public static let referenceURL = UTLIdentifierDeclaration.Key(kUTTypeReferenceURLKey)
    
    /// A version string.
    public static let version = UTLIdentifierDeclaration.Key(kUTTypeVersionKey)
}
