//
//  DXNavigationController.swift
//  CloudCBA
//
//  Created by 191204 on 2021/4/25.
//

import UIKit

class DXNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        viewController.hidesBottomBarWhenPushed = true
        super.pushViewController(viewController, animated: animated)
        viewController.hidesBottomBarWhenPushed = false
    }
    
    override func popViewController(animated: Bool) -> UIViewController? {
        //以下函数是对返回上一级界面之前的设置操作
        //每一次对viewController进行push的时候，会把viewController放入一个栈中
        //每一次对viewController进行pop的时候，会把viewController从栈中移除
        if self.viewControllers.count == 2 {
            //如果viewController栈中存在的ViewController的个数为两个，再返回上一级界面就是根界面了
            //那么要对tabbar进行显示
            let controller:UIViewController = self.viewControllers[0]
            controller.hidesBottomBarWhenPushed = false
        } else {
            //如果viewController栈中存在的ViewController的个数超过两个，对要返回到的上一级的界面设置hidesBottomBarWhenPushed = true
            //把tabbar进行隐藏
            let count = self.viewControllers.count-2
            let controller = self.viewControllers[count]
            controller.hidesBottomBarWhenPushed = true
        }
        return super.popViewController(animated: true)
    }
}
