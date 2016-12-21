//
//  StructureKupap.swift
//  NewPolice
//
//  Created by Mor Di on 01.07.16.
//  Copyright © 2016 Mor Di. All rights reserved.
//

import Foundation

class StructureKupap {
    
    var name: String
    var subName: String
    var st: [String]
    var stName: [String]
    
    
    init(name: String, subName: String, st: [String], stName: [String]) {
        
        self.name = name
        self.subName = subName
        self.st = st
        self.stName = stName
        
    }
}