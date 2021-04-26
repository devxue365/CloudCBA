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
    func get(
        url: String,
        parameters: Dictionary<String, Any>,
        isSuccess: Bool,
        success: SuccessBlock,
        error: FailedBlock
    ) {
        AF.request(
            "",
            method: .get,
            parameters: ["key" : "value"],
            encoder: JSONParameterEncoder.default,
            headers: nil,
            interceptor: nil
        )
        .responseJSON { (json) in
        }
        
    }
    
    /// POST请求
    /// - Parameters:
    ///   - url: 请求地址<String>
    ///   - parameters: 请求参数<Dictionary>
    func post(
        url: String,
        parameters: Dictionary<String, Any>,
        isSuccess: Bool,
        success: SuccessBlock,
        error: FailedBlock
    ) {
        AF.request(
            "",
            method: .post,
            parameters: ["key" : "value"],
            encoder: JSONParameterEncoder.default,
            headers: nil,
            interceptor: nil
        )
        .responseJSON { json in
            
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
