//
//  AppDelegate.swift
//  RottenTomatoes
//
//  Created by Khuong Pham on 11/9/15.
//  Copyright © 2015 Fantageek. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        let tabBarController = window!.rootViewController! as! UITabBarController

        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        // Movies
        let moviesVC = storyboard.instantiateViewControllerWithIdentifier("MediaList") as! MediaListViewController
        moviesVC.title = "Movies"
        moviesVC.tabBarItem.image = UIImage(named: "superman")?.imageWithRenderingMode(.AlwaysOriginal)
        moviesVC.mediaType = .Movie
        let moviesNC = UINavigationController(rootViewController: moviesVC)
        moviesNC.navigationBar.barTintColor = UIColor.blackColor().colorWithAlphaComponent(0.5)
        moviesNC.navigationBar.tintColor = UIColor.yellowColor()
        moviesNC.navigationBar.barStyle = UIBarStyle.Black
        moviesNC.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.redColor()]

        //DVDs
        let dvdsVC = storyboard.instantiateViewControllerWithIdentifier("MediaList") as! MediaListViewController
        dvdsVC.title = "DVDs"
        dvdsVC.tabBarItem.image = UIImage(named: "hulk")?.imageWithRenderingMode(.AlwaysOriginal)
        dvdsVC.mediaType = .DVD
        let dvdsNC = UINavigationController(rootViewController: dvdsVC)
        dvdsNC.navigationBar.barTintColor = UIColor.blackColor().colorWithAlphaComponent(0.5)
        dvdsNC.navigationBar.tintColor = UIColor.yellowColor()
        dvdsNC.navigationBar.barStyle = UIBarStyle.Black
        dvdsNC.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.redColor()]


        tabBarController.viewControllers = [moviesNC, dvdsNC]
        tabBarController.tabBar.barTintColor = UIColor.blackColor().colorWithAlphaComponent(0.5)
        window?.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

