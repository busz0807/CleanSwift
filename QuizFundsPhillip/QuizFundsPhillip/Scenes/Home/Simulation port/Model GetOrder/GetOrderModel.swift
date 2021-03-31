//
//  GetOrderModel.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 24/3/21.
//

import Foundation

struct GetOrderModel: Codable {
    var Success: Bool
    var Message: String
    var Data: [DataGetOrder]
}
struct DataGetOrder: Codable {
    var username: String
    var portNo: Int
    var portName: String
    var fcode: String
    var abbreviation: String
    var availableUnits: Double
    var averageCost: Double
    var currentValue: Double
    var nav: Double
    var navDate: String
    var principal: Double
    var realizedProfit: Double
    var totalReturns: Double
    var unrealizedProfits: Double
    var unrealizedReturns: Double
}

struct GetHistoryModel: Codable {
    var Success: Bool
    var Message: String
    var Data: [DataGetHistoryModel]
}

struct DataGetHistoryModel: Codable {
    var username: String
    var portNo: Int
    var orderno: Int
    var ordertype: String
    var txType: Int?
    var value: Double?
    var units: Double
    var unitPrice: Double
    var orderDate: String
    var timestamp: String
    var fcode: String
    var abbreviation: String
    var fmcode: String
    var fname: String
    var chnfname: String
    var fmename: String
    var fmtname: String
    var payment: String
  
}


struct DeleteModel: Codable {
    var Success: Bool
    var Message: String
    var Data: String
}
