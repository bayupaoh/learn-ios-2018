//
//  Page2ViewController.swift
//  samplesegue
//
//  Created by Bayu Paoh on 20/09/18.
//  Copyright © 2018 Bayu Paoh. All rights reserved.
//

import UIKit


class Page2ViewController: UIViewController {
    
    
    @IBOutlet weak var page2Desc: UILabel!
    @IBOutlet weak var page2Name: UILabel!
    
    var name:String=""
    var desc:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        page2Name.text = name
        page2Desc.text = desc
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
    
    @IBAction func finishPressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    static func instantiate(_ title:String,_ desc: String ) -> Page2ViewController{
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyBoard.instantiateViewController(withIdentifier: "Page2ViewController") as! Page2ViewController
        controller.name = title
        controller.desc = desc
        return controller
    }
}
