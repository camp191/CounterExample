//
//  ViewController.swift
//  CounterExample
//
//  Created by Thanapat Sorralump on 23/11/2561 BE.
//  Copyright © 2561 Thanapat Sorralump. All rights reserved.
//

import UIKit
import AppState
import CounterUI

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let storyboard = UIStoryboard(name: "CounterUI", bundle: Bundle(identifier: "com.campus.CounterUI"))
        if let counterVC = storyboard.instantiateViewController(withIdentifier: "CounterVC") as? CounterVC {
            counterVC.localStore = mainStore
            show(counterVC, sender: nil)
        }

    }
    
}
