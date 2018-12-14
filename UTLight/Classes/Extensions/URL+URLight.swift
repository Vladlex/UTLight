//
//  Converting.swift
//  UTLight
//
//  Created by Lex on 08/12/2018.
//

import Foundation
import MobileCoreServices

public extension URL {
    
    public var utlight_UTLIdentifier: UTLIdentifier? {
        return UTLIdentifier(fileExtension: self.pathExtension)
    }
    
    public var utlight_MIMEType: UTLMIMEType? {
        return self.utlight_UTLIdentifier?.preferredMimeType
    }
    
}
