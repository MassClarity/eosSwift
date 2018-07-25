//
//  NetworkManager.swift
//  eosSwift_Example
//
//  Created by eugene on 25/7/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation
import Alamofire

class NetworkManager {
    var baseUrl: URL
    
    init(stringUrl: String) {
        baseUrl = URL(string: stringUrl)!
    }
    
    func getInfo()
}
