//
//  Model.swift
//  AlamofireDemo
//
//  Created by  Al Amin on 3/20/18.
//  Copyright © 2018 Al Amin. All rights reserved.
//

import Foundation
import EVReflection
import Alamofire
import UIKit

class CountryModel: EVObject {
    
    var RestResponse: RestResponses?
}

class RestResponses: EVObject {
    
    var messages: [String]?
    var result: [CountryList]?
}

class CountryList: EVObject {
    
    var id: Int                     = 0
    var country: String             = ""
    var name: String                = ""
    var abbr: String                = ""
    var area: String                = ""
    var largest_city: String        = ""
    var capital: String             = ""
}
