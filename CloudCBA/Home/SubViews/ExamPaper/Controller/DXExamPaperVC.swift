//
//  DXExamPaperVC.swift
//  CloudCBA
//
//  Created by 191204 on 2021/4/25.
//

import UIKit

class DXExamPaperVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.tableView.register(UINib.init(nibName: "DXExamPaperCell", bundle: nil), forCellReuseIdentifier: "DXExamPaperCell")
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DXExamPaperCell", for: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("click : \(indexPath)")
    }
}

