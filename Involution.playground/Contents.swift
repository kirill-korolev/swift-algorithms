//: Playground - noun: a place where people can play

import UIKit

func involute(_ a: Int, in power: Int) -> Int{
    
    var a0 = a
    var powers = [[Int]]()
    
    powers.append([1, a0])
    
    for i in 1..<power where i % 2 == 0{
        a0 *= a0
        powers.append([i, a0])
    }
    
    let maxPower = powers[powers.count-1][0]
    let modPower = power - maxPower
    
    if modPower != 0{
        return powers[powers.count-1][1]*powers[1][1]
    }
    
    return powers[powers.count-1][1]
}

let a = 7
print(involute(a, in: 6))

