//
//  ViewController.swift
//  WhiteNavigationController
//
//  Created by Zandor300 on 03/30/2019.
//  Copyright (c) 2019 Zandor300. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var cells = [Int: ColorTableViewCell]()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(self.refresh))

        self.tableView.separatorStyle = .none
    }

    @objc func refresh() {
        for (_, cell) in self.cells {
            cell.setup()
            cell.layoutSubviews()
        }
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ColorTableViewCell
        self.cells[indexPath.row] = cell
        return cell
    }

}

