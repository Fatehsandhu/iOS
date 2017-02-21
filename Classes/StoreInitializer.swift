//
//  StoreInitializer.swift
//  Classes
//
//  Created by Peter McIntyre on 2015-02-01.
//  Copyright (c) 2017 School of ICT, Seneca College. All rights reserved.
//

import CoreData

class StoreInitializer {
    
    class func populateInitialData(model: Model) {
        
        let ctx = model.cdStack.managedObjectContext
        
        guard let program = NSEntityDescription.entity(forEntityName: "Program", in: ctx!)
            else {
                fatalError("Unable to create a Program entity type")
            }
        guard let course = NSEntityDescription.entity(forEntityName: "Course", in: ctx!)
            else {
                fatalError("Unable to create a Course entity type")
        }
        
        let bsd = Program(entity : program , insertInto : ctx)
        bsd.code = "BSD"
        bsd.credential = "Degree"
        bsd.fullName = "Honours Bachelor of Technology (Software Development)"
        
        model.saveChanges()
        
        let btp400 = Course(entity : course, insertInto : ctx)
        btp400.code = "BTP400"
        btp400.courseDescription = "In the short time since its introduction, Java has become one of the most popular programming languages of all time. Java has evolved from a web-based language to a robust language used in all manner of application development. This course will serve as a thorough introduction to Java as an object-oriented language. Topics studied will include OO concepts in Java, threads, exceptions, GUI programming using AWT/Swing, input/output, networking, client-server programming, applets, and database access via JDBC."
        btp400.fullName = "Object-Oriented Software Development II - Java"
        btp400.program = bsd
        
        model.saveChanges()
        
        // Add code to populate the data store with initial data
        
        // For each object that you want to create...
        // Initialize an object
        // Set its properties
        // Save changes
        
        // This app will work with the "Example" entity that you can see in the object model
        
        // If you have not yet run the app (in the simulator), 
        // and you want to create your own object model, you can...
        // Comment out (or delete) the 'create data' code below
        // Delete the entity in the object model
        // Edit the Model class, and its fetched results controller (uses of 'Example' class need to change)
        // Comment out, delete, or edit the data access statements in the '...List' and '...Detail' controllers

        // If you have run the app in the simulator,
        // you will have to do the above, AND delete the app from the simulator

       
        /*
        guard let entity = NSEntityDescription.entity(forEntityName: "Example", in: model.context) else {
            fatalError("Can't create entity named Example")
        }
        
        let obj: Example
        if #available(iOS 10.0, *) {
            // Once you switch to iOS 10-only, the API looks nicer. I just put this here for reference.
            obj = Example(context: model.context)
        } else {
            obj = Example(entity: entity, insertInto: model.context)
        }
        obj.attribute1 = "Peter"
        obj.attribute2 = 33

        let obj2 = Example(entity: entity, insertInto: model.context)
        obj2.attribute1 = "Garvan"
        obj2.attribute2 = 29
        
        model.saveChanges()
        */
    }
}
