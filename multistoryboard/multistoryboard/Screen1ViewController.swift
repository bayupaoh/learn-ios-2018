//
//  Screen1ViewController.swift
//  multistoryboard
//
//  Created by Bayu Paoh on 26/09/18.
//  Copyright © 2018 Bayu Paoh. All rights reserved.
//

import UIKit

class Screen1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    static func instantiate() -> Screen1ViewController{
        let controller = UIStoryboard.storyBoard1.instantiateViewController(withIdentifier: "Screen1ViewController") as! Screen1ViewController
        return controller
    }
}
