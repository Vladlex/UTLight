//
//  UTLMIMEType.swift
//  UTLight
//
//  Created by Lex on 08/12/2018.
//

import Foundation

public extension UTLMIMEType {
    
    public var identifiers: [UTLIdentifier] {
        return self.identifiers(conformsTo: nil)
    }
    
    public var preferredIdentifier: UTLIdentifier? {
        return self.preferredIdentifier(conforminingTo: nil)
    }
    
    public func identifiers(conformsTo id: UTLIdentifier?) -> [UTLIdentifier] {
        return UTLIdentifier.identifiers(for: self.rawValue, tag: .MIMEType, conformingTo: id) ?? []
    }
    
    public func preferredIdentifier(conforminingTo id: UTLIdentifier?) -> UTLIdentifier? {
        return UTLIdentifier.init(mimeType: self, conformingTo: id)
    }
}
