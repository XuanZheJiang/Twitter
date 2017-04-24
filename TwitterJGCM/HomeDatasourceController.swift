//
//  HomeDatasourceController.swift
//  TwitterJGCM
//
//  Created by JGCM on 2017/4/18.
//  Copyright © 2017年 JGCM. All rights reserved.
//

import LBTAComponents



class HomeDataSourceController: DatasourceController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationItems()
        
        let homeDataSource = HomeDataSource()
        self.datasource = homeDataSource
    }
    
    func setupNavigationItems() {
        let titleView = UIImageView(image: #imageLiteral(resourceName: "title_icon"))
        titleView.contentMode = .scaleAspectFit
        titleView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        self.navigationItem.titleView = titleView
        
        let followButton = UIButton(type: .system)
        followButton.setImage(#imageLiteral(resourceName: "follow"), for: .normal)
        followButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: followButton)
        
        let searchButton = UIButton(type: .system)
        searchButton.setImage(#imageLiteral(resourceName: "search"), for: .normal)
        searchButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        
        let composeButton = UIButton(type: .system)
        composeButton.setImage(#imageLiteral(resourceName: "write"), for: .normal)
        composeButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        
        navigationItem.rightBarButtonItems = [UIBarButtonItem.init(customView: composeButton), UIBarButtonItem.init(customView: searchButton)]
        
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
    }
    
    // cell间距
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if let user = self.datasource?.item(indexPath) as? User {
            
            let size = CGSize(width: view.frame.width - 12 - 50 - 12 - 2, height: 1000)
            
            let estimatedFrame = NSString(string: user.bioText).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: [NSFontAttributeName:UIFont.systemFont(ofSize: 15)], context: nil)
            return CGSize(width: view.frame.width, height: estimatedFrame.height + 66)
        }
        
        return CGSize(width: view.frame.width, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
}

