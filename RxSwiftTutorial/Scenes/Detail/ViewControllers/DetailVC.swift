//
//  DetailVC.swift
//  RxSwiftTutorial
//
//  Created by Vural Çelik on 5.11.2020.
//

import UIKit
import RxSwift
import RxCocoa

class DetailVC: UIViewController {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var addButton: UIButton!
    
    var disposeBag = DisposeBag()
    var publisher = PublishSubject<WorkModel>()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeEvents()
    }

}
