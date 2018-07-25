//
//  NetworkManager.swift
//  eosSwift_Example
//
//  Created by eugene on 25/7/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation
import Alamofire

open class NetworkManager {
    open var baseUrl: URL
    
    static let configuration = URLSessionConfiguration.default
    let manager: SessionManager = {
        let manager = Alamofire.SessionManager(configuration: NetworkManager.configuration)
        return manager
    }()
    
    init(stringUrl: String) {
        baseUrl = URL(string: stringUrl)!
    }
    
    func getInfo(completetionBlock: (ChainInfoModel, Error?) -> ()) {
        
    }
    
    func getBlock(completetionBlock: (ChainInfoModel, Error?) -> ()) {
        
    }
}
