//
//  HomeCVC.swift
//  Cammeet
//
//  Created by Goodnews on 2018. 6. 3..
//  Copyright © 2018년 TYLENOL. All rights reserved.
//

import UIKit

private let cellID = "camtingCellID"

class HomeCVC: YSCollectionViewController, UICollectionViewDelegateFlowLayout {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		collectionView?.register(RoomCell.self, forCellWithReuseIdentifier: cellID)
	}
	
	override func setupViews() {
		super.setupViews()
		
		collectionView?.backgroundColor = .groupTableViewBackground
	}
	
	// MARK: Collection View delegate & datasource
	
	override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 5
	}
	override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! RoomCell
		
		
		return cell
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize(width: 302, height: 150)
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
		return 20
	}
	
//	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//		return
//	}
}

