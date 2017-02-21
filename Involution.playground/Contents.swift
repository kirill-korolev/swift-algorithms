//: Playground - noun: a place where people can play

import UIKit

func involute(_ a: Int, in power: Int){
    
    var a0 = a
    
    for i in 1..<power where i % 2 == 0{
        a0 *= a0
        
    }
}

let a = 7
involute(a, in: 6)

