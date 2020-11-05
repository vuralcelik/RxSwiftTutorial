//
//  UINavigationController+Extension.swift
//  RxSwiftTutorial
//
//  Created by Vural Çelik on 5.11.2020.
//

import Foundation
import UIKit

extension UINavigationController {

  public func pushViewController(viewController: UIViewController,
                                 animated: Bool,
                                 completion: (() -> Void)?) {
    CATransaction.begin()
    CATransaction.setCompletionBlock(completion)
    pushViewController(viewController, animated: animated)
    CATransaction.commit()
  }

}
