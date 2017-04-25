//
//  TwitterCell.swift
//  TwitterJGCM
//
//  Created by JGCM on 2017/4/25.
//  Copyright © 2017年 JGCM. All rights reserved.
//

import LBTAComponents

class TwitterCell: DatasourceCell {
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "head")
        imageView.layer.cornerRadius = 5
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override func setupViews() {
        super.setupViews()
        addSubview(profileImageView)
        profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        
        self.backgroundColor = .white
    }
}
