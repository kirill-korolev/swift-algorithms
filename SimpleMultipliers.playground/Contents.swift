//: Playground - noun: a place where people can play

import UIKit

func findMultipliers(of a: Int) -> [Int]{
    var array = [Int]()
    var a = a
    var i = 3
    
    while a % 2 == 0{
        array.append(2)
        a /= 2
    }
    
    var maxFactor = sqrt(Double(a))
    
    while Double(i) <= maxFactor{
        
        while a % i == 0{
            array.append(i)
            a /= i
            maxFactor = sqrt(Double(a))
        }
        
        i += 2
    }
    
    if a > 1{
        array.append(a)
    }
    
    return array
}


let a = 120
let result = findMultipliers(of: a)
print(result)