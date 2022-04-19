//
//  lesson2.swift
//  GBSwiftHomework
//
//  Created by Igor on 19.04.2022.
//

import Foundation

class Lesson2 {
    
    init() {
        proverkaChetnosti(x: 5)
        proverkaChetnosti(x: 15)
        proverkaChetnosti(x: 20)
        delenieBezOstatka(y: 3)
        delenieBezOstatka(y: 10)
        delenieBezOstatka(y: 15)
        createArray()
    }
    
    // 1) Написать функцию, которая определяет, четное число или нет.
    private func proverkaChetnosti (x: Int) {
        if x % 2 == 0 {
            print("Число четное")
        }else{
            print("Число не четное")
        }
    }
    
    // 2) Написать функцию, которая определяет, делится ли число без остатка на 3.
    private func delenieBezOstatka (y: Int) {
        if y % 3 == 0 {
            print("Число делится без остатка")
        }else{
            print("Число не делится без остатка")
        }
    }
    
    // 3) Создать возрастающий массив из 100 чисел.
    private func createArray () {
        var ot0Do100 = [Int]()
        for i in 1...100{
            ot0Do100.append(i)
        }
        print (ot0Do100)
        
        // 4) Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
        
        for i in ot0Do100{
            if i % 2 == 0 && i % 3 != 0 {
                ot0Do100.remove(at: ot0Do100.firstIndex(of: i) ?? 0)
            }
        }
        print(ot0Do100)
    }
}
