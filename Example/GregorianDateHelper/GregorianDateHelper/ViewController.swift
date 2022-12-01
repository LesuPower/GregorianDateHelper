//
//  ViewController.swift
//  GregorianDateHelper
//
//  Created by Tam Huynh on 11/11/22.
//

import UIKit

extension Date {
    /// Return date with out milisecond
    var dateWithOutMilisecond: Date {
        adjust()!
    }
    
    mutating func removeMilisecond() {
        self = dateWithOutMilisecond
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var date = Date()
        date = date.offset(.second, value: 0)!
        print(date.toString(format: .custom("yyyy/MM/dd HH:mm:ss.SSSS")))
//        date = date.adjust()!
        date.removeMilisecond()
        print(date.toString(format: .custom("yyyy/MM/dd HH:mm:ss.SSSS")))
    }


}

