//
//  ViewController.swift
//  AppIconTest
//
//  Created by Jim Baughman on 3/31/17.
//  Copyright © 2017 Midwest Computer Solutions. All rights reserved.
//

import UIKit
import StoreKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func setIcon(_ sender: UISegmentedControl) {
        do {
            switch sender.selectedSegmentIndex {
            case 0:
                UIApplication.shared.setAlternateIconName(nil, completionHandler: { (error) in
                    if error != nil {
                        print("\(String(describing: error?.localizedDescription))")
                    }
                })
            case 1:
                UIApplication.shared.setAlternateIconName("Test1", completionHandler: { (error) in
                    if error != nil {
                        print("\(String(describing: error?.localizedDescription))")
                    }
                })
            case 2:
                UIApplication.shared.setAlternateIconName("Test2", completionHandler: { (error) in
                    if error != nil {
                        print("\(String(describing: error?.localizedDescription))")
                    }
                })
            default:
                break
            }
            
        }
    }

}

