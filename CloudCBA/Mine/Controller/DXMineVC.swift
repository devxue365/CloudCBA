//
//  DXMineViewController.swift
//  CloudCBA
//
//  Created by 191204 on 2021/4/23.
//

import UIKit

class DXMineVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "我的"
        self.view.backgroundColor = UIColor.white
    }
        
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let changePassword = DXChangePasswordVC.init()
            self.navigationController?.pushViewController(changePassword, animated: true    )
            break
            
        default:
            break
            
        }
    }
}
