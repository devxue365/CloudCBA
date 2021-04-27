//
//  DXExamStuStateVC.swift
//  CloudCBA
//
//  Created by 191204 on 2021/4/25.
//

import UIKit
import DNSPageView

class DXExamStuStateVC: UIViewController {
    
    lazy var style: PageStyle = {
        let pageStyle = PageStyle()
        pageStyle.isTitleViewScrollEnabled = false
        pageStyle.isTitleScaleEnabled = true
        return pageStyle
    }()
    
    let titles = ["未提交", "已提交", "未批改", "已批改"]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let childrenViewControllers : [UIViewController] = titles.map { _ -> UIViewController in
            let stuStateVC = DXStuStateVC()
            addChild(stuStateVC)
            return stuStateVC
        }
        let size = UIScreen.main.bounds.size
        let pageView = PageView(frame: CGRect(x: 0, y: 0, width: size.width, height: size.height), style: self.style, titles: self.titles, childViewControllers: childrenViewControllers)
        self.view.addSubview(pageView)
    }
}
