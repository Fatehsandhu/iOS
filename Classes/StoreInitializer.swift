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
        
        //Add the programs to the courses
        let bsd = Program(entity : program , insertInto : ctx)
        bsd.code = "BSD"
        bsd.credential = "Degree"
        bsd.fullName = "Honours Bachelor of Technology (Software Development)"
        
        model.saveChanges()
        
        let ifs = Program(entity : program , insertInto : ctx)
        ifs.code = "IFS"
        ifs.credential = "Degree"
        ifs.fullName = "Informatics and Security"
        
        model.saveChanges()
        
        let cpa = Program(entity : program , insertInto : ctx)
        cpa.code = "CPA"
        cpa.credential = "Diploma"
        cpa.fullName = "IComputer Programming and Analysis"
        
        model.saveChanges()
        
        let cpd = Program(entity : program , insertInto : ctx)
        cpd.code = "CPD"
        cpd.credential = "Diploma"
        cpd.fullName = "Computer Programmer"
        
        model.saveChanges()
        
        
        let cty = Program(entity : program , insertInto : ctx)
        cty.code = "CTY"
        cty.credential = "Diploma"
        cty.fullName = "Computer Systems Technology"
        
        model.saveChanges()

        //Now we add the courses to the model
        let btp400 = Course(entity : course, insertInto : ctx)
        btp400.code = "BTP400"
        btp400.courseDescription = "In the short time since its introduction, Java has become one of the most popular programming languages of all time. Java has evolved from a web-based language to a robust language used in all manner of application development. This course will serve as a thorough introduction to Java as an object-oriented language. Topics studied will include OO concepts in Java, threads, exceptions, GUI programming using AWT/Swing, input/output, networking, client-server programming, applets, and database access via JDBC."
        btp400.fullName = "Object-Oriented Software Development II - Java"
        btp400.program = bsd
        
        model.saveChanges()
        
        
        let btn410 = Course(entity : course, insertInto : ctx)
        btn410.code = "BTN410"
        btn410.courseDescription = "This course provides a technical foundation in data communications and network technology. It introduces the various media used along with the main techniques employed to provide reliable and efficient communications. It describes the major transmission systems and networks from Local to Wide Area Networks along with the equipment and techniques used to interconnect them. In addition, the course covers the TCP/IP protocol suite and a number of Internet technologies."
        btn410.fullName = "Data Communications - Networks"
        btn410.program = bsd
        
        model.saveChanges()
        
        
        let bti420 = Course(entity : course, insertInto : ctx)
        bti420.code = "BTI425"
        bti420.courseDescription = "This course specifically addresses the technical skills and business knowledge required to develop data-driven web sites hosted on the Microsoft Web Platform. The course will focus on server-side ASP.NET programming technologies and the C# language. Students will also work with current and full-featured data access technologies, and interact with a variety of local and remote data stores."
        bti420.fullName = "Web Programming for Apps and Services"
        bti420.program = bsd
        
        model.saveChanges()
        
        
        let bts430 = Course(entity : course, insertInto : ctx)
        bts430.code = "BTS430"
        bts430.courseDescription = "This course focuses on the practical application of object-oriented concepts for analysis and design to the development of business systems. Students will perform use case analysis to identify initial classes and will progress to detailed class design, defining class attributes, behaviours, hierarchies and relationships. Throughout the course students will be creating a detailed software model based on an in-depth business case study."
        bts430.fullName = "Systems Analysis and Design using UML"
        bts430.program = bsd
        
        model.saveChanges()
        
        let btc440 = Course(entity : course, insertInto : ctx)
        btc440.code = "BTC440"
        btc440.courseDescription = "This course focuses on the knowledge and skills required for writing pertinent business correspondence and business or technical proposals and reports, as appropriate to the software development field. Examples from this industry will be evaluated for their effectiveness, and students will learn to write abstracts and executive summaries. Common software packages (Word, Excel, PowerPoint) are utilized to communicate material in a variety of print and display formats. Effective use of e-mail is examined and incorporated throughout the course. The preparation of business reports, especially proposals, and technical reports involving research are learned by accomplishment."
        btc440.fullName = "Business and Technical Writing"
        btc440.program = bsd
        
        model.saveChanges()
        
        let web422 = Course(entity : course, insertInto : ctx)
        web422.code = "WEB422"
        web422.courseDescription = "The Windows platform was the first to bring the convenience of scripting to server-side web programming, and ASP (Active Server Pages) technologies are preferred by developers working on the Windows platform. This course specifically addresses the skills needed to develop feature-rich database-driven web sites running on Windows servers. The course will focus on ASP.NET server-side programming using the Visual C# language. Data Access Layers will be used for database access, and technology such as XML Web Services and Ajax will also be covered."
        web422.fullName = "Web Programming for Apps and Services"
        web422.program = ifs
        
        model.saveChanges()
        
        let jac444 = Course(entity : course, insertInto : ctx)
        jac444.code = "JAC444"
        jac444.courseDescription = "In the short time since its introduction, Java has become one of the most popular programming languages of all time. Java has evolved from a web-based language to a robust language used in all manner of application development. This course will serve as a thorough introduction to Java as an object-oriented language. Topics studied will include OO concepts in Java, threads, exceptions, GUI programming using Graphics2D/Swing, input/output, networking, client-server programming, applets, servlets and database access via JDBC."
        jac444.fullName = "Introduction to Java for C++ Programmers"
        jac444.program = ifs
        
        model.saveChanges()
        
        let bci433 = Course(entity : course, insertInto : ctx)
        bci433.code = "BCI433"
        bci433.courseDescription = "IBC233 introduces commercial and business information technology on the IBM iSeries server. Students will work in an object based architecture using Client Access and IBM Rational Developer for System i to create business applications. These applications will be developed using the built in DB2 relational database, OS/400 commands and Control Language programming, RPGLE programming, interactive screens, and WebQuery or Query/400 data reporting. The Integrated File System, which provides Windows and UNIX file serving, along with desktop connectivity tools will be investigated to demonstrate the heterogeneous systems support available only on the iSeries platform."
        bci433.fullName = "IBM Business Computing"
        bci433.program = ifs
        
        model.saveChanges()
        
    }
}



















