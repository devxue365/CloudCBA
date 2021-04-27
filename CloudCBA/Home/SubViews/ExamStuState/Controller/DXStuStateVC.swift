//
//  DXStuStateVC.swift
//  CloudCBA
//
//  Created by 191204 on 2021/4/27.
//

import UIKit

class DXStuStateVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(UINib.init(nibName: "DXStuStateCell", bundle: nil), forCellReuseIdentifier: "DXStuStateCell")

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DXStuStateCell", for: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let correctVC = DXCorrectVC.init()
        self.navigationController?.pushViewController(correctVC, animated: true)
    }
}
