//
//  Converting.swift
//  UTLight
//
//  Created by Lex on 08/12/2018.
//

import Foundation
import MobileCoreServices

public extension UTLIdentifier {
    
    // MARK: - Static
    
    public static func identifiers(for string: String,
                                   tag: UTLTag,
                                   conformingTo id: UTLIdentifier? = nil) -> [UTLIdentifier]? {
        let array = UTTypeCreateAllIdentifiersForTag(tag.UTTagClass, string as CFString, id?.UTType)
            .map({ $0.takeRetainedValue() }) as? [String]
        if let array = array {
            return array.map({ UTLIdentifier($0) })
        }
        return nil
    }
    
    public static func preferredIdentifier(for string: String,
                                           tag: UTLTag,
                                           conformingTo id: UTLIdentifier? = nil) -> UTLIdentifier? {
        return UTTypeCreatePreferredIdentifierForTag(tag.UTTagClass, string as CFString, id?.UTType)
            .map({  $0.takeRetainedValue() })
            .map({  UTLIdentifier($0) })
    }
    
    // MARK: - All
    
    public var mimeTypes: [UTLMIMEType] {
        return self.all(tag: .MIMEType)?.map({ UTLMIMEType(rawValue: $0)} ) ?? []
    }
    
    public var fileExtensions: [String] {
        return self.all(tag: .filenameExtension) ?? []
    }
    
    public func all(tag: UTLTag) -> [String]? {
        let array = UTTypeCopyAllTagsWithClass(self.UTType, tag.UTTagClass)
            .map({ $0.takeRetainedValue() })
        if let array = array {
            return array as? [String]
        }
        return nil
    }
    
    // MARK: - Preferred
    
    public var preferredMimeType: UTLMIMEType? {
        return preferred(tag: .MIMEType).map({ UTLMIMEType(rawValue: $0) })
    }
    
    public var preferredFileExtension: String? {
        return preferred(tag: .filenameExtension)
    }
    
    public func preferred(tag: UTLTag) -> String? {
        return UTTypeCopyPreferredTagWithClass(self.UTType, tag.UTTagClass)
            .map( {$0.takeRetainedValue() as String} )
    }
    
    public init?(fileExtension: String, conformingTo id: UTLIdentifier? = nil) {
        if let id = UTLIdentifier.preferredIdentifier(for: fileExtension,
                                                      tag: .filenameExtension,
                                                      conformingTo: id) {
            self = id
        } else {
            return nil
        }
    }
    
    public init?(mimeType: UTLMIMEType, conformingTo id: UTLIdentifier? = nil) {
        if let id = UTLIdentifier.preferredIdentifier(for: mimeType.rawValue,
                                                      tag: .MIMEType,
                                                      conformingTo: id) {
            self = id
        } else {
            return nil
        }
    }
    
}


