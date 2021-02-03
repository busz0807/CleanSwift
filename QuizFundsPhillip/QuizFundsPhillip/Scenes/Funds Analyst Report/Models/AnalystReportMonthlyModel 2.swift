//
//  AnalystReportMonthlyModel.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 28/1/21.
//

import Foundation
struct AnalystReportMonthlyModel:  Codable {
    var HeadlineEn: String?
    var HeadlineTh: String?
    var lastUpdate: String?
    var name: String?
    var fileUrl : String?

    }


struct FundsAnalystReportsModels:  Codable {
    var IPO: [IPOsModel]
    var Weekly: [WeeklysModel]
    var Monthly:[MonthlysModel]
    var AnalystTalk: [AnalystTalksModels]
    }
struct IPOsModel: Codable {
   
    var HeadlineEn: String?
    var HeadlineTh: String?
    var lastUpdate: String?
    var name: String?
    var fileUrl : String?
}

struct WeeklysModel: Codable {
   
    var HeadlineEn: String?
    var HeadlineTh: String?
    var lastUpdate: String?
    var name: String?
    var fileUrl : String?
}


struct MonthlysModel: Codable {
   
    var HeadlineEn: String?
    var HeadlineTh: String?
    var lastUpdate: String?
    var name: String?
    var fileUrl : String?
}


struct AnalystTalksModels: Codable {
   
    var Screen: String?
    var Title:String?
    var en_title: String?
    var en_url: String?
    var lastUpdate: String?
    var url: String?

}
