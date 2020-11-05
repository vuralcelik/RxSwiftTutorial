//
//  Network.swift
//  RxSwiftTutorial
//
//  Created by Vural Çelik on 4.11.2020.
//

import Foundation
import Alamofire
import RxSwift
import RxCocoa

class Network {
    static let shared = Network()
    let decoder = JSONDecoder()
    
    func request(url: String,
                 completionHandler: @escaping (_ response: [WorkModel]) -> Void) {
        
        AF.request(url).response { [weak self] response in
            switch response.result {
            case .success:
                guard let data = response.data else { return }
                do {
                    guard let model = try self?.decoder.decode([WorkModel].self, from: data) else { return }
                    completionHandler(model)
                } catch let error {
                    print(error.localizedDescription)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        
    }
}
