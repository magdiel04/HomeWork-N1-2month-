//
//  main.swift
//  HomeWork N1 (2month)
//
//  Created by Magdiel Altynbekov on 15/10/22.
//

import Foundation

print("Hello, World!")






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






class Shop{

    var name = "Мармеладка"
    var ploshad = 120
    var personal = 10
    var products = ["Coca-Cola": 50, "Pepsi": 50, "Хлеб": 25, "Яйца": 100, "Ролтон": 25, "Мука": 100, "Чай": 100]
    func showProducts(){
        print(products)
    }

    func addToShop(name: String, price: Int) {
        products["\(name)"] = price
    }
}

class Product{

    var name: String
    var price: Int

    init(name: String, price: Int){
        self.name = name
        self.price = price
    }
}


var shop = Shop()
shop.showProducts()

var sugar = Product(name: "Сахар", price: 70)

shop.addToShop(name: sugar.name, price: sugar.price)
shop.showProducts()






class Client {
    
    var name: String
    var surname: String
    var id: Int
    var balance: Int
    
    init(name: String, surname: String, id: Int, balance: Int) {
        self.name = name
        self.surname = surname
        self.id = id
        self.balance = balance
    }
}


class Bank {
    
    var name = "KKB"
    var clients: [Client]
    
    init (clients: [Client]){
    self.clients = clients
    }
    
    // Просмотр баланса по ID
    func balanceID(id: Int) {
        for i in clients{
            if i.id == id   {
                print("Баланс равен \(i.balance)")
            }
        }
    }
    
    // Просмотр баланса по фамилии
    func balanceSurname (surname: String){
        for i in clients{
            if i.surname == surname{
                print("Баланс равен \(i.balance)")
            }
        }
    }
    
    // Перевод денег по имени
    func perevod(fromName: String, toName: String, summa: Int) {
        for i in clients{
            if i.name == fromName{
                i.balance -= summa
            }
            if i.name == toName{
                i.balance += summa
            }
        }
    }
    
}

var client1 = Client(name: "Nuridin", surname: "Safaraliev", id: 111, balance: 1500)
    
var client2 = Client(name: "Sadyr", surname: "Japarov", id: 0, balance: 1000000)

var client3 = Client(name: "Petr", surname: "Petrovich", id: 15, balance: 30000)

var bank = Bank(clients: [client1, client2, client3])




bank.balanceID(id: 111)

bank.balanceSurname(surname: "Altynbekov")

bank.perevod(fromName: "Altynbekov", toName: "Bekjan", summa: 1000000)

bank.balanceID(id: 111)



