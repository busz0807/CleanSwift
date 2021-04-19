//
//  NavListDb.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 5/4/21.
//

import Foundation
import RealmSwift

class NavListDb: Object {
    @objc dynamic var buy: Double = 0
    @objc dynamic var change: Double = 0
    @objc dynamic var changePercent: Double = 0
    @objc dynamic var date: String = ""
    @objc dynamic var fundCode: String = ""
    @objc dynamic var fundSize:  Double = 0
    @objc dynamic var nav:  Double = 0
    @objc dynamic var sell:  Double = 0
    @objc dynamic var switchIn:  Double = 0
    @objc dynamic var switchOut:  Double = 0
    
    override static func primaryKey() -> String? {
        return "fundCode"
    }
    
    convenience init(data: NavListModel) {
        self.init()
        
        self.buy = data.buy ?? 0
        self.change = data.change ?? 0
        self.changePercent = data.changePercent ?? 0
        self.date = data.date ?? ""
        self.fundCode = data.fundCode ?? ""
        self.fundSize = data.fundSize ?? 0
        self.nav = data.nav ?? 0
        self.sell = data.sell ?? 0
        self.switchIn = data.switchIn ?? 0
        self.switchOut = data.switchOut ?? 0
    }
}
