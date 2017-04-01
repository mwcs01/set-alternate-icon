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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnAction(_ sender: Any) {
        
        SKStoreReviewController.requestReview()
        
    }
    
    @IBAction func setIcon(_ sender: UISegmentedControl) {
        do {
            switch sender.selectedSegmentIndex {
            case 0:
                UIApplication.shared.setAlternateIconName(nil, completionHandler: {(_ error: Error?) -> Void in
                    print("error = \(String(describing: error?.localizedDescription))")
                })
            case 1:
                UIApplication.shared.setAlternateIconName("Test1", completionHandler: {(_ error: Error?) -> Void in
                    print("error = \(String(describing: error?.localizedDescription))")
                })
            case 2:
                UIApplication.shared.setAlternateIconName("Test2", completionHandler: {(_ error: Error?) -> Void in
                    print("error = \(String(describing: error?.localizedDescription))")
                })
            default:
                break
            }
            
        }
    }

}

