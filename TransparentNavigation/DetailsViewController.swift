//
//  DetailsViewController.swift
//  TransparentNavigation
//
//  Created by Mike Mikina on 4/4/16.
//  Copyright © 2016 FDT. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    self.title = "Details"
  }
  
  override func viewWillAppear(animated: Bool) {
    self.setupView()
  }
  
  /**
   Transparency is achieved here by setting an empty UIImage as navigation bar background.
   */
  func setupView() {
    self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: .Default)
  }
  
}
