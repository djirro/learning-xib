//
//  Discount.swift
//  LearningXib
//
//  Created by Admin on 15.05.2022.
//

import Foundation
import UIKit

struct Discount {
    let title: String
    let description: String
    let backgroundImageName: String
    
    var backgroundImage: UIImage? {
        return UIImage(named: backgroundImageName)
    }
}
