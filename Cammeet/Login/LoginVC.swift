//
//  LoginVC.swift
//  Cammeet
//
//  Created by Goodnews on 2018. 5. 24..
//  Copyright © 2018년 TYLENOL. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginVC: YSViewController {
	
	/* MARK: - Data */
	
	/* MARK: - View */
	let dView = LoginView()
	
	override func setupViews() {
		super.setupViews()
		
		dView.loginButton.addTarget(self, action: #selector(didTapLogin), for: .touchUpInside)
		
		view = dView
	}
	
	@objc private func didTapLogin() {
		guard let phoneString = dView.phoneTF.text else { return }
		let phoneNumber = "+82" + phoneString.dropFirst()
		
		PhoneAuthProvider.provider().verifyPhoneNumber(phoneNumber, uiDelegate: nil) { (verificationID, error) in
			if let error = error {
//				self.showMessagePrompt(error.localizedDescription)
				print("---PhoneAuth Error:", error.localizedDescription)
				return
			}
			// Sign in using the verificationID and the code sent to the user
			// ...
		}
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

