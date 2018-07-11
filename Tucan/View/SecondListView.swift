//
//  SecondListView.swift
//  Tucan
//
//  Created by Cat on 2/5/18.
//  Copyright © 2018 Midnight. All rights reserved.
//

import UIKit

extension UIImageView {
  
    func addBlurEffect() {
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(blurEffectView)
    }
}

class SecondListView: UIView {
    
    private var tucanImage = UIImageView()
    private var tucanArticle = UILabel()
    private var tucanTitleLabel = UILabel()
    private var dateLabel = UILabel()
    private var tucanBackground = UIImageView()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        customize()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        customize()
    }
    
    convenience init() {
        self.init(frame: .zero)
      
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
        tucanBackground.contentMode = .scaleAspectFill
        
        tucanImage.contentMode = .scaleAspectFill
        tucanImage.layer.shadowColor = UIColor.black.cgColor
        tucanImage.layer.shadowOpacity = 7

        tucanTitleLabel.textAlignment = .left
        tucanTitleLabel.font = UIFont.systemFont(ofSize: 27)
        
        dateLabel.font = UIFont.systemFont(ofSize: 13)
        dateLabel.textAlignment = .left
        dateLabel.textColor = UIColor.darkText
        dateLabel.text = getDate()
        
        tucanArticle.numberOfLines = 0
        tucanArticle.textAlignment = .left
        tucanArticle.textColor = UIColor.darkText
        tucanArticle.font = UIFont.systemFont(ofSize: 13)
        
        self.addSubview(tucanBackground)
        self.addSubview(tucanImage)
        self.addSubview(tucanTitleLabel)
        self.addSubview(dateLabel)
        self.addSubview(tucanArticle)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        tucanBackground.frame = CGRect(x: 1,
                                       y: 1,
                                   width: UIScreen.main.bounds.width,
                                  height: UIScreen.main.bounds.height)
        tucanBackground.addBlurEffect()

        tucanImage.frame = CGRect(x: 8,
                                  y: 72,
                              width: self.bounds.size.width - 16,
                             height: self.bounds.size.width - 16 )
        
        tucanTitleLabel.frame = CGRect(x: 8,
                                       y: tucanImage.frame.maxY + 16,
                                   width: self.bounds.size.width - 16,
                                  height: 36)
        
        dateLabel.frame = CGRect(x: 8,
                                 y: tucanTitleLabel.frame.maxY + 8,
                             width: self.bounds.size.width - 16,
                            height: 14)
        
        tucanArticle.frame = CGRect(x: 8,
                                    y: tucanImage.frame.maxY + 25,
                                width: self.bounds.size.width - 16,
                               height: 236)
    }
    
    func setData(image: UIImage, articleText: String) {
        self.tucanBackground.image = image
        self.tucanImage.image = image
        self.tucanArticle.text = articleText
        self.tucanTitleLabel.text = "Toucans Are An Amazing Birds"
    }
    
}
