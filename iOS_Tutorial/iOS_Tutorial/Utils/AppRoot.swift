//
//  AppRoot.swift
//  iOS_Tutorial
//
//  Created by Melike Büşra Ayhan on 14.07.2021.
//

import Foundation
import UIKit

public class DefaultNavigation: UINavigationController {
    var isDark = false {
        didSet {
            
            setNeedsStatusBarAppearanceUpdate()
        }
    }
    var hide = true {
        didSet {
            self.navigationBar.setBackgroundImage(UIImage(), for: .default)
            self.navigationBar.backgroundColor  = UIColor.clear
            self.navigationBar.shadowImage = UIImage()
        }
    }
    public override var preferredStatusBarStyle: UIStatusBarStyle {
        return isDark ? .lightContent : .default
    }
}
class AppRoot {
    private let window : UIWindow?
    init(window: UIWindow ) {
        self.window = window
    }
    
    func setApp() {
         
        let root = DefaultNavigation(rootViewController: Splash())
        root.hide = true
        root.isDark  = false
        window!.rootViewController = root
        window!.makeKeyAndVisible()
    }
}
