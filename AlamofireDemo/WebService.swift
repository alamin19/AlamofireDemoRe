//
//  WebService.swift
//  AlamofireDemo
//
//  Created by Saddam Al Amin on 3/20/18.
//  Copyright © 2018 Al Amin. All rights reserved.
//

import Foundation
import Alamofire

extension ViewController {
    
    func WS_GetCountryList(url: String) {
        
        print(url)
        let headers = ["Content-Type": "application/json"]
        Alamofire.request(url, method: .post, parameters: nil, encoding: JSONEncoding.default, headers: headers).responseObject { (response: DataResponse<CountryModel>) in
            
            if response.result.value != nil {
                print(response.result.value)
            } else {
                print("Error")
            }
        }
    }
}
