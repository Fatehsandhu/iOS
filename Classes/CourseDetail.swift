//
//  CourseDetail.swift
//  Classes
//
//  Created by Fateh Sandhu on 2017-02-21.
//  Copyright © 2017 School of ICT, Seneca College. All rights reserved.
//

import UIKit

class CourseDetail: UIViewController {

    var code : String!
    var name : String!
    var desc : String!
    
    @IBOutlet weak var courseLabel: UILabel!
    @IBOutlet weak var nameLabel: UITextView!
    @IBOutlet weak var descLabel: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        courseLabel.text! = code
        nameLabel.text! = name
        descLabel.text! = desc
    }

    /*
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
     */
}
