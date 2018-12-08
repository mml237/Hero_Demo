//
//  MainTabBarViewController.swift
//  Hero_Demo
//
//  Created by mml on 2018/12/7.
//  Copyright © 2018年 li.mingming. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let home = ViewController()
        let nav = BaseNavigationController.init(rootViewController: home)
        viewControllers = [nav]
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
