//
//  SignUpVC.swift
//  Cammeet
//
//  Created by Goodnews on 2018. 5. 24..
//  Copyright © 2018년 TYLENOL. All rights reserved.
//

import UIKit

class SignUpVC: YSViewController {
	
	/* MARK: - Data */
	
	/* MARK: - View */
	let dView = SignUpView()
	
	override func setupViews() {
		super.setupViews()
		
		setupBars()
		
		view = dView
	}
	
	/* MARK: - Controller */
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
	}
	
	fileprivate func setupBars() {
		self.title = "가입하기"

		
		// setup Toolbar
		self.navigationController?.isToolbarHidden = false
		let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
		let signUpButton = UIBarButtonItem(title: "가입하기", style: .plain, target: self, action: #selector(didTapSignUp))
		self.toolbarItems = [space, signUpButton]
	}
	
	@objc fileprivate func didTapSignUp() {
		print("---SignUp")
	}
}

