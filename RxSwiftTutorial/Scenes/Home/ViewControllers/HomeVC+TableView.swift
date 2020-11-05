//
//  HomeVC+TableView.swift
//  RxSwiftTutorial
//
//  Created by Vural Çelik on 4.11.2020.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    internal func initializeTableView() {
        tableView.rx.setDelegate(self).disposed(by: disposeBag)
        tableView.rx.setDataSource(self).disposed(by: disposeBag)
        
        setupTableViewDataBinding()
    }
    
    private func setupTableViewDataBinding() {
        viewModel.getWorksData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.worksData.value.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: HomeViewModelCellIdentifiers.workCell.rawValue) as? WorkTableViewCell else {
            return UITableViewCell()
        }
        
        cell.workContentLabel.text = viewModel.worksData.value[indexPath.row].text
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
