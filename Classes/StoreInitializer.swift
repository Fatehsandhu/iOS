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
        
    }
}
