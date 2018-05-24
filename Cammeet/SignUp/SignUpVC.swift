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
		
		view = dView
	}
	
	/* MARK: - Controller */
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		self.title = "가입하기"
	}
	
	
}

