//
//  NavListModel.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 5/4/21.
//

import Foundation

struct NavListModel: Codable {
    var buy: Double?
    var change: Double?
    var changePercent: Double?
    var date: String?
    var fundCode: String?
    var fundSize: Double?
    var nav: Double?
    var sell: Double?
    var switchIn: Double?
    var switchOut: Double?
}



struct InsertOrderModel: Codable {
    var Success: Bool
    var Message: String
}
