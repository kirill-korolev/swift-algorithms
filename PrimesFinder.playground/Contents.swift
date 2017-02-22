//: Playground - noun: a place where people can play

import UIKit

func findPrimes(maxNumber: Int) -> [Int]{
    
    var composite: [Bool] = Array(repeating: false, count: maxNumber+1)
    
    for i in 4...maxNumber where i % 2 == 0{
        composite[i] = true
    }
    
    var nextPrime = 3
    let stopValue = sqrt(Double(maxNumber))
    
    while Double(nextPrime) <= stopValue{
        
        for i in 2*nextPrime...maxNumber where i % nextPrime == 0{
            composite[i] = true
        }
        
        nextPrime += 2
        
        while nextPrime <= maxNumber && composite[nextPrime] {
            nextPrime += 2
        }
        
    }
    
    var primes = [Int]()
    
    for i in 2...maxNumber{
        if !composite[i]{
            primes.append(i)
        }
    }
    
    return primes
}

print(findPrimes(maxNumber: 20))
