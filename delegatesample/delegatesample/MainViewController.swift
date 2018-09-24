//
//  ViewController.swift
//  delegatesample
//
//  Created by Bayu Paoh on 21/09/18.
//  Copyright © 2018 Bayu Paoh. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func chooseSidePressed(_ sender: Any) {
        let vc = ChooseSideViewController.instantiate(sideDelegate: self)
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension MainViewController :  ChooseSideDelegate{
    func onSelectSide(_ side: String) {
        print("data : \(side)")
        let alertController = UIAlertController(title: "Welcome to \(side)", message:
            "Thank You", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default,handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }
    
    
}
