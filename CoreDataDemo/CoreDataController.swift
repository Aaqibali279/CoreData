//
//  CoreDataController.swift
//  CoreDataDemo
//
//  Created by Aqib Ali on 07/03/19.
//  Copyright © 2019 osx. All rights reserved.
//

import UIKit
import CoreData


class CoreDataController {
    
    static var instance = CoreDataController()
    
    private lazy var context:NSManagedObjectContext = {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }()
    
    private init(){}
    
    
    func addPerson(name:String,car:Car) -> Person?{
        

        guard let entity = NSEntityDescription.entity(forEntityName: "Person", in: context) else {
            return nil
        }
        
        let person = Person(entity: entity, insertInto: context)
        person.name = name
        person.car = car
        
        do {
            try context.save()
            return person
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
            return nil
        }
        
    }
    
    
    func addCar(brand:String) -> Car?{
        
    
        
        guard let entity = NSEntityDescription.entity(forEntityName: "Car", in: context) else {
            return nil
        }
        
        let car = Car(entity: entity, insertInto: context)
        car.brand = brand
        
        do {
            try context.save()
            return car
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
            return nil
        }
    }
    
    func getPersons() -> [Person]? {
        
        
        let request = NSFetchRequest<Person>(entityName:"Person")
//        request.predicate = NSPredicate(format: "name = %@", "John1")
        do{
            let persons = try context.fetch(request) 
            return persons
        }catch{
            print(error.localizedDescription)
            return nil
        }
        
    }
    
    func getCars() -> [Car]? {
        
        
        let request = NSFetchRequest<Car>(entityName:"Car")
        
        do {
            let cars = try context.fetch(request)
            return cars
        } catch {
            print(error.localizedDescription)
            return nil
        }
        
    }
    
    
}
