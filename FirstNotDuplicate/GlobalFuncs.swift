//
//  GlobalFuncs.swift
//  FirstNotDuplicate
//
//  Created by Tagliabue, L. on 20/03/2019.
//  Copyright © 2019 Tagliabue, Luca. All rights reserved.
//

func first_non_duplicate(_ input: String) -> Character? {
    
    guard input.isValidInput else {
        return nil
    }
    
    let charaterCountDict = generateCharacterCountDict(input)
    
    for char in input {
        
        if let count = charaterCountDict[char] {
            
            if count == 1 {
                return char
            }
        }
    }
    
    return "0"
}

private func generateCharacterCountDict(_ input: String) -> [Character: Int] {
    
    var dict = [Character: Int]()
    
    input.forEach { (char) in
        
        if let count = dict[char] {
            dict[char] = count + 1
        } else {
            dict[char] = 1
        }
    }
    
    return dict
}
