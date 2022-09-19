//
//  UserManager.swift
//  GHFollowers
//
//  Created by Marco Mascorro on 9/18/22.
//

import Foundation



class UserManager {
    
    static let shared = UserManager()
    
    
    func fetchUserFollowers(_ username: String, completion: @escaping(Bool)-> Void){
        let urlString = "https://api.github.com/users/\(username)/followers"
        if let urlString = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: urlString) { data, res, error in
                
                if error != nil {
                    print(error?.localizedDescription)
                    return
                }
                
                if let safeData = data {
                    print("DEBUG",safeData)
                }
            }
            task.resume()
        }
    }
    
    
    
    
    
    
    
}
