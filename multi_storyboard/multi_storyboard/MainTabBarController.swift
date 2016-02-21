//
//  MainTabBarController.swift
//  multi_storyboard
//
//  Created by thinhvoxuan on 2/21/16.
//  Copyright © 2016 Thinh VoXuan. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        let firstStoryboard:UIStoryboard = UIStoryboard(name: "Players", bundle: nil)
        let secondStoryboard:UIStoryboard = UIStoryboard(name: "Guesture", bundle: nil)
        
        self.viewControllers = [
            firstStoryboard.instantiateInitialViewController()!,
            secondStoryboard.instantiateInitialViewController()!
        ]
    }
}
