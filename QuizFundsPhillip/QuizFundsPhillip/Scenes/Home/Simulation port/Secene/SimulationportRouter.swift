//
//  SimulationportRouter.swift
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

protocol SimulationportRoutingLogic
{
    func goToSearchFundsPreview(mainpage: String, portNo: Int)
    func goToPortDetail(portNo: Int )
    func sendDatagoToBuyAndSalePreview(fundsList: [ReealmFundsListMobile]?,getOrderList: DataGetOrder? , portNo: Int)
}

protocol SimulationportDataPassing
{
  var dataStore: SimulationportDataStore? { get }
}

class SimulationportRouter: NSObject, SimulationportRoutingLogic, SimulationportDataPassing
{
  weak var viewController: SimulationportViewController?
  var dataStore: SimulationportDataStore?
  
  // MARK: Routing
  
    func goToSearchFundsPreview(mainpage: String,portNo: Int) {
         let destinationVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SearchFundsViewController") as! SearchFundsViewController
        var destinationDS = destinationVC.router!.dataStore!
        destinationDS.mainpage = mainpage
        destinationDS.portNo = portNo
        viewController?.present(destinationVC, animated: true)
    }
    func goToPortDetail(portNo: Int ) {
        let destinationVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PortDetailViewController") as! PortDetailViewController
        var destinationDS = destinationVC.router!.dataStore!
        destinationDS.portNo = portNo
        viewController?.present(destinationVC, animated: true, completion: nil)
   }
    func sendDatagoToBuyAndSalePreview(fundsList: [ReealmFundsListMobile]?,getOrderList: DataGetOrder? , portNo: Int) {
      let destinationVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BuyAndSaleViewController") as! BuyAndSaleViewController
        var destinationDS = destinationVC.router!.dataStore!
        destinationDS.fundsList = fundsList
        destinationDS.portNo = portNo
        destinationDS.getOrderList = getOrderList
      viewController?.present(destinationVC, animated: false)
        
    }
}
