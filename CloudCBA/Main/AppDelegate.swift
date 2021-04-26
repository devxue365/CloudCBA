//
//  AppDelegate.swift
//  CloudCBA
//
//  Created by 191204 on 2021/4/23.
//

import UIKit
import XCGLogger

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // 设置编译模式
        DXHttp.shared.buildConfig = .release
        
        // 日志
        let log = XCGLogger.default
        // 日志文件输出地址
        let cachePath = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)[0]
        let logURL = cachePath.appendingPathComponent("log.txt")
        // 日志设置
        log.setup(level: .debug,
                  showThreadName: true,
                  showLevel: true,
                  showFileNames: true,
                  showLineNumbers: true,
                  writeToFile: logURL,
                  fileLevel: .debug)
        
/*
log.verbose("一条verbose消息：程序执行时最详细的信息。")
log.debug("一条debug消息：用于代码调试。")
log.info("一条info消息：常用与用户在console.app中查看。")
log.warning("一条warning消息：警告消息，表示一个可能的错误。")
log.error("一条error消息：表示产生了一个可恢复的错误，用于告知发生了什么事情。")
log.severe("一条severeError消息：表示产生了一个严重错误。程序可能很快会奔溃。")
*/

        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

