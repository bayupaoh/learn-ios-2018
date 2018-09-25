//
//  ViewController.swift
//  tableviewsection
//
//  Created by Bayu Paoh on 24/09/18.
//  Copyright © 2018 Bayu Paoh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    struct ContactList {
        var sectionName:String!
        var sectionObjects:[String]!
    }
    
    var objectArray = [ContactList]()
    let SectionHeaderHeight: CGFloat = 25
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        objectArray = [ContactList(sectionName: "A",sectionObjects: ["Andi","Anca"]),
                       ContactList(sectionName: "B",sectionObjects: ["Bayu","Budi"])]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return objectArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objectArray[section].sectionObjects.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return SectionHeaderHeight
    }
    
    //for header
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.width, height: SectionHeaderHeight))
        view.backgroundColor = UIColor(red: 253.0/255.0, green: 240.0/255.0, blue: 196.0/255.0, alpha: 1)
        let label = UILabel(frame: CGRect(x: 15, y: 0, width: tableView.bounds.width - 30, height: SectionHeaderHeight))
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = UIColor.black
        label.text = objectArray[section].sectionName
        view.addSubview(label)
        return view
    }
    
    //function for item
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = objectArray[indexPath.section].sectionObjects[indexPath.row]
        return cell
    }
}

