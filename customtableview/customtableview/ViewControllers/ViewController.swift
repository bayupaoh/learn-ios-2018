//
//  ViewController.swift
//  customtableview
//
//  Created by Bayu Paoh on 16/09/18.
//  Copyright © 2018 Bayu Paoh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableViewMovie: UITableView!
    var movie:[Movie]=[]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createArray()
        tableViewMovie.dataSource = self
        tableViewMovie.delegate = self
        tableViewMovie.rowHeight = UITableViewAutomaticDimension
        tableViewMovie.estimatedRowHeight = 100
        tableViewMovie.register(UINib(nibName: "CustomMovies", bundle: nil), forCellReuseIdentifier: "CustomMovies")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createArray(){
        let movie1 = Movie(title: "The Predator",
                           desc: "Dari bagian terjauh di luar angkasa hingga ke jalan-jalan kecil di sebuah kota kecil, perburuan kembali terjadi dalam kisah Predator terbaru karya sutradara Shane Black. Sekarang, Predator (pemburu paling mematikan di alam semesta) menjadi lebih kuat, lebih pintar dan lebih mematikan daripada sebelumnya, setelah secara genetis menggunakan DNA spesies lain untuk meningkatkan diri mereka. ",
                           imageMovie: #imageLiteral(resourceName: "img_the_predator"))
        
        let movie2 = Movie(title: "JOHNNY ENGLISH STRIKES AGAIN",
                           desc: "Sebuah serangan siber menyebabkan seluruh identitas mata-mata aktif untuk Inggris terbongkar. Ditengah masa pensiunnya, Johnny English kembali dipanggil untuk menjalankan misi rahasia karena hanya ia satu-satunya mata-mata yang identitasnya belum diketahui.",
                           imageMovie:#imageLiteral(resourceName: "img_johny_english"))
        
        let movie3 = Movie(title: "VENOM",
                           desc: "Seorang jurnalis, Eddie Brock (Tom Hardy) ingin melakukan sebuah investasi kasus terhadap penemuan yang dipimpin oleh Dr. Carlton Drake (Riz Ahmed). Karena investigasinya, Eddie mengunjungi lab milik Dr. Calrlton Drake. Semuanya ditujukan untuk membuktikan bahwa Dr. Carlton Drake sedang sedang melakukan tindakan jahat menggunakan Symbiote.",imageMovie:#imageLiteral(resourceName: "img_venom"))
        
        let movie4 = Movie(title: "THE EQUALIZER 2",
                           desc: "Robert McCall (Denzel Washington) seorang mantan agen rahasia selalu berusaha memberikan keadilan bagi orang yang membutuhkannya. ",imageMovie:#imageLiteral(resourceName: "img_the_equalizer"))
        
        movie.append(movie1)
        movie.append(movie2)
        movie.append(movie3)
        movie.append(movie4)
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
        cell.customMovieImg?.image = movie[indexPath.row].imageMovie
        return cell
    }
    
}

