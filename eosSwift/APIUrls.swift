//
//  APIUrls.swift
//  eosSwift_Example
//
//  Created by eugene on 25/7/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation
import Alamofire

enum APIUrls: URLConvertible {
    func asURL() throws -> URL {
        switch self {
        case .chainInfo: return URL(string: "/v1/chain/get_info")!
        }
    }
    
    func method() -> HTTPMethod {
        switch self {
        case .chainInfo: return .get
        }
    }
    
    case chainInfo
}
