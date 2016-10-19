//
//  ParentViewController.swift
//  BachelorApp
//
//  Created by Ivaylo Tsonev on 19/10/16.
//  Copyright © 2016 tsonevInc. All rights reserved.
//

import UIKit


class DirectDataPassingParentViewController: UIViewController {

    var testValue: String = "no data yet"
    @IBOutlet weak var label: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        label.text = testValue
    }
}
