//
//  ProgramList.swift
//  Classes
//
//  Created by Fateh Sandhu on 2017-02-21.
//  Copyright © 2017 School of ICT, Seneca College. All rights reserved.
//

import UIKit
import CoreData

class ProgramList: UITableViewController, NSFetchedResultsControllerDelegate {
    
    var model: Model!
    
    var frc: NSFetchedResultsController<Program>!


    override func viewDidLoad() {
        super.viewDidLoad()
        frc = model.frc_program
        frc.delegate = self
        frc.fetchRequest.predicate = nil
        do {
            try frc.performFetch()
        } catch let error as NSError {
            print(error.description)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.frc.sections?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.frc.sections?[section].numberOfObjects ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        
        //var program = model.frc_program
        
        let item: Program = frc.object(at: indexPath)
        cell.textLabel!.text = item.code
        cell.detailTextLabel!.text = item.fullName
        cell.imageView?.image = UIImage(named: item.credential!)
        
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     if segue.identifier == "toCourseList" {
     // Get a reference to the destination view controller
        let vc = segue.destination as! CourseList
     
        let item: Program = model.frc_program.object(at: self.tableView.indexPathForSelectedRow!)
     
        let courses = item.courses!.sortedArray(using: [NSSortDescriptor(key: "code", ascending: true)]) as! [Course]
     // Pass on the object
        vc.courses = courses
     
     // Configure the view if you wish
        vc.title = "\(item.code ?? "Default course") courses"
        }
    }
}
