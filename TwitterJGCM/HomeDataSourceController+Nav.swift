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

        // 去掉导航黑线
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        let navSeparatorLineView = UIView()
        navSeparatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        view.addSubview(navSeparatorLineView)
        navSeparatorLineView.anchor(view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 1 / UIScreen.main.scale)
        
        let titleView = UIImageView(image: #imageLiteral(resourceName: "title_icon"))
        titleView.contentMode = .scaleAspectFit
        titleView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        self.navigationItem.titleView = titleView
    }
    
}
