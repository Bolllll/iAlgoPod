//
//  Strings.swift
//  iAlgoPod
//
//  Created by Bell Dien on 2023/3/29.
//

import Foundation
import UIKit

// can't visit from Objective-C
func reverse(_ s: inout [Character]) {
    
    for i in 0..<s.count/2 {
        // s.swapAt(i, s.count-1-i)
        (s[i], s[s.count-1-i]) = (s[s.count-1-i], s[i])
    }
}

@objcMembers
public class BXString: NSObject {
    public static let myConst = "aConst"
    
    public func reverse(s: inout[Character]) {
        return reverse(s: &s)
    }
}

let ParseApplicationId = "Family"
let ParseClientKey = "ck-1234"
let AppGreenColor = UIColor(red: 0.2, green: 0.7, blue: 0.3, alpha: 1.0)

@objc
public class Constant: NSObject {
    private override init() { super.init() }

    class public func parseApplicationId() -> String { return ParseApplicationId }
    class public func parseClientKey() -> String { return ParseClientKey }
    class public func appGreenColor() -> UIColor { return AppGreenColor }
}
