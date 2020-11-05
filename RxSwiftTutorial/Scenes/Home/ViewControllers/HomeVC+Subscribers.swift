//
//  HomeVC+Subscribers.swift
//  RxSwiftTutorial
//
//  Created by Vural Çelik on 5.11.2020.
//

import Foundation
import RxSwift
import RxCocoa

extension HomeVC {
    internal func initializeSubscribers() {
        viewModel.worksData
        .subscribe(onNext: { modelArray in
            self.tableView.reloadData()
        }).disposed(by: disposeBag)
    }
}
