//
//  DXRequest.swift
//  CloudCBA
//
//  Created by DevXue on 2021/4/25.
//

import UIKit
import Alamofire
import SwiftyJSON

// 成功
typealias SuccessBlock = (_ response: DataResponse<Data, AFError>) -> Void
// 失败
typealias FailedBlock = (_ error: NSError) -> Void
// 进度
typealias ProgressBlock = (_ progress: Int32) -> Void

class DXRequestManager: NSObject {
    
}

class DXRequest {
    /// GET请求
    /// - Parameters:
    ///   - url: 请求地址<String>
    ///   - parameters: 请求参数<Dictionary>
    static func get(
        url: String,
        parameters: Dictionary<String, Any>,
        isSuccess: Bool,
        success: SuccessBlock,
        error: FailedBlock
    ) {
        AF.request(
            url,
            method: .get,
            parameters: parameters,
            encoding: URLEncoding.default,
            headers: nil,
            interceptor: nil
        )
        .response{response in
            print(response)
        }
        .responseJSON { (json) in
            print(json)
        }
    }
    
    /// POST请求
    /// - Parameters:
    ///   - url: 请求地址<String>
    ///   - parameters: 请求参数<Dictionary>
    static func post(
        url: String,
        parameters: Dictionary<String, Any>,
        isSuccess: Bool,
        success: SuccessBlock,
        error: FailedBlock
    ) {
        AF.request(
            url,
            method: .post,
            parameters: parameters,
            encoding: JSONEncoding.default,
            headers: nil,
            interceptor: nil
        )
        .response { json in
            print(json)
        }
        .responseJSON { json in
            print(json)
        }
    }
    
    func uploadFile() {
        AF.upload(Data.init(), to: "")
            .uploadProgress { progress in
                
            }
            .responseData { response in
                
            }
    }
    
    func download() {
        AF.download("")
            .downloadProgress { progress in
                
            }
            .responseData { response in
                
            }
    }
}
