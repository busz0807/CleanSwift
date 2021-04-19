//
//  FundSaleInteractor.swift
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

protocol FundSaleBusinessLogic
{
    func doFetchInsertFunds(request: FundSale.FetchInsertDataFunds.Request)
    func doFetchData(request: FundSale.FetchData.Request)
}

protocol FundSaleDataStore
{
    var risk : Int {get set}
    var fcode: String {get set}
    var mainPage: String {get set}
    var enName: String {get set}
    var thName: String {get set}
    var nav: String {get set}
    var chage: String {get set}
    var buy: String {get set}
    var sell: String {get set}
    var datenav: String {get set}
    var assetCompany: String {get set}
    var portNo: Int?  {get set}
    var investOpenDate: String {get set}
    var getOrderList: DataGetOrder?  {get set}
}

class FundSaleInteractor: FundSaleBusinessLogic, FundSaleDataStore
{
 
    var presenter: FundSalePresentationLogic?
    var worker: FundSaleWorker?
    var portNo: Int?
    var getOrderList: DataGetOrder?
    var risk = 0
    var fcode = ""
    var mainPage = ""
    var enName = ""
    var thName = ""
    var nav = ""
    var chage = ""
    var buy = ""
    var sell = ""
    var datenav = ""
    var assetCompany = ""
    var investOpenDate = ""
  //var name: String = ""
  
  // MARK: Do something
  
  func doFetchData(request: FundSale.FetchData.Request)
  {
    worker = FundSaleWorker()
    let response = FundSale.FetchData.Response(risk: risk, fcode: fcode, mainPage: mainPage, enName: enName, thName: thName, nav: nav, chage: chage, buy: buy, sell: sell, datenav: datenav, portNo: portNo, assetCompany: assetCompany, investOpenDate: investOpenDate, getOrderList: getOrderList)
    presenter?.presentFetchData(response: response)
  }
    func doFetchInsertFunds(request: FundSale.FetchInsertDataFunds.Request) {
        worker = FundSaleWorker()
        let username = request.username
        let portName = request.portName
        let portNo = request.portNo
        let fcode = request.fcode
        let ordtp = request.ordtp
         let grsam = request.grsam
        let units = request.units
        let unprc = request.unprc
        let trndt = request.trndt
        let status = request.status
        let channel = request.channel
        let realized = request.realized
//        print("username",username )
//        print("portName", portName)
//        print("portNo", portNo)
//        print("fcode",fcode )
//        print("ordtp",ordtp )
//        print("grsam", grsam)
//        print("units", units)
//        print("unprc",unprc )
//        print("trndt",trndt )
//        print("status", status )
//        print("channel", channel )
//        print("realized", realized)
        worker?.fecthInsertData(username: username, portNo: portNo, portName: portName, fcode: fcode, ordtp: ordtp, grsam: grsam, units: units, unprc: unprc, trndt: trndt, status: status, channel: channel, realized: realized){ (insertData, error ) in
                if error != nil {
                    let response = FundSale.FetchInsertDataFunds.Response(insertOrder: nil, error: error)
                    self.presenter?.presentFetchInsertFunds(response: response)
                }
                
                let response = FundSale.FetchInsertDataFunds.Response(insertOrder: insertData, error:  error)
        //      print("getOrderData", getOrderData)
                self.presenter?.presentFetchInsertFunds(response: response)
            }
    }
}
