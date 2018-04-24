//
//  AuthService.swift
//  teletubbies
//
//  Created by Faris Dahleh on 4/24/18.
//  Copyright © 2018 Faris Dahleh. All rights reserved.
//

import Foundation
import Alamofire

class AuthService {
    
    static let instance = AuthService()
    
    let defults = UserDefaults.standard
    
    var isLoggedIn: Bool {
        get{
            return defults.bool(forKey: LOGGED_IN_KEY)
        }
        set{
            defults.set(newValue, forKey: LOGGED_IN_KEY)
        }
    }
    
    var authToken: String {
        get{
            return defults.value(forKey: TOKEN_KEY) as! String
        }
        set{
            defults.set(newValue, forKey: TOKEN_KEY)
        }
    }
    
    var userEmail: String {
        get{
            return defults.value(forKey: USER_EMAIL) as! String
        }
        set{
            defults.set(newValue, forKey: USER_EMAIL)
        }
    }
    
    func registerUser(email: String, password: String, completion: @escaping CompletionHandler){
        let lowerCaseEmail = email.lowercased()
        
        let header = [
            "Content-Type": "application/json; charset=utf-8"
        ]
        
        let body: [String: Any] = [
            "email": lowerCaseEmail,
            "password": password
        ]
        
        Alamofire.request(URL_REGISTER, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header).responseString { (response) in
            if response.result.error == nil {
                completion(true)
            }
            else{
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}
