//
//  SecondPresenter.swift
//  ColorPop
//
//  Created by Raymond Law on 3/20/19.
//  Copyright (c) 2019 Clean Swift LLC. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol SecondPresentationLogic
{
  func presentBackgroundColor(response: Second.ChangeBackgroundColor.Response)
}

class SecondPresenter: SecondPresentationLogic
{
  weak var viewController: SecondDisplayLogic?
  
  // MARK: Change background color
  
  func presentBackgroundColor(response: Second.ChangeBackgroundColor.Response)
  {
    let viewModel = Second.ChangeBackgroundColor.ViewModel(color: response.color)
    viewController?.displayBackgroundColor(viewModel: viewModel)
  }
}
