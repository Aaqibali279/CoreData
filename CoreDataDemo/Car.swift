//
//  Car.swift
//  CoreDataDemo
//
//  Created by Aqib Ali on 07/03/19.
//  Copyright © 2019 osx. All rights reserved.
//

import Foundation
import CoreData

@objc(Car)
public class Car: NSManagedObject {
    
}


extension Car {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Car> {
        return NSFetchRequest<Car>(entityName: "Car")
    }
    
    @NSManaged public var brand: String?
    @NSManaged public var user: Person?
    
}

