//
//  MainTabBarVC.swift
//  Cammeet
//
//  Created by Goodnews on 2018. 6. 3..
//  Copyright © 2018년 TYLENOL. All rights reserved.
//

import UIKit

class MainTabBarVC: UITabBarController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		
		UINavigationBar.appearance().prefersLargeTitles = true
		
		tabBar.tintColor = .warmPink
		setupViewControllers()
		
	}
	
	func setupViewControllers() {
		let layout = UICollectionViewFlowLayout()
		let homeController = HomeCVC(collectionViewLayout: layout)
		viewControllers = [
			generateNavigationController(for: homeController, title: "오늘의 캠팅", img: #imageLiteral(resourceName: "tabIconHome"))
//			generateNavigationController(for: PodcastsSearchController(), title: "오늘의 캠팅", img: nil),
//			generateNavigationController(for: favoritesController, title: "채팅", img: nil),
//
//			generateNavigationController(for: DownloadsController(), title: "Downloads", img: nil)
		]
	}
	
	// MARK: - Helper Functions
	
	fileprivate func generateNavigationController(for rootVC: UIViewController, title: String, img: UIImage) -> UIViewController {
		let navController = UINavigationController(rootViewController: rootVC)
		rootVC.title = title
		navController.tabBarItem.title = title
		navController.tabBarItem.image = img
		
		return navController
	}
	
}
