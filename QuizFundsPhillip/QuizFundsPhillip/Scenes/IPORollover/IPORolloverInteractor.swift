//
//  IPORolloverInteractor.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 28/1/21.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol IPORolloverBusinessLogic
{
  func setupFetchFundsIPO(request: IPORollovers.FetchFromRemoteDataStore.Request)
}

protocol IPORolloverDataStore
{
    var fundsIPOData: [FundIPORolloverDataModels]? { get set }
}

class IPORolloverInteractor: IPORolloverBusinessLogic, IPORolloverDataStore
{
    var fundsIPOData: [FundIPORolloverDataModels]?
    typealias Models = IPORollovers
  var presenter: IPORolloverPresentationLogic?
  var worker: IPORolloverWorker?
  //var name: String = ""
  
  // MARK: Do something
  
    func setupFetchFundsIPO(request: IPORollovers.FetchFromRemoteDataStore.Request) {
        let nameFunds = request.nameFunds
        worker = IPORolloverWorker()
        worker?.fetchFundsIPODatas {_ , _ in
      
        }
        worker?.fetchFundsIPOData(nameFund: nameFunds) { (fundsIPO , error ) in
            if error != nil {
                let response = IPORollovers.FetchFromRemoteDataStore.Response(fundsIPO: nil, error: error)
                self.presenter?.presentFetchFundsIPO(response: response)
                return
            }
            
            let response = IPORollovers.FetchFromRemoteDataStore.Response(fundsIPO: fundsIPO, error: nil)
          
            self.presenter?.presentFetchFundsIPO(response: response)
        }
        
    }
    
}
