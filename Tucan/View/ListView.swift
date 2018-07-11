//
//  ListView.swift
//  Tucan
//
//  Created by Cat on 2/3/18.
//  Copyright © 2018 Midnight. All rights reserved.
//

import UIKit

protocol ListViewDelegate {
    func didTapCell(index: Int)
}

class ListView: UIView, UITableViewDelegate, UITableViewDataSource  {
    
    var delegate: ListViewDelegate?
    
    private var tableView = UITableView()
    private var tableData: [(image: UIImage, text: String)] = []
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        customise()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func  customise() {
        self.backgroundColor = UIColor.black
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ListCell.self, forCellReuseIdentifier: "ListCell")
        
        self.addSubview(tableView)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    
        tableView.frame = CGRect(x: 0,
                                 y: 64,
                             width: self.bounds.size.width,
                            height: self.bounds.size.height - 64)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell", for: indexPath) as! ListCell
        cell.setData(image: tableData[indexPath.row].image,
                     text: tableData[indexPath.row].text)
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOpacity = 16
        cell.layer.shadowRadius = 7
        
        return cell
    }
   
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 530
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
         self.delegate?.didTapCell(index: indexPath.row)
    }
   
    func setData(data: [(image: UIImage, text: String)]) {
        tableData = data
        tableView.reloadData()
    }
  
}
