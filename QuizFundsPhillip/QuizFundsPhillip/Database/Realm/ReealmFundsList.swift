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
    
    override static func primaryKey() -> String? {
        return "_id"
    }
    
    convenience init(data: SearchFundsModel) {
        self.init()
        self._change = data._change ?? ""
        self.amc = data.amc ?? ""
        self.approvedDate = data.approvedDate ?? ""
        self.assetCompany = data.assetCompany ?? ""
        if let characteristics = data.characteristics {
            self.characteristics.append(characteristics[0])
              }
        self.classification = data.classification ?? ""
        self.closeDate = data.closeDate ?? ""
        self.code = data.code ?? ""
        self.cutOffTime = data.cutOffTime ?? ""
        self.cutOffTimePmoney = data.cutOffTimePmoney ?? ""
        self.cutOffTimeSell = data.cutOffTimeSell ?? ""
        self.dividend = data.dividend ?? false
        self.enName = data.enName ?? ""
        self.forexRisk = data.forexRisk ?? false
        self.fundId = data.fundId ?? ""
        self.investCloseDate = data.investCloseDate ?? ""
        self.investOpenDate = data.investCloseDate ?? ""
        self.ipoPrice = data.ipoPrice ?? 0
        self.mainCategory = data.mainCategory ?? ""
        self.mainCategoryTH = data.mainCategoryTH ?? ""
        self.min1stInv = Int(data.min1stInv ?? 0.0)
        self.minHold = data.minHold ?? 0
        self.minHoldUnits = data.minHoldUnits ?? 0
        self.minInv = Int(data.minInv ?? 0)
        self.minRedeem = data.minRedeem ?? 0
        self.minRedeemUnits = data.minRedeemUnits ?? 0
        self.openDate = data.openDate ?? ""
        self.risk = data.risk ?? 0
        self.riskCategory = data.riskCategory ?? ""
        self.subCategory = data.subCategory ?? ""
        self.subCategoryTH = data.subCategoryTH ?? ""
        self.thName = data.thName ?? ""
        self.type = data.type ?? ""
    }
}

