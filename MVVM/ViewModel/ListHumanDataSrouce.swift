//
//  ListHumanDataSrouce.swift
//  MVVM
//
//  Created by Vu Xuan Cuong on 8/24/20.
//  Copyright © 2020 Vu Xuan Cuong. All rights reserved.
//

import UIKit

class ListHumanDataSrouce: NSObject, UITableViewDataSource {
    var listHumans = [Human]()
    
    init(listHumans: [Human]) {
        self.listHumans = listHumans
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listHumans.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else {
            return UITableViewCell()
        }
        let human = listHumans[indexPath.row]
        cell.textLabel?.text = human.name
        cell.detailTextLabel?.text = String(human.age)
        return cell
    }
}
