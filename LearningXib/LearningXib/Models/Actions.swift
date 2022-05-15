//
//  Actions.swift
//  LearningXib
//
//  Created by Admin on 15.05.2022.
//

import Foundation
import UIKit

struct Actions {
    let title: String
    let iconName: String
    
    var icon: UIImage? {
        return UIImage(named: iconName)
    }
}
