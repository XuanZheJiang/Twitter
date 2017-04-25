//
//  HomeDataSourceController+Nav.swift
//  TwitterJGCM
//
//  Created by JGCM on 2017/4/25.
//  Copyright © 2017年 JGCM. All rights reserved.
//

import UIKit

extension HomeDataSourceController {
    
    func setupLeftNavItem() {
        let followButton = UIButton(type: .system)
        followButton.setImage(#imageLiteral(resourceName: "follow"), for: .normal)
        followButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: followButton)
    }
    
    func setupRightNavItems()  {
        let searchButton = UIButton(type: .system)
        searchButton.setImage(#imageLiteral(resourceName: "search"), for: .normal)
        searchButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        
        let composeButton = UIButton(type: .system)
        composeButton.setImage(#imageLiteral(resourceName: "write"), for: .normal)
        composeButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        
        navigationItem.rightBarButtonItems = [UIBarButtonItem.init(customView: composeButton), UIBarButtonItem.init(customView: searchButton)]
    }
    
    func setupTitleViewNav() {
        
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
        
        let titleView = UIImageView(image: #imageLiteral(resourceName: "title_icon"))
        titleView.contentMode = .scaleAspectFit
        titleView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        self.navigationItem.titleView = titleView
    }
    
}
