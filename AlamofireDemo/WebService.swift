//
//  WebService.swift
//  AlamofireDemo
//
//  Created by  Al Amin on 3/20/18.
//  Copyright © 2018 Al Amin. All rights reserved.
//

import Foundation
import Alamofire

extension ViewController {
    
    func WS_GetCountryList(url: String) {
        
        print(url)
        let headers = ["Content-Type": "application/x-www-form-urlencoded"]
        Alamofire.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: headers).responseObject { (response: DataResponse<CountryModel>) in
            
            if response.result.value != nil {
                print(response.result.value!.RestResponse!.messages![0])
                self.arrCountryList = (response.result.value!.RestResponse?.result!)!
                self.tblView.reloadData()
            } else {
                print("Error")
            }
        }
    }
}

