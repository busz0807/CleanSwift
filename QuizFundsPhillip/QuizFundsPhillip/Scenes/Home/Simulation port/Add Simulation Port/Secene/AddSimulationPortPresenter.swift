//
//  AddSimulationPortPresenter.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 9/3/21.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol AddSimulationPortPresentationLogic
{
  func presentSomething(response: AddSimulationPort.Something.Response)
    func presentFetchNavData(response:AddSimulationPort.FetchNavListData.Response)
    func presentFetchInsertFunds(response:AddSimulationPort.FetchInsertDataFunds.Response)
}

class AddSimulationPortPresenter: AddSimulationPortPresentationLogic
{
  weak var viewController: AddSimulationPortDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: AddSimulationPort.Something.Response)
  {
    let viewModel = AddSimulationPort.Something.ViewModel(risk: response.risk, fcode: response.fcode, mainPage: response.mainPage, enName: response.enName, thName: response.thName, nav: response.nav, chage: response.chage, color: response.color, buy: response.buy, sell: response.sell, datenav: response.datenav, portNo: response.portNo, assetCompany: response.assetCompany, investOpenDate: response.investOpenDate, getOrderList: response.getOrderList, searchfunds: response.searchfunds)
    viewController?.displaySomething(viewModel: viewModel)
  }
    func presentFetchNavData(response:AddSimulationPort.FetchNavListData.Response){
        let navlistdata = response.NavList
        let error = response.error
        let viewModel = AddSimulationPort.FetchNavListData.ViewModel(NavList: navlistdata, error: error)
        viewController?.displayFetchnavData(viewModel: viewModel)
    }
    func presentFetchInsertFunds(response:AddSimulationPort.FetchInsertDataFunds.Response) {
//        displayInsertFunds
        let insertOrder = response.insertOrder
        let error = response.error
        let viewModel = AddSimulationPort.FetchInsertDataFunds.ViewModel(insertOrder: insertOrder, error: error)
        viewController?.displayInsertFunds(viewModel: viewModel)
    }
}
