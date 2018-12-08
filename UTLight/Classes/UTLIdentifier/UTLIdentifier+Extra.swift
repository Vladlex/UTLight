//
//  UTLIdentifier+Extra.swift
//  Pods-UTLight_Tests
//
//  Created by Lex on 07/12/2018.
//

import Foundation
import MobileCoreServices

extension UTLIdentifier: Equatable {
    
    public static func == (lhs: UTLIdentifier, rhs: UTLIdentifier) -> Bool {
        return UTTypeEqual(lhs.UTType, rhs.UTType)
    }
    
}

public extension UTLIdentifier {
    
    // MARK: - Vars
    
    /**
     Returns whether or not the specified UTI is a dynamic UTI.
     */
    public var isDynamic: Bool {
        return UTTypeIsDynamic(self.UTType)
    }
    
    /**
     Returns whether or not the specified UTI has a declaration registered on the current system.
     Dynamic UTIs are never registered.
     */
    public var isDeclared: Bool {
        return UTTypeIsDeclared(self.UTType)
    }
    
    /// Types specific to Mac OS are declared with identifiers in the `com.apple.macos domain`.
    public var isMacOSSpecific: Bool {
        return self.rawValue.hasPrefix("com.apple.macos")
    }
    
    /**
     Returns the identified type's declaration dictionary, as it appears in the declaring bundle's info property list.
     
     This the access path to other type properties for which direct access is rarely needed.
     */
    public var UTDescription: String? {
        return UTTypeCopyDescription(self.UTType).map({$0.takeRetainedValue()}) as String?
    }
    
    public var declaration: [AnyHashable : Any]? {
        if let declaration =  UTTypeCopyDeclaration(self.UTType).map({$0.takeRetainedValue()}) {
            return declaration as? [AnyHashable : Any]
        }
        return nil
    }
    
    public var declaringBundleURL: URL? {
        return UTTypeCopyDeclaringBundleURL(self.UTType).map({$0.takeRetainedValue()}) as URL?
    }
    
    
    // MARK: - Funcs
    
    /**
     Tests for a conformance relationship between the two identified types.
     
     - returns: true if the type conforms, directly or indirectly, to the passed type.
     
     - note: A type may "conform" to one or more other types. For example, the
     type com.apple.xml-property-list conforms to both the
     com.apple.property-list and public.xml types. The public.xml
     type in turn conforms to type public.text. Finally, type public.text
     conforms to public.data, which is the base type for all types
     describing bytes stream formats. Conformance relationships between
     types are established in type declarations.
     
     Conformance relationships establish a multiple inheritanace hierarchy
     between types. Type property values may be inherited at runtime
     according to the conformance relationships for each type. When a type's
     declaration does not include a value for particular type property,
     then the type's supertypes are searched for a value. Supertypes are
     searched depth-first, in the order given in the type declaration.
     This is the only way in which the declared order of the conforms-to
     supertypes is significant.
     */
    public func conforms(to anotherType: UTLIdentifier) -> Bool {
        return UTTypeConformsTo(self.UTType, anotherType.UTType)
    }
    
}
