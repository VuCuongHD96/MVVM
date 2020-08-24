//
//  ListHumanViewModel.swift
//  MVVM
//
//  Created by Vu Xuan Cuong on 8/24/20.
//  Copyright © 2020 Vu Xuan Cuong. All rights reserved.
//

import Foundation

class ListHumanViewModel {
    var listHumans = [Human]()
    
    typealias Listener = (ListHumanViewModel) -> ()
    var dataDidChange: Listener?
    
    var listHumanDataSrouce: ListHumanDataSrouce? {
        didSet {
            dataDidChange?(self)
        }
    }
    
    var listHumanDelegate: ListHumanDelegate! {
        didSet {
            listHumanDelegate.passIndex = { [weak self] in
                self?.listHumans[$0].age += 1
                self?.listHumanDataSrouce = ListHumanDataSrouce(listHumans: self?.listHumans ?? [Human]())
            }
        }
    }
    
    func loadData() {
        listHumans = [Human(name: "Cương", age: 24),
                      Human(name: "abc", age: 10)
        ]
        
        listHumanDelegate = ListHumanDelegate()
        listHumanDataSrouce = ListHumanDataSrouce(listHumans: listHumans)
    }
    
}
