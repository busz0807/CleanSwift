//
//  SearchFundsModel.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 8/2/21.
//

import Foundation


struct SearchFundsModel: Codable {
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
    var ipoPrice: Int?
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

//struct FundIPOsRolloverDatasModels: Codable {
//    var ipoShowFlag: String?
//    var ipoExpireDate: String?
//    var fmname : String?
//    var fname : String?
//    var fundCat: String?
//    var ipoExpireDate2: String?
//    var ipoOfferDate2: String?
//    var tname: String?
//    var fundcode: String?
//    var ipoInvestment: Int?
//    var ipoReward: String?
//    var ipoDate2: String?
//    var chnfname: String?
//    var fundcaten: String?
//    var ipoGroup: String?
//    var smpic: String?
//    var ipoOfferDate: String?
//    var ipoRollOver: String?
//    var fcode: String?
//    var Langauge: String?
//    var lgpic: String?
//    var ipoDate: String?
//    var ipoDuration: String?
//    var ipoDetails : String?
//    var fundcatth: String?
//    var id: Int?
//    var risklevel: Int?
//    var scope_id: Int?
//    var chnfmname: String?
//    var ename: String?
//    var fxRisk: String?
//}
