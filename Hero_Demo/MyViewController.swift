//
//  MyViewController.swift
//  Hero_Demo
//
//  Created by mml on 2018/12/7.
//  Copyright © 2018年 li.mingming. All rights reserved.
//

import UIKit
import Hero

class MyViewController: UIViewController {
    
    class func show(by controller: UIViewController) {
        let vc = MyViewController()
        vc.show(by: controller)
    }
    
    // MARK: - didn't excuted<##>
    deinit {
        print("deinit")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "MyViewController"
        
        let btn = UIButton.init(frame: CGRect.init(x: 100, y: 300, width: 100, height: 80))
        view.addSubview(btn)
        btn.backgroundColor = .green
        btn.hero.id = "btn"
        btn.setTitle("to back", for: .normal)
        btn.addTarget(self, action: #selector(goBack), for: .touchUpInside)
    }
    
    // MARK: show in this way
    private func show(by conroller: UIViewController) {
        let navi = BaseNavigationController(rootViewController: self)
        navi.modalPresentationStyle = .overFullScreen
        navi.navigationBar.backgroundColor = UIColor.white
        navigationController?.hero.isEnabled = true
        conroller.present(navi, animated: true, completion: nil)
    }

    @objc func goBack() {
        navigationController?.dismiss(animated: true, completion: nil)
    }
}
