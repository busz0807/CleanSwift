//
//  RealmFundsList.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 9/2/21.
//

import Foundation
import RealmSwift

class ReealmFundsListMobile: Object {
    @objc dynamic var _id: ObjectId = ObjectId.generate()
    @objc dynamic var _change: String = ""
    @objc dynamic var amc: String = ""
    @objc dynamic var approvedDate: String = ""
    @objc dynamic var assetCompany: String = ""
    let characteristics = List<String>()
    @objc dynamic var classification: String = ""
    @objc dynamic var closeDate: String = ""
    @objc dynamic var code: String = ""
    @objc dynamic var cutOffTime: String = ""
    @objc dynamic var cutOffTimePmoney: String = ""
    @objc dynamic var cutOffTimeSell: String = ""
    @objc dynamic var dividend: Bool = false
    @objc dynamic var enName: String = ""
    @objc dynamic var forexRisk: Bool = false
    @objc dynamic var fundId: String = ""
    @objc dynamic var investCloseDate: String = ""
    @objc dynamic var investOpenDate: String = ""
    @objc dynamic var ipoPrice: Int = 0
    @objc dynamic var mainCategory: String = ""
    @objc dynamic var mainCategoryTH: String = ""
    @objc dynamic var min1stInv: Int = 0
    @objc dynamic var minHold: Int = 0
    @objc dynamic var minHoldUnits: Int = 0
    @objc dynamic var minInv: Int = 0
    @objc dynamic var minRedeem: Int = 0
    @objc dynamic var minRedeemUnits: Int = 0
    @objc dynamic var openDate: String  = ""
    @objc dynamic var risk: Int = 0
    @objc dynamic var riskCategory: String = ""
    @objc dynamic var subCategory: String = ""
    @objc dynamic var subCategoryTH: String = ""
    @objc dynamic var thName: String = ""
    @objc dynamic var type:String = ""
    let nav  = Array(arrayLiteral: SearchNavModel())
    override static func primaryKey() -> String? {
        return "_id"
    }
    
    convenience init(dataFunds: SearchFundsModel,dataNav: SearchNavModel) {
        self.init()
        self._change = dataFunds._change ?? ""
        self.amc = dataFunds.amc ?? ""
        self.approvedDate = dataFunds.approvedDate ?? ""
        self.assetCompany = dataFunds.assetCompany ?? ""
        if let characteristics = dataFunds.characteristics {
            self.characteristics.append(characteristics[0])
              }
        self.classification = dataFunds.classification ?? ""
        self.closeDate = dataFunds.closeDate ?? ""
        self.code = dataFunds.code ?? ""
        self.cutOffTime = dataFunds.cutOffTime ?? ""
        self.cutOffTimePmoney = dataFunds.cutOffTimePmoney ?? ""
        self.cutOffTimeSell = dataFunds.cutOffTimeSell ?? ""
        self.dividend = dataFunds.dividend ?? false
        self.enName = dataFunds.enName ?? ""
        self.forexRisk = dataFunds.forexRisk ?? false
        self.fundId = dataFunds.fundId ?? ""
        self.investCloseDate = dataFunds.investCloseDate ?? ""
        self.investOpenDate = dataFunds.investCloseDate ?? ""
        self.ipoPrice = dataFunds.ipoPrice ?? 0
        self.mainCategory = dataFunds.mainCategory ?? ""
        self.mainCategoryTH = dataFunds.mainCategoryTH ?? ""
        self.min1stInv = Int(dataFunds.min1stInv ?? 0.0)
        self.minHold = dataFunds.minHold ?? 0
        self.minHoldUnits = dataFunds.minHoldUnits ?? 0
        self.minInv = Int(dataFunds.minInv ?? 0)
        self.minRedeem = dataFunds.minRedeem ?? 0
        self.minRedeemUnits = dataFunds.minRedeemUnits ?? 0
        self.openDate = dataFunds.openDate ?? ""
        self.risk = dataFunds.risk ?? 0
        self.riskCategory = dataFunds.riskCategory ?? ""
        self.subCategory = dataFunds.subCategory ?? ""
        self.subCategoryTH = dataFunds.subCategoryTH ?? ""
        self.thName = dataFunds.thName ?? ""
        self.type = dataFunds.type ?? ""
// 
//       
    }
}

