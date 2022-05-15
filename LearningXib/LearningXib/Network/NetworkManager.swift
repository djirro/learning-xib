//
//  NetworkManager.swift
//  LearningXib
//
//  Created by Admin on 15.05.2022.
//

import Foundation
import UIKit

class NetworkManager {
    static let shared = NetworkManager()
    
    public func fetchSizedImage(width: String,
                         height: String,
                         complition: @escaping(Result<UIImage, Error>) -> Void) {
        let API = "https://picsum.photos/" + width + "/" + height
        
        guard let apiURL = URL(string: API) else {
            fatalError("some Error")
        }
        
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: apiURL) { (data, response, error) in
            guard let data = data, error == nil else { return }
            
            do {
                guard let image = UIImage(data: data) else {
                    fatalError("some Error")
                }
                complition(.success(image))
            }
            catch {
                complition(.failure(error))
            }
        }
        task.resume()
    }
}
