//
//  UNNavigationController.swift
//  UneedGroups
//
//  Created by 郭常青 on 2017/8/29.
//  Copyright © 2017年 uneed. All rights reserved.
//

import UIKit

public class BaseNavigationController: UINavigationController, UIGestureRecognizerDelegate, UINavigationControllerDelegate {

    public override func viewDidLoad() {
        super.viewDidLoad()
        self.interactivePopGestureRecognizer?.delegate = self
        self.delegate = self
    }

    public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    public override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return .portrait
    }

    public override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return [.portrait]
    }
    
    public override var shouldAutorotate: Bool {
        return true
    }

    @discardableResult
    public override func popViewController(animated: Bool = true) -> UIViewController? {
        if self.viewControllers.count > 1 {
            return super.popViewController(animated: animated)
        } else {
            self.dismiss(animated: animated, completion: nil)
            return nil
        }
    }
}
