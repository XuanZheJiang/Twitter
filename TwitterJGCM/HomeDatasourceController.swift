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
        
        let homeDataSource = HomeDataSource()
        self.datasource = homeDataSource
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

