//
//  ViewController.swift
//  samplesegue
//
//  Created by Bayu Paoh on 20/09/18.
//  Copyright © 2018 Bayu Paoh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var viewControllerName: UITextField!
    @IBOutlet weak var viewControllerDesc: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func orderPress(_ sender: Any) {
        let vc = Page2ViewController.instantiate((viewControllerName?.text)!,(viewControllerDesc?.text)!)
        navigationController?.pushViewController(vc, animated: true)
    }
}

