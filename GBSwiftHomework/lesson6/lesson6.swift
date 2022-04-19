//
//  lesson5.swift
//  GBSwiftHomework
//
//  Created by Igor on 20.04.2022.
//

import Foundation

struct queue <T> {
    private var elements: [T] = []
    
    public var isEmpty: Bool {
        return elements.count == 0
    }
    
    mutating func enqueue(element: T) {
        elements.append(element)
    }
    
    mutating func dequeue()->T {
        return elements.removeLast()
    }
    
    func head() -> T? {
        if isEmpty {
            print("The elemnets aren't found. Array is empty.")
            return nil
        } else {
            print("Last element is \(elements.last!)")
            return elements.last
        }
    }
    
    func front() -> T? {
        if isEmpty {
            print("The elemnets aren't found. Array is empty.")
            return nil
        } else {
            print("First element is \(elements.first!)")
            return elements.first
        }
    }
    
    func printMyQueue() {
        print(elements)
    }
}

extension queue {
    func myFilter(predicate:(T) -> Bool) -> [T] {
        var result = [T]()
        for i in elements {
            if predicate(i) {
                result.append(i)
            }
        }
        return result
    }
}


struct Journal {
    var name: String
    var mark: Int
}

extension Journal: CustomStringConvertible {
    var description : String {
        return "Name: \(name), Mark: \(mark)"
    }
}

class Lesson6 {
    
    init() {
        
        var pupil = queue<Journal>()
        pupil.enqueue(element: .init(name: "Kath", mark: 4))
        pupil.enqueue(element: .init(name: "Igor", mark: 5))
        pupil.enqueue(element: .init(name: "Ann", mark: 3))
        pupil.enqueue(element: .init(name: "Max", mark: 5))
        pupil.enqueue(element: .init(name: "Dima", mark: 3))
        pupil.enqueue(element: .init(name: "Petya", mark: 4))
        pupil.enqueue(element: .init(name: "Ksenia", mark: 5))
        pupil.enqueue(element: .init(name: "Mark", mark: 5))
        
        pupil.printMyQueue()
        
        let honoursPupil = pupil.myFilter(predicate: {$0.mark == 5})
        print(honoursPupil)
        
    }
}
