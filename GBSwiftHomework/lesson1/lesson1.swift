//
//  lesson1.swift
//  GBSwiftHomework
//
//  Created by Igor on 19.04.2022.
//

import Foundation

class Lesson1 {
    
    init() {
        solveQuadraticEquation()
    }
    
    private func solveQuadraticEquation() {
     // Решить квадратное уравнение ax^2-bx+c=0
    let a  = 1.0
    let b  = 10.0
    let c  = -39.0


    let d = (b * b) - (4 * a * c)

    if d > 0 {
        let x1 = (-b + sqrt(d)) / (2 * a)
        let x2 = (-b - sqrt(d)) / (2 * a)
        print(x1, x2)
    } else if d == 0 {
        let x = -b / (2 * a)
        print(x, "0")
    } else if d < 0 {
    print ("0", "0")
    }

    // Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.
    let cat1 = 5.0
    let cat2 = 10.0

    let s = cat1 * cat2 / 2
    print("Площадь равна \(s)")
    let C = sqrt(pow(cat1, 2)) + pow(cat2, 2)
    print("Гипотенуза равна \(C)")
    let P = cat1 + cat2 + C
    print("Периметр равен \(P)")

    // Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.
    let money: Double = 125000
    let procent: Double = 15
    let years = 5

    let finalSumm: Double = money * (1 + pow((procent / 100), Double(years)))
    print("Финальная сумма с учетом процентов \(finalSumm)")
    }
    
}
