//
//  FundSalePresenter.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 15/3/21.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol FundSalePresentationLogic
{
  func presentFetchData(response: FundSale.FetchData.Response)
    func presentFetchInsertFunds(response:FundSale.FetchInsertDataFunds.Response)
}

class FundSalePresenter: FundSalePresentationLogic
{
  weak var viewController: FundSaleDisplayLogic?
  
  // MARK: Do something
  
  func presentFetchData(response: FundSale.FetchData.Response)
  {
    let viewModel = FundSale.FetchData.ViewModel(risk: response.risk, fcode: response.fcode, mainPage: response.mainPage, enName: response.enName, thName: response.thName, nav: response.nav, chage: response.chage, color: response.color,  buy: response.buy, sell: response.sell, datenav: response.datenav, portNo: response.portNo, assetCompany: response.assetCompany,investOpenDate: response.investOpenDate, getOrderList: response.getOrderList)
    viewController?.displayFetchData(viewModel: viewModel)
  }
    func presentFetchInsertFunds(response:FundSale.FetchInsertDataFunds.Response) {
        //        displayInsertFunds
                let insertOrder = response.insertOrder
                let error = response.error
                let viewModel = FundSale.FetchInsertDataFunds.ViewModel(insertOrder: insertOrder, error: error)
                viewController?.displayInsertFunds(viewModel: viewModel)
    }
}
