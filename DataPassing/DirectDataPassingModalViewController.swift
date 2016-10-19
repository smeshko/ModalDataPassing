//
//  ModalViewController.swift
//  BachelorApp
//
//  Created by Ivaylo Tsonev on 19/10/16.
//  Copyright © 2016 tsonevInc. All rights reserved.
//

import UIKit

class DirectDataPassingModalViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func dismissViewController(_ sender: UIButton) {
        if let presenter = (presentingViewController as? UINavigationController)?.viewControllers.last as? DirectDataPassingParentViewController {
            if let text = textField.text {
                presenter.testValue = text
            }
        }
        self.dismiss(animated: true, completion: nil)
    }
}
