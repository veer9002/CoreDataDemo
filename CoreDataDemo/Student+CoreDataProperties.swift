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

    @NSManaged public var name: String?
    @NSManaged public var address: String?
    @NSManaged public var city: String?
    @NSManaged public var mobile: String?

}
