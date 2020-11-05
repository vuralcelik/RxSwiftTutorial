//
//  DetailVC+Events.swift
//  RxSwiftTutorial
//
//  Created by Vural Çelik on 5.11.2020.
//

import Foundation
import RxSwift
import RxCocoa

extension DetailVC {
    internal func initializeEvents() {
        addButton
        .rx
        .tap
        .bind { [weak self] _ in
            var workModel = WorkModel()
            workModel.text = self?.textView.text
            self?.publisher.onNext(workModel)
        }.disposed(by: disposeBag)
    }
}
