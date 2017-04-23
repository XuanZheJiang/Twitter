//
//  HomeDataSource.swift
//  TwitterJGCM
//
//  Created by JGCM on 2017/4/20.
//  Copyright © 2017年 JGCM. All rights reserved.
//

import LBTAComponents

class HomeDataSource: Datasource {
    
    let users: [User] = {
        let brianUser = User(name: "TEST", userName: "testtesttest", bioText: "some more bio testsome more bio testsome more bio test", profileImage: #imageLiteral(resourceName: "head"))
        let jxzUser = User(name: "JXZ", userName: "Xuanzhe Jiang", bioText: "some more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bio test", profileImage: #imageLiteral(resourceName: "follow"))
        let jxzUser1 = User(name: "JXZ", userName: "Xuanzhe Jiang", bioText: "some more bio testsome more bio testsome more bio testsome more bio testsome more bio tesome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bioome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bioome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more biotsome more bio testsome more bio testsome more bio test", profileImage: #imageLiteral(resourceName: "follow"))
        let jxzUser2 = User(name: "JXZ", userName: "Xuanzhe Jiang", bioText: "some more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bio test", profileImage: #imageLiteral(resourceName: "follow"))
        let jxzUser3 = User(name: "JXZ", userName: "Xuanzhe Jiang", bioText: "some more bio testsome more bio testsome more bio testsome more bio testsome more bioome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bio test", profileImage: #imageLiteral(resourceName: "follow"))
        let jxzUser4 = User(name: "JXZ", userName: "Xuanzhe Jiang", bioText: "some more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bio test", profileImage: #imageLiteral(resourceName: "follow"))
        let jxzUser5 = User(name: "JXZ", userName: "Xuanzhe Jiang", bioText: "some more bio testsome more bio e bio testsome more bioome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bioome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bioome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bioome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bioome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bioome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bioome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bioome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more biotsome more bio testsome more bio testsome more bio testsome more bio test", profileImage: #imageLiteral(resourceName: "follow"))
        let jxzUser6 = User(name: "JXZ", userName: "Xuanzhe Jiang", bioText: "some more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bio test", profileImage: #imageLiteral(resourceName: "follow"))
        let jxzUser7 = User(name: "JXZ", userName: "Xuanzhe Jiang", bioText: "some more bio testsome more bio testsome more bio testsome more bioome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bio test", profileImage: #imageLiteral(resourceName: "follow"))
        let jxzUser8 = User(name: "JXZ", userName: "Xuanzhe Jiang", bioText: "some more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bioome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bioome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bioome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bioome more bio testsome more bio testsome more bio testsome more bio testsome more bio testsome more bio test", profileImage: #imageLiteral(resourceName: "follow"))
        return [jxzUser, brianUser, jxzUser1, jxzUser2, jxzUser3, jxzUser4, jxzUser5, jxzUser6, jxzUser7, jxzUser8]
    }()
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return users.count
    }
    
}
