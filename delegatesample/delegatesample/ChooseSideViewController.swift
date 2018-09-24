//
//  ChooseSideViewController.swift
//  delegatesample
//
//  Created by Bayu Paoh on 24/09/18.
//  Copyright © 2018 Bayu Paoh. All rights reserved.
//

import UIKit

protocol ChooseSideDelegate {
    func onSelectSide(_ side:String)
}

class ChooseSideViewController: UIViewController {
    
    var sideDelegate:ChooseSideDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func lightSidePressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        sideDelegate?.onSelectSide("Light Side")
    }
    
    @IBAction func darkSidePressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        sideDelegate?.onSelectSide("Dark Side")
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    
    static func instantiate(sideDelegate:ChooseSideDelegate) -> ChooseSideViewController{
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyBoard.instantiateViewController(withIdentifier: "ChooseSideViewController") as! ChooseSideViewController
        controller.sideDelegate = sideDelegate
        return controller
    }
    
}
