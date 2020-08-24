//
//  ViewController.swift
//  MVVM
//
//  Created by Vu Xuan Cuong on 8/24/20.
//  Copyright © 2020 Vu Xuan Cuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: ListHumanViewModel! {
        didSet {
            viewModel.dataDidChange = { [weak self] in
                self?.tableView.dataSource = $0.listHumanDataSrouce
                self?.tableView.delegate = $0.listHumanDelegate
                self?.tableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ListHumanViewModel()
        viewModel.loadData()
    }
}

