//
//  ListCell.swift
//  Tucan
//
//  Created by Cat on 2/5/18.
//  Copyright © 2018 Midnight. All rights reserved.
//

import UIKit

class ListCell: UITableViewCell {

    private var tucanImageView = UIImageView()
    private var tucanNameLabel = UILabel()
    private var tucanTitleLabel = UILabel()
    private var dateLabel = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        customize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        customize()
    }
    
    func getDate() -> String {
        let date = Date()
        let formater = DateFormatter()
        formater.dateFormat = "dd MMMM yyy"
        let result = formater.string(from: date)
        return result
    }
    
    private func customize() {
        self.backgroundColor = UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1.0)
        tucanImageView.contentMode = .scaleAspectFit
        
        tucanTitleLabel.font = UIFont.systemFont(ofSize: 15)
        tucanTitleLabel.font = UIFont.boldSystemFont(ofSize: 20.0)

        tucanTitleLabel.textAlignment = .center
        tucanTitleLabel.textColor = UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 1.0)
        
        dateLabel.font = UIFont.systemFont(ofSize: 13)
        dateLabel.textAlignment = .left
        dateLabel.textColor = UIColor.gray
        dateLabel.text = getDate()
        
        tucanNameLabel.font = UIFont.systemFont(ofSize: 13)
        tucanNameLabel.textAlignment = .left
        tucanNameLabel.textColor = UIColor(hue: 0, saturation: 0, brightness: 0.3, alpha: 1.0)
        
        self.addSubview(tucanImageView)
        self.addSubview(tucanTitleLabel)
        self.addSubview(dateLabel)
        self.addSubview(tucanNameLabel)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        tucanImageView.frame = CGRect(x: 8,
                                      y: 8,
                                      width: self.bounds.size.width - 16,
                                      height: self.bounds.size.width - 16 )
        
        tucanTitleLabel.frame = CGRect(x: 8,
                                      y: tucanImageView.frame.maxY + 8,
                                      width: self.bounds.size.width - 16,
                                      height: 36)
        
        dateLabel.frame = CGRect(x: 8,
                                       y: tucanTitleLabel.frame.maxY + 8,
                                       width: self.bounds.size.width - 16,
                                       height: 12)
        
        tucanNameLabel.frame = CGRect(x: 8,
                                      y: dateLabel.frame.maxY + 8,
                                      width: self.bounds.size.width - 16,
                                      height: 60)
        
         tucanNameLabel.numberOfLines = 4

    }
    
    func setData(image: UIImage, text: String) {
        tucanImageView.image = image
        tucanNameLabel.text = text
        tucanTitleLabel.text = "Toucans Are An Amazing Birds"
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        self.selectionStyle = .blue
    }
}
