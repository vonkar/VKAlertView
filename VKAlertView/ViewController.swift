//
//  ViewController.swift
//  VKAlertView
//
//  Created by Vinod Onkar on 20/09/17.
//  Copyright © 2017 Vinod Onkar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        AlertViewController.shared.displayAlert(title: "This is some title", message: "This is some message", origin: self,noTitle:"No",yesTitle: "Yes")
    }

}

