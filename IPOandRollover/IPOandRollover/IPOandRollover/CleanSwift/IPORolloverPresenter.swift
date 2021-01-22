//
//  IPORolloverPresenter.swift
//  IPOandRollover
//
//  Created by BUSSNQ TH on 21/1/21.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol IPORolloverPresentationLogic
{
    func FetchIPORollover(ipoRolloverData: [IPORolloverData])
}

class IPORolloverPresenter: IPORolloverPresentationLogic {
    weak var viewController: IPORolloverDisplayLogic?
    
    func FetchIPORollover(ipoRolloverData : [IPORolloverData]) {
        
        viewController?.displayIPORollove(ipoRolloverData: ipoRolloverData)
    }
    
    
    
 
  

}

