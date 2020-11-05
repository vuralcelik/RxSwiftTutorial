//
//  ViewController.swift
//  RxSwiftTutorial
//
//  Created by Vural Çelik on 4.11.2020.
//

import UIKit
import RxSwift
import RxCocoa

class HomeVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var addBarButton: UIBarButtonItem!
    
    var disposeBag = DisposeBag()
    var viewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeTableView()
        initializeSubscribers()
        initiliazeEvents()
    }
    
    
}

