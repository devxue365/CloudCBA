//
//  DXLoginViewController.swift
//  CloudCBA
//
//  Created by DevXue on 2021/4/23.
//

import UIKit

class DXLoginVC: UITableViewController {
    // 账号
    @IBOutlet weak var accountTF: UITextField!
    // 密码
    @IBOutlet weak var passwordTF: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - 点击事件
    @IBAction func clickLogin(_ sender: UIButton) {
    }
}
