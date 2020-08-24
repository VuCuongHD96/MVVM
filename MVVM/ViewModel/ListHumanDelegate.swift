//
//  ListHumanDelegate.swift
//  MVVM
//
//  Created by Vu Xuan Cuong on 8/24/20.
//  Copyright © 2020 Vu Xuan Cuong. All rights reserved.
//

import UIKit

class ListHumanDelegate: NSObject, UITableViewDelegate {
    typealias Listener = (Int) -> ()
    var passIndex: Listener?
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        passIndex?(indexPath.row)
    }
}
