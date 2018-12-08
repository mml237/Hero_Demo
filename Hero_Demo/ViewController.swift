//
//  ViewController.swift
//  Hero_Demo
//
//  Created by mml on 2018/12/7.
//  Copyright © 2018年 li.mingming. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        hero.isEnabled = true
        title = "ViewController"
        
        let btn = UIButton.init(frame: CGRect.init(x: 100, y: 200, width: 80, height: 50))
        view.addSubview(btn)
        btn.backgroundColor = .red
        btn.setTitle("to next", for: .normal)
        btn.hero.id = "btn"
        btn.addTarget(self, action: #selector(goNext), for: .touchUpInside)
    }

    @objc func goNext() {
        MyViewController.show(by: self)
    }

}

