//
//  APIUrls.swift
//  eosSwift_Example
//
//  Created by eugene on 25/7/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation
import Alamofire

enum APIUrls {
    func stringUrl() -> String {
        switch self {
        case .chainInfo: return "/v1/chain/get_info"
        }
    }
    
    func method() -> HTTPMethod {
        switch self {
        case .chainInfo: return .get
        }
    }
    
    case chainInfo
}



