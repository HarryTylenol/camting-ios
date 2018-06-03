//
//  YSCollectionViewController.swift
//  Cammeet
//
//  Created by Goodnews on 2018. 6. 3..
//  Copyright © 2018년 TYLENOL. All rights reserved.
//

import UIKit

class YSCollectionViewController: UICollectionViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		setupViews()
	}
	
	func setupViews() {
		collectionView?.backgroundColor = .white
		
		self.navigationController?.navigationBar.isTranslucent = false
	}
}
