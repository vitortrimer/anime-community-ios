//
//  MainViewController.swift
//  Anime
//
//  Created by Vitor Trimer on 11/06/22.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupTabBar()
    }
    
    
    private func hideNavigationBarLine(_ navigationBar: UINavigationBar) {
        let img = UIImage()
        navigationBar.shadowImage = img
        navigationBar.setBackgroundImage(img, for: .default)
        navigationBar.isTranslucent = true
    }
}


// MARK: - Configs
extension MainViewController {
    func setupViews() {
        let homeVC = HomeViewController()
        let searchVC = SearchViewController()
        let profileVC = ProfileViewController()
        let postsVC = PostsViewController()
        
        homeVC.setTabBarImage(imageName: "house", title: "Home")
        searchVC.setTabBarImage(imageName: "magnifyingglass", title: "Search")
        profileVC.setTabBarImage(imageName: "person", title: "Profile")
        postsVC.setTabBarImage(imageName: "square.3.stack.3d", title: "Posts")
        
        let HomeNC = UINavigationController(rootViewController: homeVC)
        let searchNC = UINavigationController(rootViewController: searchVC)
        let profileNC = UINavigationController(rootViewController: profileVC)
        let postsNC = UINavigationController(rootViewController: postsVC)
        
        HomeNC.navigationBar.barTintColor = .black
        hideNavigationBarLine(HomeNC.navigationBar)
        
        let tabBarList = [HomeNC, searchNC, postsNC, profileNC]
        viewControllers = tabBarList
    }
    
    func setupTabBar() {
        tabBar.tintColor = .systemOrange
        tabBar.barStyle = .black
        tabBar.isTranslucent = false
    }
}


// MARK: - Remove later

class SearchViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPurple
    }
}


class ProfileViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
    }
}


class PostsViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
    }
}

