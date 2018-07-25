//
//  NetworkManager.swift
//  eosSwift_Example
//
//  Created by eugene on 25/7/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation
import Alamofire


struct Mapper<T: Codable> {
    static func mapObject(res: DataResponse<Data>, completetionBlock: (T?, Error?) -> ())  {
        if let data = res.data {
            let decoder = JSONDecoder()
            do {
                let object = try decoder.decode(T.self, from: data)
                completetionBlock(object, nil)
            } catch {
                completetionBlock(nil, error)
            }
        } else {
            completetionBlock(nil, res.error)
        }
    }
}

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
    
    
    static func mapObject<T: Codable>(res: DataResponse<Data>, completetionBlock: (T?, Error?) -> ())  {
        if let data = res.data {
            let decoder = JSONDecoder()
            do {
                let object = try decoder.decode(T.self, from: data)
                completetionBlock(object, nil)
            } catch {
                completetionBlock(nil, error)
            }
        } else {
            completetionBlock(nil, res.error)
        }
    }
    
    func getInfo(completetionBlock: @escaping (ChainInfoModel?, Error?) -> ()) {
        manager.request(APIUrls.chainInfo, method: APIUrls.chainInfo.method()).responseData { (res) in
            NetworkManager.mapObject(res: res, completetionBlock: completetionBlock)
        }
    }
    
    func getBlock(completetionBlock: @escaping (ChainInfoModel?, Error?) -> ()) {
        manager.request(APIUrls.chainInfo, method: APIUrls.chainInfo.method()).responseData { (res) in
            Mapper<ChainInfoModel>.mapObject(res: res, completetionBlock: completetionBlock)
        }
    }
}
