//: Playground - noun: a place where people can play

import UIKit


func random(min: Int, max: Int) -> Int{
    let rand = Double(arc4random_uniform(100))/100
    let double_min = Double(min)
    let double_incr = Double(max-min)
    let double_rounded = round(double_min + rand*double_incr)
    return Int(round(double_rounded))
}

func randomize<T>(_ input: Array<T>) -> Array<T>{
    var array = input
    for i in 0..<array.count-1{
        let j = random(min: i, max: array.count-1)
        let temp = array[i]
        array[i] = array[j]
        array[j] = temp
    }
    return array
}

let array = ["Alex","John", "Michael","Johan", "Peter", "Kirill", "George"]
print(array)

let array2 = randomize(array)
print(array2)