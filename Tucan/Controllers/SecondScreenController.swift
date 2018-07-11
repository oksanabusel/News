//
//  SecondScreenController.swift
//  Tucan
//
//  Created by Cat on 2/5/18.
//  Copyright © 2018 Midnight. All rights reserved.
//

import UIKit

class SecondScreenController: UIViewController {
    
    let secondListView = SecondListView()
    
    override func loadView() {
        self.view = secondListView
        
        navigationItem.title = "The Most Popular"
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.default
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent
        let textAttributes = [NSAttributedStringKey.foregroundColor:UIColor.white]
        self.navigationController?.navigationBar.titleTextAttributes = textAttributes
    }
  
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let textAttributes = [NSAttributedStringKey.foregroundColor:UIColor.black]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
    }
  
}
