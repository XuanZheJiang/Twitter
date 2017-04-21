//
//  Cells.swift
//  TwitterJGCM
//
//  Created by JGCM on 2017/4/20.
//  Copyright © 2017年 JGCM. All rights reserved.
//

import LBTAComponents

class UserHeader: DatasourceCell {
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "WHO TO FOLLOW"
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        addSubview(textLabel)
        textLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
    
    
    
}

class UserFooter: DatasourceCell {
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = UIColor(r: 61, g: 167, b: 244)
        label.text = "Show me more"
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        addSubview(textLabel)
        textLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}
