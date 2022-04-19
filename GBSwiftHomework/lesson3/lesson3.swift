//
//  lesson3.swift
//  GBSwiftHomework
//
//  Created by Igor on 20.04.2022.
//

import Foundation

/* 1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.
 
 2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
 
 3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
 
 4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
 
 5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
 
 6. Вывести значения свойств экземпляров в консоль. */

enum WindowStatus: String { // Окно открыто или закрыто
    case open
    case close
}

enum EngineStatus: String { // Двигателя влючен или выключен
    case start
    case stop
}

enum TrunkOfCar: String { // Полный багажник или пустой
    case full
    case empty
}

enum WindowStatusBacDoor: String { // Окно багажника открыто или закрыто
    case open
    case close
}

enum loadThings: String{  // Погрусить вещи в багажник или нет
    case yes
    case not
}

struct SportCar {
    let brand: String
    let year: Int
    let carVolume: Int
    var isEngineWorking: EngineStatus
    var isWindowsOpen: WindowStatus
    
    mutating func startEngine(){       // Изменение метода с запуска двигателя на заглушение двигателя
        self.isEngineWorking = .start
    }
    mutating func openWindow(){         // Изменение метода закрытого окна на открытое
        self.isWindowsOpen = .open
    }
}

struct TrunkCar {
    let brand: String
    let year: Int
    let trunkVolume: Int
    var isEngineWorking: Bool
    var isWindowsOpen: Bool
}

class Lesson3 {
    
    init() {
        
        let sportCarOne = SportCar(brand: "Audi", year: 2019, carVolume: 200, isEngineWorking: .start, isWindowsOpen: .open)
        print(sportCarOne.brand , sportCarOne.year, sportCarOne.isWindowsOpen)
        
        let trunkOne = TrunkCar(brand: "Kamaz", year: 2015, trunkVolume: 10000, isEngineWorking: true, isWindowsOpen: false)
        print(trunkOne.brand, trunkOne.trunkVolume, trunkOne.isWindowsOpen)
        
    }
    
}
