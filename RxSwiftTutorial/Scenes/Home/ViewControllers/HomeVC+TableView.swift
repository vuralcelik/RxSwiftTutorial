//
//  HomeVC+TableView.swift
//  RxSwiftTutorial
//
//  Created by Vural Çelik on 4.11.2020.
//

import Foundation
import UIKit

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    internal func initializeTableView() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.de
    }
}
