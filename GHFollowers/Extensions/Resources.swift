//
//  Resources.swift
//  GHFollowers
//
//  Created by Marco Mascorro on 9/10/22.
//

import UIKit


class TabBarHelper {
    
    static let shared = TabBarHelper()
    
    
    //Setting up my function so that i settup my tab view items
    func templateNavController(_ title: String,image: String, rootviewcontroller: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootviewcontroller)
        // this is my tab item image
        nav.tabBarItem.image =  UIImage(systemName: image)
        
        nav.navigationBar.barTintColor = .white
        
        nav.tabBarItem.title = title
        
        
        //setting up my apperance to my navigation tab bar
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        
        //setting up my background color to my tab bar so text can be more visible
        appearance.backgroundColor = .white
        
        //Adding my appearance to my navigation controller so that everything can be visible
        nav.navigationBar.standardAppearance = appearance
        nav.navigationBar.scrollEdgeAppearance = nav.navigationBar.standardAppearance
        
        return nav
    }
    
    
    func makeTabController()-> UITabBarController {
        let searchNC = templateNavController("Home",image: "house", rootviewcontroller: SearchVC())
        let FavoritesVC = templateNavController("Favorites", image: "heart", rootviewcontroller: FavoritesVC())
        
        let tabbar = UITabBarController()
        UITabBar.appearance().backgroundColor = .white
        //Setting up my tabbar background color, i must do this or else the tabbar will be transparent
        UITabBar.appearance().tintColor = .systemGreen
        
        tabbar.viewControllers = [searchNC, FavoritesVC]
        
       
        //setting up the tint color of my tabbar items, must do this or else the default color will be blue
        UITabBar.appearance().tintColor = .black
        
        return tabbar
    }

    
    
    
}
