//: Playground - noun: a place where people can play

import UIKit

func involute(_ a: Int, in power: Int) -> Int{
    
    var a0 = a
    var powers = [[Int]]()
    
    powers.append([0, a])
    
    for i in 1..<power where log2(Double(i)) == floor(log2(Double(i))){
        powers.append([i, a0])
        a0 *= a0
    }
    
    let maxPower = powers[powers.count-1][0]
    var modPower = power - maxPower

    if modPower != 0{
        
        var multiplication = 1
        
        while modPower > 0{
            let temp = modPower/2
            let difference = modPower - temp
            multiplication *= powers[difference][1]
            modPower /= 2
        }
        
        return powers[powers.count-1][1]*multiplication
    }
    
    return powers[powers.count-1][1]
}

let a = 6
print(involute(a, in: 5))

