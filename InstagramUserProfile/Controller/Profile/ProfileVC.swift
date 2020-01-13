//
//  ViewController.swift
//  InstagramUserProfile
//
//  Created by Ibrahim Salah on 10/3/19.
//  Copyright © 2020 Socyle. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    var profileVCView : ProfileVCView {
        return view as! ProfileVCView
    }
    
    var user:User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupProfileCollectionView()
        // Suppose we have a network calling
        user = fetchUserInfo()
    }
    
}

