//: Playground - noun: a place where people can play

import UIKit

func nod(_ a: Int, _ b: Int) -> Int{
    var a = a
    var b = b
    
    while b > 0{
        let temp = a % b
        a = b
        b = temp
    }
    
    return a
}

let result = nod(100, 12)
print(result)

