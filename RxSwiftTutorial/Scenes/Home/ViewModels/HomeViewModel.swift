//
//  HomeViewModel.swift
//  RxSwiftTutorial
//
//  Created by Vural Çelik on 4.11.2020.
//

import Foundation
import RxSwift
import RxCocoa

enum HomeViewModelCellIdentifiers: String {
    case workCell = "WorkTableViewCell"
}
class HomeViewModel {
    var disposeBag = DisposeBag()
    var worksData = BehaviorRelay<[WorkModel]>(value: [WorkModel]())
    var publisher = PublishSubject<WorkModel>()
    
    func getWorksData() {
        Network.shared.request(url: "https://run.mocky.io/v3/024f0f85-463f-4970-86cb-3a1cfdc594fb") { dataArray in
            self.worksData.accept(dataArray)
        }
    }
    
    
}
