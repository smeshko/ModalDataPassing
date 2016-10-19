//
//  DelegateDataPassingParentViewController.swift
//  DataPassing
//
//  Created by Ivaylo Tsonev on 19/10/16.
//  Copyright © 2016 NoName. All rights reserved.
//

import UIKit


class DelegateDataPassingParentViewController: UIViewController, ModalViewControllerDelegate {
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func presentModalView(_ sender: UIButton) {
        if let modalVC = UIStoryboard(name: "DelegateDataPassing", bundle: nil).instantiateViewController(withIdentifier: "ModalViewController") as? DelegateDataPassingModalViewController {
            modalVC.delegate = self
            present(modalVC, animated: true, completion: nil)
        }
    }
    
    func passData(data: String) {
        label.text = data
    }
}
