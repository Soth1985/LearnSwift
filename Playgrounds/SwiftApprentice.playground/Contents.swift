//: Playground - noun: a place where people can play

import UIKit

// MARK: <Chapter3>
class Chapter3
{
    func exercise1()
    {
        let firstName = "Victor"
        let secondName = "Rykov"
        let fullName = "\(firstName) \(secondName)"
        print(fullName)
    }
    
    func exercise2()
    {
        let tuple1 : (Int, Int, Int, Double) = (year: 2018, month: 4, day: 4, temperature: 32.0)
        print(tuple1)
        let (_, _, day, temperature) = tuple1
        print("Day: \(day) Tempetarure: \(temperature)")
        var tuple2 : (year: Int, month: Int, day: Int, temperature: Double) = tuple1
        tuple2.temperature = 28
        tuple2.year = 2017
        print(tuple2);
    }
    
    func quadratic(a: Float, b: Float, c: Float) -> (solutions: Int, sol1: Float, sol2: Float)
    {
        let d : Float = b * b - 4.0 * a * c
        
        if d < 0.0
        {
            return (0, 0.0, 0.0);
        }
        else if d == 0.0
        {
            let sol1 : Float = -b / (2.0 * a)
            return (1, sol1, 0.0)
        }
        else
        {
            let sqrtD : Float = sqrt(d)
            let sol1 : Float = (-b + sqrtD) / (2.0 * a)
            let sol2 : Float = (-b - sqrtD) / (2.0 * a)
            return (2, sol1, sol2)
        }
    }
    
    func isPow2(num: Float) -> Bool
    {
        var local : Float = 2.0
        
        if num == 0.0
        {
            return true
        }
        else if num < 0.0
        {
            local = -local
        }
        
        while abs(local) <= abs(num)
        {
            if num == local
            {
                return true
            }
            
            local *= 2.0;
        }
        
        return false
    }
    
    func fibonacci(n: Int) -> Float
    {
        var num1 : Float = 1.0
        var num2 : Float = 1.0
        
        if n <= 1
        {
            return 1.0
        }
        
        for _ in 2...n
        {
            let temp : Float = num1
            num1 = num2
            num2 = temp + num2
        }
        
        return num2
    }
    
    func factorial (n: Int) -> Int
    {
        if n <= 1
        {
            return 1
        }
        
        var result : Int = 1
        
        for i in 1...n
        {
            result *= i
        }
        
        return result
    }
}

// MARK: <Chapter4>

let chapter3 = Chapter3()
chapter3.exercise1()
chapter3.exercise2()

let eq1 = chapter3.quadratic(a: 5, b: 6, c: 1)
print(eq1)

let pw1 = chapter3.isPow2(num: 2.0)
assert(pw1 == true)
let pw2 = chapter3.isPow2(num: 3.0)
assert(pw2 == false)
let pw3 = chapter3.isPow2(num: 512)
assert(pw3 == true)
let pw4 = chapter3.isPow2(num: -128)
assert(pw4 == true)
let pw5 = chapter3.isPow2(num: -33)
assert(pw5 == false)

// 1,1,2,3,5,8,13,21
let fib1 = chapter3.fibonacci(n: 7)

//
let fct1 = chapter3.factorial(n: 1)
let fct2 = chapter3.factorial(n: 5)
