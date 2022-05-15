//
//  ViewController.swift
//  LearningXib
//
//  Created by Admin on 15.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var imageWidth  = ""
    var imageHeight = ""

    @IBOutlet weak var someImage: UIImageView!
    @IBAction func getImageButtonPressed(_ sender: Any) {
        NetworkManager.shared.fetchSizedImage(width: imageWidth, height: imageHeight) { result in
            switch result {
            case .success(let image):
                DispatchQueue.main.async {
                    self.someImage.image = image
                }
                case .failure(let error):
                print("no good")
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = someImage.bounds.width
        self.imageWidth = String(format: "%.0f", Double(width))
        
        let height = someImage.bounds.height
        self.imageHeight = String(format: "%.0f", Double(height))
    
    }


}

