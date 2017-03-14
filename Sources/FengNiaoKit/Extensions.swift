//
//  Extensions.swift
//  fengniao
//
//  Created by lieon on 2017/3/14.
//
//

import Foundation
import PathKit

extension String {
   public var fullRange: NSRange {
        return NSMakeRange(0, utf16.count)
    }
    
   public var plainName: String {
        let p = Path(self)
        var result = p.lastComponentWithoutExtension
        if result.hasSuffix("@2x") || result.hasSuffix("@3x") {
            result = String(describing: result.utf16.dropLast(3))
        }
        
        return result
    }
}
