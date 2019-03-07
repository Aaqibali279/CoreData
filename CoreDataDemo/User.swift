//
//  User.swift
//  CoreDataDemo
//
//  Created by Aqib Ali on 07/03/19.
//  Copyright © 2019 osx. All rights reserved.
//

import Foundation
import CoreData

@objc(Person)
public class Person: NSManagedObject {

}


extension Person {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var name: String?
    @NSManaged public var car: Car?

}

// MARK: Generated accessors for cars
//extension User {
//
//    @objc(addCarObject:)
//    @NSManaged public func addToCar(value: Car)
//
//    @objc(removeCarObject:)
//    @NSManaged public func removeCar(value: Car)
//
//
//}

