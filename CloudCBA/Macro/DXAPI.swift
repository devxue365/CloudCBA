//
//  DXCloudCBAAPI.swift
//  CloudCBA
//
//  Created by DevXue on 2021/4/25.
//

import Foundation

let projectName = "CloudCBA"

enum BuildConfiguration : String {
    case debug              = "debug"
    case release            = "release"
}

enum API : String {
    case Login              = "Login"
    case HomeTch            = "HomeTch"
    case ExamPaper          = "ExamPaper"
    case ExamStuState       = "ExamStuState"
    case ExamPaperDetails   = "ExamPaperDetails"
    case ExamPaperCorrect   = "ExamPaperCorrect"
    case ChangePassword     = "ChangePassword"
}

