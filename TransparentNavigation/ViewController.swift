//
//  ViewController.swift
//  TransparentNavigation
//
//  Created by Mike Mikina on 4/3/16.
//  Copyright © 2016 FDT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    self.title = "Test"
  }
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    self.setupView()
  }
  
  /**
   Little animation is added here, is looks better when going back from transparent 
   nav bar. Navigation is fading in.
   */
  func setupView() {
    self.navigationController?.navigationBar.barStyle = UIBarStyle.Black
    self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
    self.navigationController?.navigationBar.setBackgroundImage(nil, forBarMetrics: .Default)
    self.navigationController?.navigationBar.barTintColor = UIColor.redColor()
    self.navigationController?.navigationBar.alpha = 0
    
    UIView.animateWithDuration(0.5) {
      self.navigationController?.navigationBar.alpha = 1
    }
  }


}

