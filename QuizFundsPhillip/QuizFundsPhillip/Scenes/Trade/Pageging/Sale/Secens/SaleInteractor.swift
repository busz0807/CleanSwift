//
//  SaleInteractor.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 8/2/21.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol SaleBusinessLogic
{
  func doSomething(request: Sale.Something.Request)
}

protocol SaleDataStore
{
  //var name: String { get set }
}

class SaleInteractor: SaleBusinessLogic, SaleDataStore
{
  var presenter: SalePresentationLogic?
  var worker: SaleWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: Sale.Something.Request)
  {
    worker = SaleWorker()
    worker?.doSomeWork()
    
    let response = Sale.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
