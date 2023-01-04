//
//  MainTabController.swift
//  InstagramFirestoreTutorial
//
//  Created by HA on 2023/01/04.
//

import UIKit

class MainTabController: UITabBarController {
    
    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewControllers()
        
    }
    //MARK: - Helpers

    func configureViewControllers(){  // constructor
        view.backgroundColor = .white
        tabBar.backgroundColor = .white
        
        let feed = FeedController()
        let search = SearchController()
        let imageSelector = ImageSelectorController()
        let notifications = NotificationController()
        let profile = ProfileController()
        
        viewControllers = [feed, search, imageSelector, notifications, profile]
        
    }
    
}

