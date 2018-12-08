//
//  RootViewController.swift
//  Hero_Demo
//
//  Created by mml on 2018/12/7.
//  Copyright © 2018年 li.mingming. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let tab = MainTabBarViewController()
        addChild(tab)
        view.addSubview(tab.view)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
