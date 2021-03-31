//
//  PortDetailRouter.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 25/3/21.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

@objc protocol PortDetailRoutingLogic
{
    func dismiss()
}

protocol PortDetailDataPassing
{
  var dataStore: PortDetailDataStore? { get }
}

class PortDetailRouter: NSObject, PortDetailRoutingLogic, PortDetailDataPassing
{
  weak var viewController: PortDetailViewController?
  var dataStore: PortDetailDataStore?
  
  // MARK: Routing
  
    func dismiss() {
        viewController?.dismiss(animated: false)
    }
}
