//
//  Movie.swift
//  customtableview
//
//  Created by Bayu Paoh on 16/09/18.
//  Copyright © 2018 Bayu Paoh. All rights reserved.
//

import Foundation
import UIKit
class Movie{
    var title:String
    var desc:String
    var imageMovie : String
    
    init(title:String,desc:String,imageMovie : String) {
        self.title = title
        self.desc=desc
        self.imageMovie=imageMovie
    }
}
