//
//  DatabaseHelper.swift
//  CoreDataDemo
//
//  Created by Manish Sharma on 03/11/18.
//  Copyright © 2018 Manish Sharma. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class DatabaseHelper {
    
    static let sharedInstance = DatabaseHelper()
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    
    func save(object: [String: String]) {
        let student = NSEntityDescription.insertNewObject(forEntityName: "Student", into: context!) as! Student
        student.name = object["name"]
        student.address = object["address"]
        student.city = object["city"]
        student.mobile = object["mobile"]
        do {
            try context?.save()
        } catch {
            print("Data is not saved")
        }
    }
    
    func fetchData() -> [Student] {
        var student = [Student]()
        let fetchData = NSFetchRequest<NSManagedObject>(entityName: "Student")
        do {
            student = try context?.fetch(fetchData) as! [Student]
        } catch  {
            print("Cannot fetch data")
        }
        return student
    }
    
    func update() {
        
    }
    
    func delete() {
        
    }
}
