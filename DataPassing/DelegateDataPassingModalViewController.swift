//
//  DelegateDataPassingModalViewController.swift
//  DataPassing
//
//  Created by Ivaylo Tsonev on 19/10/16.
//  Copyright © 2016 NoName. All rights reserved.
//

import UIKit

protocol ModalViewControllerDelegate {
    func passData(data: String)
}

class DelegateDataPassingModalViewController: UIViewController {
    
    var delegate: ModalViewControllerDelegate?
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func dismissViewController(_ sender: UIButton) {
        if let delegate = self.delegate, let text = textField.text {
            delegate.passData(data: text)
        }
        self.dismiss(animated: true, completion: nil)
    }
}
