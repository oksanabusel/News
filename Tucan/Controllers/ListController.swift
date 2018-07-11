//
//  ListController.swift
//  Tucan
//
//  Created by Cat on 2/3/18.
//  Copyright © 2018 Midnight. All rights reserved.
//

import UIKit

class ListController: UIViewController, UITableViewDelegate, ListViewDelegate {
    
    private var listView = ListView()
    
    override func loadView() {
        self.view = listView
//      navigationItem.title = "NEWS"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listView.delegate = self
        listView.setData(data: Model.myData())
  }
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
    
    func didTapCell(index: Int) {
        let destinationController = SecondScreenController()
        let destinationView = destinationController.view as! SecondListView
        let image = Model.articlesData[index].image
        let text = Model.articlesData[index].text
        destinationView.setData(image: image, articleText: text)

        self.navigationController?.pushViewController(destinationController, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
  
}
