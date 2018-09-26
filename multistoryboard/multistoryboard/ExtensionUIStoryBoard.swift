//
//  ExtensionUIStoryBoard.swift
//  multistoryboard
//
//  Created by Bayu Paoh on 26/09/18.
//  Copyright © 2018 Bayu Paoh. All rights reserved.
//

import Foundation
import UIKit

extension UIStoryboard{
    static var main:UIStoryboard{
        return  UIStoryboard(name: "Main", bundle: nil)
    }
    
    static var storyBoard1:UIStoryboard{
        return  UIStoryboard(name: "Storyboard1", bundle: nil)
    }
    
}
