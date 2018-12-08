//
//  UTLIdentifier+iOSVersion.swift
//  Pods-UTLight_Tests
//
//  Created by Lex on 07/12/2018.
//

import Foundation
import MobileCoreServices

public extension UTLIdentifier {
    
    /// UTTypes that was introduced in iOS version newer then 9.0
    public enum Newest {
        
        case kUTTypeLivePhoto
        
        internal var utType: CFString {
            switch self {
            case .kUTTypeLivePhoto:
                if #available(iOS 9.1, *) {
                    return MobileCoreServices.kUTTypeLivePhoto
                }
                return "com.apple.live-photo" as CFString
            }
        }
        
    }
    
    public init(newest: Newest) {
        self.init(newest.utType)
    }
    
}
