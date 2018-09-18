//
//  ViewController.swift
//  customtableview
//
//  Created by Bayu Paoh on 16/09/18.
//  Copyright © 2018 Bayu Paoh. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    
    @IBOutlet weak var tableViewMovie: UITableView!
    var movie:[Movie]=[]
    let sessionMAnager = SessionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initTableView()
        getData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initTableView(){
        tableViewMovie.dataSource = self
        tableViewMovie.delegate = self
        tableViewMovie.rowHeight = 200
        tableViewMovie.register(UINib(nibName: "CustomMovies", bundle: nil), forCellReuseIdentifier: "CustomMovies")
    }
    
    func getData(){
        sessionMAnager.request(URL(string:"https://api.themoviedb.org/3/discover/movie?api_key=1b2f29d43bf2e4f3142530bc6929d341&sort_by=popularity.desc")!, method: HTTPMethod.get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON(completionHandler: { response in
            switch response.result {
            case let .success(value):
                let responseParse = JSON(value)
                for result in responseParse["results"].arrayValue{
                    let movieData = Movie(title: result["title"].stringValue, desc: result["overview"].stringValue, imageMovie: result["poster_path"].stringValue)
                    self.movie.append(movieData)
                    self.tableViewMovie.reloadData()
                }
                
            case let .failure(error):
                print(error.localizedDescription)
            }
        })
    }
    
}

extension ViewController : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movie.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomMovies") as! CustomMovieCell
        cell.customMovieTitle?.text = movie[indexPath.row].title
        cell.customMovieDesc?.text = movie[indexPath.row].desc
        
        sessionMAnager.request(URL(string:"https://image.tmdb.org/t/p/w185"+movie[indexPath.row].imageMovie)!).responseData{ response in
            switch response.result {
                case let .success(value):
                    cell.customMovieImg.image = UIImage(data: value)
                
                case let .failure(error):
                    print(error.localizedDescription)
            }
        }
        return cell
    }
    
}

