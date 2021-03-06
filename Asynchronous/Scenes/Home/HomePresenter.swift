//
//  HomePresenter.swift
//  Asynchronous
//
//  Created by Raymond Law on 2/22/18.
//  Copyright (c) 2018 Clean Swift LLC. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol HomePresentationLogic
{
  func presentVIPCycle(response: Home.VIPCycle.Response)
}

class HomePresenter: HomePresentationLogic
{
  weak var viewController: HomeDisplayLogic?
  
  // MARK: Use cases
  
  func presentVIPCycle(response: Home.VIPCycle.Response)
  {
    let viewModel = Home.VIPCycle.ViewModel(result: response.result)
    viewController?.displayVIPCycle(viewModel: viewModel)
  }
}
