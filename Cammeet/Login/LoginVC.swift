//
//  LoginVC.swift
//  Cammeet
//
//  Created by Goodnews on 2018. 5. 24..
//  Copyright © 2018년 TYLENOL. All rights reserved.
//

import UIKit

class LoginVC: YSViewController {
	
	/* MARK: - Data */
	
	/* MARK: - View */
	let dView = LoginView()
	
	override func setupViews() {
		super.setupViews()
		
		view = dView
	}
	
	/* MARK: - Controller */
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		for family: String in UIFont.familyNames
		{
			print("\(family)")
			for names: String in UIFont.fontNames(forFamilyName: family)
			{
				print("== \(names)")
			}
		}

		
	}
}

