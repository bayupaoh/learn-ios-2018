//
//  ViewController.swift
//  multistoryboard
//
//  Created by Bayu Paoh on 26/09/18.
//  Copyright © 2018 Bayu Paoh. All rights reserved.
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


    @IBAction func screen1Pressed(_ sender: Any) {
        let vc = Screen1ViewController.instantiate()
        navigationController?.pushViewController(vc, animated: true)
    }
}

