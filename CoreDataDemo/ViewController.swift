//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Aqib Ali on 07/03/19.
//  Copyright © 2019 osx. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let controller = CoreDataController.instance
        
        guard let car = controller.addCar(brand: "BMW") else{
            return
        }
        
        guard let person = controller.addPerson(name: "John1", car: car) else{
            return
        }
        
        print(person.name ?? "nil")
        
        guard let persons = controller.getPersons() else {
            return
        }
        
    
        for person in persons{
            print("name \(person.name ?? "nil")")
        }
        
        guard let cars = controller.getCars() else {
            return
        }
        
        for car in cars {
            print("brand \(car.brand ?? "nil")")
        }

        
        
    }

}

