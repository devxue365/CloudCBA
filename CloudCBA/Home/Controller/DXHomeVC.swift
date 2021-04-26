//
//  DXHomeViewController.swift
//  CloudCBA
//
//  Created by 191204 on 2021/4/23.
//

import UIKit

class DXHomeVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "课程"
        self.tableView.register(UINib.init(nibName: "DXHomeCell", bundle: nil), forCellReuseIdentifier: "DXHomeCell")
    }
    
    // MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    // MARK: - UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DXHomeCell", for: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let examPaper = DXExamPaperVC.init()
        self.navigationController?.pushViewController(examPaper, animated: true)
    }
    
}
