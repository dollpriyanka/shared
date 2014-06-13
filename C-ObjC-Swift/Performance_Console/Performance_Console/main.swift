//
//  main.swift
//  Performance_Console
//
//  Created by Gian Luigi Romita on 11/06/14.
//  Copyright (c) 2014 Gian Luigi Romita. All rights reserved.
//

import Foundation

let num_elements  : NSInteger = 1000000

Performance_ObjCtoCPlusPlus.sortArrayCPlusPlus(num_elements)

Performance_ObjectiveC.sortArrayObjC(num_elements)

//println("Hello, World!")


let x = Int[](count: num_elements, repeatedValue: 0)
for i in 0..num_elements {
    x[i] = random()
}

    // Put the code you want to measure the time of here.
let start : NSDate = NSDate()

let y = sort(x)

let end : NSDate = NSDate()

let executionTime : NSTimeInterval = end.timeIntervalSinceDate(start)

println("swift executionTime: \(executionTime) seconds for \(num_elements) elements. \n");
