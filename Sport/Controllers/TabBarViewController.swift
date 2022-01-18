//
//  TabBarViewController.swift
//  Sport
//
//  Created by Ivan on 13.01.2022.
//

import UIKit


class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpControllers()
    }
    
    
    private func setUpControllers() {
        guard let currentUserEmail = UserDefaults.standard.string(forKey: "email") else {
            return
        }
        
        //        let event = EventViewController()
        //        event.title = "Events"
        //MARK: EventTestViewController() - PROTOTYPE, change(uncomment) to EventViewController()
        let test = EventTestViewController()
        
        let profile = ProfileViewController(currentEmail: currentUserEmail)
        profile.title = "Profile"
        let more = MoreViewController()
        more.title = "Info"
        
        //        event.navigationItem.largeTitleDisplayMode = .always
        profile.navigationItem.largeTitleDisplayMode = .always

        
        //        let nav1 = UINavigationController(rootViewController: event)
        let nav1 = UINavigationController(rootViewController: test)
        let nav2 = UINavigationController(rootViewController: profile)
        let nav3 = UINavigationController(rootViewController: more)
        
        nav1.navigationBar.prefersLargeTitles = true
        nav2.navigationBar.prefersLargeTitles = true
        
        
        nav1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.circle"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Info", image: UIImage(systemName: "ellipsis"), tag: 3)
        
        
        if #available(iOS 15.0, *) {
            let appearance = UITabBarAppearance()
            appearance.backgroundColor = .secondarySystemBackground
            tabBar.tintColor = .systemBlue
            tabBar.standardAppearance = appearance
            tabBar.scrollEdgeAppearance = tabBar.standardAppearance
            
        }else {
            tabBar.barTintColor = .secondarySystemBackground
            tabBar.tintColor = .systemBlue
        }
        
        
        setViewControllers([nav1,nav2, nav3], animated: true)
    }
    
}
