//
//  DXCloudCBAAPI.swift
//  CloudCBA
//
//  Created by DevXue on 2021/4/25.
//

import Foundation

/// 编译配置
enum BuildConfiguration : String {
    case debug              = "http://172.16.0.160:8086"
    case release            = "https://cloudcba.co-think.com:8088"
}

/// 接口
enum Api : String {
    case Login              = "/sys/mLogin"                     // 登录
    case HomeTch            = "/em/course/appList"              // 首页
    case ExamPaper          = "/em/exam/list"                   // 试卷列表
    case ExamStuState       = "/em/stu/queryCondition"          // 学生提交状态查询
    case ExamPaperDetails   = "/em/stu/paperContentForMark"     // 试卷内容
    case ExamPaperCorrect   = "ExamPaperCorrect"                // 批改
    case ChangePassword     = "/sys/user/modifyPassword"        // 修改密码
}

class DXHttp {
    static let shared = DXHttp()
    private init() {}

    /// 项目名
    let projectName = "/cothink-boot"

    /// 编译模式（默认：debug）
    var buildConfig : BuildConfiguration = .debug
    
    /// 获取请求地址
    /// - Parameter api: 接口名称
    /// - Returns: 接口地址
    static func url(api: Api) -> String {
        return DXHttp.shared.buildConfig.rawValue + DXHttp.shared.projectName + api.rawValue
    }
}
