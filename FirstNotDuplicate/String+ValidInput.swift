//
//  String+ValidInput.swift
//  FirstNotDuplicate
//
//  Created by Tagliabue, L. on 20/03/2019.
//  Copyright © 2019 Tagliabue, Luca. All rights reserved.
//

import Foundation

private let regex = try! NSRegularExpression(pattern: "^[a-z]*$")

extension String {
    
    var isValidInput: Bool {
        get {
            let range = NSRange(location: 0, length: self.count)
            return regex.firstMatch(in: self, options: [], range: range) != nil
        }
    }
}
