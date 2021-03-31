//
//  FundsListModel.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 9/2/21.
//

import Foundation

struct FundsListModel: Codable {
    var _change: String?
    var amc: String?
    var approvedDate: String?
    var assetCompany: String?
    var characteristics: [String]?
    var classification: String?
    var closeDate: String?
    var code: String?
    var cutOffTime: String?
    var cutOffTimePmoney: String?
    var cutOffTimeSell: String?
    var dividend: Bool?
    var enName: String?
    var forexRisk: Bool?
    var fundId: String?
    var investCloseDate: String?
    var investOpenDate: String?
    var ipoPrice: Float?
    var mainCategory: String?
    var mainCategoryTH: String?
    var min1stInv: Float?
    var minHold: Int?
    var minHoldUnits: Int?
    var minInv: Float?
    var minRedeem: Int?
    var minRedeemUnits: Int?
    var openDate: String?
    var risk: Int?
    var riskCategory: String?
    var subCategory: String?
    var subCategoryTH: String?
    var thName: String?
    var type:String?
}

//struct characteristics: Codable {
//    [String]?
//}
//struct RealmFundsListModel: Codable {
//    var _change: String?
//    var amc: String?
//    var approvedDate: String?
//    var assetCompany: String?
//    var characteristics: [String]?
//    var classification: String?
//    var closeDate: String?
//    var code: String?
//    var cutOffTime: String?
//    var cutOffTimePmoney: String?
//    var cutOffTimeSell: String?
//    var dividend: Bool?
//    var enName: String?
//    var forexRisk: Bool?
//    var fundId: String?
//    var investCloseDate: String?
//    var investOpenDate: String?
//    var ipoPrice: Float?
//    var mainCategory: String?
//    var mainCategoryTH: String?
//    var min1stInv: Float?
//    var minHold: Int?
//    var minHoldUnits: Int?
//    var minInv: Float?
//    var minRedeem: Int?
//    var minRedeemUnits: Int?
//    var openDate: String?
//    var risk: Int?
//    var riskCategory: String?
//    var subCategory: String?
//    var subCategoryTH: String?
//    var thName: String?
//    var type:String?
//}
