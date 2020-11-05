//
//  HomeVC+Events.swift
//  RxSwiftTutorial
//
//  Created by Vural Çelik on 5.11.2020.
//

import Foundation
import RxCocoa
import RxSwift

extension HomeVC {
    internal func initiliazeEvents() {
        addBarButton
        .rx
        .tap
        .subscribe(onNext: { [unowned self] in
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let vc = storyBoard.instantiateViewController(withIdentifier: "DetailVC") as! DetailVC
            
            vc.publisher
            .asObservable()
            .subscribe(onNext: { model in
                var newWorksData = viewModel.worksData.value
                newWorksData.append(model)
                viewModel.worksData.accept(newWorksData)
                self.navigationController?.popViewController(animated: true)
            }).disposed(by: disposeBag)
            
            self.navigationController?.pushViewController(vc, animated: true)
        }).disposed(by: disposeBag)
    }
}
