//
//  DeleteMenuWorker.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 29/3/21.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit
import  Alamofire
import SwiftyJSON
class DeleteMenuWorker {
    typealias FecthGetHistoryDataCompletionHandler = (_ getHistory: GetHistoryModel?,_ error: Error?) -> ()
    func fecthGetHistoryData(username: String, portNo: Int, fcode: String, completionHandler: @escaping FecthGetHistoryDataCompletionHandler) {
        let router = Funds.getHistory.path
//        print("\(router)?username=\(username)&portNo=\(portNo)&portName=\(portName)&fcode=\(fcode)&ordtp=\(ordtp)&grsam=\(grsam)&units=\(units)&unprc=\(unprc)&unprc=\(unprc)&trndt=\(trndt)&status=\(status)&channel=\(channel)&realized=\(realized)")
//        let url = URL(string: "\(router)username=\(username)&portNo=\(portNo)" )!
//        var request = URLRequest(url: url)
//        request.httpMethod = "POST"
//        router, method: .post, parameters: ["username": username, "portNo": portNo, "fcode": fcode, "ordtp": ordtp, "grsam": grsam, "units": units, "unprc": unprc, "trndt":    trndt, "status": status, "channel": channel, "realized": realized]
        Alamofire.request(router, method: .post, parameters: ["username": username, "portNo": portNo, "fcode": fcode]).responseJSON { response in
            if response.error != nil {
                completionHandler(nil, response.error)
                return
            }
            
            if let data = response.data {
//                print("data>>", response.value)
                do {
                    let getHistoryDataModel = try JSONDecoder().decode(GetHistoryModel.self, from: data)
//                    print("getOrderModelData >> ", getHistoryDataModel)
                    completionHandler(getHistoryDataModel, nil)
                    
                } catch let error {
                    print("Failed to load: \(error.localizedDescription)")

                    completionHandler(nil, error)
                }
            }
        }
    
    }
    typealias FecthDeleteorderCompletionHandler = (_ deleteorder: DeleteModel?,_ error: Error?) -> ()
    func fecthdeltedata(DelFlag: String , username: String , portNo: Int, channel: String, ordno: Int, completionHandler: @escaping FecthDeleteorderCompletionHandler) {
        let router = Funds.deleteOrder.path
        Alamofire.request(router, method: .post, parameters: ["DelFlag": DelFlag,"username": username, "portno": portNo, "channel": channel, "ordno": ordno]).responseJSON { response in
            if response.error != nil {
                completionHandler(nil, response.error)
                return
            }
            
            if let data = response.data {
                print("data>>", response.value)
                do {
                    let deleteDataModel = try JSONDecoder().decode(DeleteModel.self, from: data)
//                    print("getOrderModelData >> ", getOrderModelData)
                    completionHandler(deleteDataModel, nil)
                    
                } catch let error {
                    print("Failed to load: \(error.localizedDescription)")

                    completionHandler(nil, error)
                }
            }
        }
    
    }
    typealias FecthDeleteFcodeCompletionHandler = (_ deleteorder: DeleteModel?,_ error: Error?) -> ()
    func fecthdeletefcode(DelFlag: String , username: String , portNo: Int, channel: String, fcode: String, completionHandler: @escaping FecthDeleteFcodeCompletionHandler) {
        let router = Funds.deleteOrder.path
        Alamofire.request(router, method: .post, parameters: ["DelFlag": DelFlag,"username": username, "portno": portNo, "channel": channel, "fcode": fcode]).responseJSON { response in
            if response.error != nil {
                completionHandler(nil, response.error)
                return
            }
            
            if let data = response.data {
                print("data>>", response.value)
                do {
                    let deleteDataModel = try JSONDecoder().decode(DeleteModel.self, from: data)
//                    print("getOrderModelData >> ", getOrderModelData)
                    completionHandler(deleteDataModel, nil)
                    
                } catch let error {
                    print("Failed to load: \(error.localizedDescription)")

                    completionHandler(nil, error)
                }
            }
        }
    
    }
}
