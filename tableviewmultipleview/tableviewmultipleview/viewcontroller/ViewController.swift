//
//  ViewController.swift
//  tableviewmultipleview
//
//  Created by Bayu Paoh on 25/09/18.
//  Copyright © 2018 Bayu Paoh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableViewTimeline: UITableView!
    
    var timelines:[ModelTimeline]=[]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initTableView()
        initData()
    }
    
    func initTableView() {
        tableViewTimeline?.dataSource = self
        tableViewTimeline?.delegate = self
        tableViewTimeline?.rowHeight = 200
        tableViewTimeline?.register(UINib(nibName: "CustomTimelineImages", bundle: nil), forCellReuseIdentifier: "CustomTimelineImages")
        tableViewTimeline?.register(UINib(nibName: "CustomTimelineStatus", bundle: nil), forCellReuseIdentifier: "CustomTimelineStatus")
    }
    
    func initData(){
        timelines.append(ModelTimeline(status: "Sample status", image: nil))
        timelines.append(ModelTimeline(status: "Sample status", image: nil))
        timelines.append(ModelTimeline(status: nil, image: #imageLiteral(resourceName: "img_summer")))
        timelines.append(ModelTimeline(status: nil, image: #imageLiteral(resourceName: "img_summer")))
        tableViewTimeline?.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("jumlah data : \(timelines.count)")
        return timelines.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(timelines[indexPath.row].image != nil){
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTimelineImages") as! CustomTimelineImages
            cell.timelineImages.image=timelines[indexPath.row].image
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTimelineStatus") as! CustomTimelineStatus
            cell.timelineStatusLabel.text = timelines[indexPath.row].status
            return cell
        }
    }
}

