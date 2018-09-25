//
//  ModelTimeline.swift
//  tableviewmultipleview
//
//  Created by Bayu Paoh on 25/09/18.
//  Copyright © 2018 Bayu Paoh. All rights reserved.
//

import Foundation
import UIKit

class ModelTimeline {
    var status: String?
    var image: UIImage?
    
    init(status: String?,image: UIImage?) {
        self.status = status
        self.image = image
    }
}
