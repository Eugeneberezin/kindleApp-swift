//
//  PageCell.swift
//  KindleLBTA
//
//  Created by Eugene Berezin on 7/1/19.
//  Copyright © 2019 Eugene Berezin. All rights reserved.
//

import UIKit

class PageCell: UICollectionViewCell {
    
    let textLable: UILabel = {
        let lable = UILabel()
        lable.text = "SOME TEXT FOR OUR LABEL SOME TEXT FOR OUR LABEL SOME TEXT FOR OUR LABEL SOME TEXT FOR OUR LABELSOME TEXT FOR OUR LABEL SOME TEXT FOR OUR LABEL SOME TEXT FOR OUR LABEL SOME TEXT FOR OUR LABEL SOME TEXT FOR OUR LABEL "
        
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.numberOfLines = 0
        return lable
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        addSubview(textLable)
        //textLable.frame = CGRect(x: 0, y: 0, width: 100, height: 200)
        textLable.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        textLable.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        textLable.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
        textLable.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

