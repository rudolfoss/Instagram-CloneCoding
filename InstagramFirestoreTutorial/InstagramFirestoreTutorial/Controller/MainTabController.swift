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
        
        let layout = UICollectionViewFlowLayout()
        
        let feed = templateNavigationController(unselectedImage: UIImage(imageLiteralResourceName: "home_unselected"), selectedImage: UIImage(imageLiteralResourceName: "home_selected"), rootViewController: FeedController(collectionViewLayout: layout))
        
        let search = templateNavigationController(unselectedImage: UIImage(imageLiteralResourceName: "search_selected"), selectedImage: UIImage(imageLiteralResourceName: "search_unselected"), rootViewController: SearchController())
        
        let imageSelector = templateNavigationController(unselectedImage: UIImage(imageLiteralResourceName: "plus_unselected"), selectedImage: UIImage(imageLiteralResourceName: "plus_unselected"), rootViewController: ImageSelectorController())
        
        let notifications = templateNavigationController(unselectedImage: UIImage(imageLiteralResourceName: "like_selected"), selectedImage: UIImage(imageLiteralResourceName: "like_unselected"), rootViewController: NotificationController())
        
        let profile = templateNavigationController(unselectedImage: UIImage(imageLiteralResourceName: "profile_selected"), selectedImage: UIImage(imageLiteralResourceName: "profile_unselected"), rootViewController: ProfileController())
        
        viewControllers = [feed, search, imageSelector, notifications, profile]
        
        tabBar.tintColor = .black
    }
    
    // 이미지를 네비게이션 컨트롤러 내부에 포함하는 뷰 컨트롤러
    func templateNavigationController(unselectedImage: UIImage, selectedImage: UIImage,rootViewController:UIViewController) -> UINavigationController{
        
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = unselectedImage
        nav.tabBarItem.selectedImage = selectedImage
        nav.navigationBar.tintColor = .black
        
        return nav
    }
    
}

