//
//  Student+CoreDataProperties.swift
//  CoreDataDemo
//
//  Created by Manish Sharma on 03/11/18.
//  Copyright © 2018 Manish Sharma. All rights reserved.
//
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var name: NSObject?
    @NSManaged public var address: NSObject?
    @NSManaged public var city: NSObject?
    @NSManaged public var mobile: NSObject?

}
