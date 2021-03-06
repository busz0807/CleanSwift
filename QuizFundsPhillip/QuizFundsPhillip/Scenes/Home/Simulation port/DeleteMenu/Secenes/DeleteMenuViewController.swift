//
//  DeleteMenuViewController.swift
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

protocol DeleteMenuDisplayLogic: class {
    func displayfetchHistory(viewModel: DeleteMenu.FetchHistoryData.ViewModel)
    func displayfetchfundscode(viewModel: DeleteMenu.FetchFundsID.ViewModel)
    func displaydeleteorder(viewModel: DeleteMenu.DeleteOrderNo.ViewModel)
    func displaydeletefcode(viewModel: DeleteMenu.DeleteFcode.ViewModel)
}

class DeleteMenuViewController: UIViewController, DeleteMenuDisplayLogic
{
    @IBAction func btnDeleteFunds(_ sender: Any) {
        let createMenu = UIAlertController(title: nil, message: "Action using", preferredStyle: .actionSheet)
        let CreAteAction = UIAlertAction(title: "Delete", style: .default, handler: {(_: UIAlertAction) -> Void in
            self.dodeletefcode()
            
            self.tableView.reloadData()
        })
      
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        createMenu.addAction(CreAteAction)
        createMenu.addAction(cancelAction)
        self.present(createMenu, animated: true, completion: nil)
        doFetchFundsId()
        self.tableView.reloadData()
    }
    @IBAction func btnback(_ sender: Any) {
        router?.backtoPagePreview()
    }
    @IBOutlet weak var tableView: UITableView!
    var fcode = ""
    var portNo = 0
    var getHistory: GetHistoryModel?
    var interactor: DeleteMenuBusinessLogic?
  var router: (NSObjectProtocol & DeleteMenuRoutingLogic & DeleteMenuDataPassing)?

  // MARK: Object lifecycle
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    setup()
  }
  
  required init?(coder aDecoder: NSCoder)
  {
    super.init(coder: aDecoder)
    setup()
  }
  
  // MARK: Setup
  
  private func setup()
  {
    let viewController = self
    let interactor = DeleteMenuInteractor()
    let presenter = DeleteMenuPresenter()
    let router = DeleteMenuRouter()
    viewController.interactor = interactor
    viewController.router = router
    interactor.presenter = presenter
    presenter.viewController = viewController
    router.viewController = viewController
    router.dataStore = interactor
  }
  
  // MARK: Routing
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?)
  {
    if let scene = segue.identifier {
      let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
      if let router = router, router.responds(to: selector) {
        router.perform(selector, with: segue)
      }
    }
  }
  
  // MARK: View lifecycle
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    
    doFetchFundsId()
  }
  
  // MARK: Do something
  
  //@IBOutlet weak var nameTextField: UITextField!
  
    func dofetchHistory(portNo: Int, fcode: String)
  {
    let request = DeleteMenu.FetchHistoryData.Request(username: "bookling01", portno: self.portNo, fcode: self.fcode)
    interactor?.dofetchHistory(request: request)
    self.tableView.reloadData()
  }
  
    func displayfetchHistory(viewModel: DeleteMenu.FetchHistoryData.ViewModel)
  {
   
        self.getHistory = viewModel.getHistory
        print("Data", self.getHistory?.Data)
        self.tableView.reloadData()
  }
    func dodeleteorder(orderno: Int) {
      let request = DeleteMenu.DeleteOrderNo.Request(delflag: "O", username: "bookling01", portno: self.portNo, channel: "PI", ordno:  orderno)
      interactor?.dodeleteorder(request: request)
    }
    
    func displaydeleteorder(viewModel: DeleteMenu.DeleteOrderNo.ViewModel) {
//        print("err", viewModel.error)
//        print("Message", viewModel.delorder?.Message ?? "Success")
    }
    func dodeletefcode() {
      let request = DeleteMenu.DeleteFcode.Request(delflag: "F", username: "bookling01", portno: self.portNo, channel: "PI", fcode: self.fcode)
      interactor?.dodeletefcode(request: request)
    }
    func displaydeletefcode(viewModel: DeleteMenu.DeleteFcode.ViewModel){
//        print("err", viewModel.error)
//        print("Message", viewModel.delorder?.Message ?? "Success")
    }
    func doFetchFundsId() {
    let request = DeleteMenu.FetchFundsID.Request()
    interactor?.doFetchFundsId(request: request)
    
    }
    func displayfetchfundscode(viewModel: DeleteMenu.FetchFundsID.ViewModel) {
//        print("fundscodeID", viewModel.fcode)
//        print("portNo", viewModel.portNo)
        self.fcode =  viewModel.fcode
        self.portNo =  viewModel.portNo
        dofetchHistory(portNo:  self.portNo , fcode: self.fcode)
        self.tableView.reloadData()
    }
}
extension DeleteMenuViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.getHistory?.Data.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DeleteOrderNoViewCell", for: indexPath) as? DeleteOrderNoViewCell
        cell?.datagetHistory = self.getHistory?.Data[indexPath.row]
        cell?.number = indexPath.row
        cell?.delegate = self
        cell?.index = indexPath
        return cell!
    }
    
 
}
extension DeleteMenuViewController: CellDelegagte {
    func CellbtnTap(index: IndexPath, number: Int) {
        
        print("data",self.getHistory?.Data[number].orderno ?? 0)
        let createMenu = UIAlertController(title: nil, message: "Action using", preferredStyle: .actionSheet)
        let CreAteAction = UIAlertAction(title: "Delete", style: .default, handler: {(_: UIAlertAction) -> Void in
            self.dodeleteorder(orderno: self.getHistory?.Data[number].orderno ?? 0)
//            print("\(index)>>\(self.getHistory?.Data[number].fcode ?? "")")
//            print("\(index)>>\(self.getHistory?.Data[number].orderno ?? 0)")
//            let indexss = index
            self.getHistory?.Data.remove(at: number)
            
            let indexs = IndexPath(indexes: index)
//            print("indexs",indexs)
            self.tableView.deleteRows(at: [indexs], with: .fade)
            self.tableView.reloadData()
        })
      
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        createMenu.addAction(CreAteAction)
        createMenu.addAction(cancelAction)
        self.present(createMenu, animated: true, completion: nil)
    
    }
}
