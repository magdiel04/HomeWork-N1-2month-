//
//  main.swift
//  HomeWork N1 (2month)
//
//  Created by Magdiel Altynbekov on 15/10/22.
//

import Foundation

print("Hello, World!")

//var carArray: [Car] = []
//
//class Car {
//    var model = ""
//    var speed = 0
//    var power = 0
//    var hp = 0
//
//    func addSet(motor: Int){
//        for i in 0...28{
//            carArray.append(Car(speed:"\(i)0"))
//        }
//        for i in carArray{
//            i.addSet(motor: 0)
//        }
//    }
//}


class Car {
    var volume = 3.5
    var power = 279
    var speed = ""
    var marka = ""
    var model = ""
    
    init(volume: Double, power: Int, speed: String, marka: String, model: String){
        self.volume = Double(volume)
        self.power = power
        self.speed = speed
        self.marka = marka
        self.model = model
    }
    func printSet(){
        print("Обьем тачки - \(Double(volume))")
        print("Мощность машины чипанули до \(power) л.сил")
        print("Скорость уже \(speed) км/ч")
        print(marka)
        print(model)
    }
}

var carArray: [Car] = []

for i in 1...28{
    carArray.append(Car(volume: 3.5, power: (270) + (i * 45), speed: "\(i)0", marka: "Марка: Mazda", model: "Модель: rx - 7"))
}
for i in carArray{
    i.printSet()
}

