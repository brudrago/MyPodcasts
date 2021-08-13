//
//  MainTabBarController.swift
//  MyPodcasts
//
//  Created by Bruna Drago on 13/08/21.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBarStyle()
        setNavigationTitleStyle()
        
        viewControllers = [
            createNavigationController(for: FavoritesViewController(), title: "Favorites", image: UIImage(named: "favorites") ?? UIImage()),
            createNavigationController(for: SearchPodcastsViewController(), title: "Search", image: UIImage(named: "search") ?? UIImage()),
            createNavigationController(for: DownloadViewController(), title: "Download", image: UIImage(named: "downloads") ?? UIImage())
        ]
    }
    
    //MARK: - Private Functions
    
    fileprivate func createNavigationController(for rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        
        let navController = UINavigationController(rootViewController: rootViewController)
        
        rootViewController.navigationItem.title = title
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        return navController
    }
    
    private func setNavigationTitleStyle() {
        UINavigationBar.appearance().prefersLargeTitles = true
    }
    
    private func setTabBarStyle() {
        tabBar.tintColor = .purple
    }
}
