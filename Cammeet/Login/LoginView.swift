//
//  LoginView.swift
//  Cammeet
//
//  Created by Goodnews on 2018. 5. 24..
//  Copyright © 2018년 TYLENOL. All rights reserved.
//

import UIKit

class LoginView: YSView {
	
	
	// View: Background
	
	let backImgView = UIImageView(image: nil).then {
		$0.contentMode = .scaleAspectFill
	}
	let backView = UIView().then {
		$0.alpha = 0.7
		$0.backgroundColor = .black
	}
	
	// View: title
	
	let titleLabel = UILabel().then {
		$0.text = "캠팅"
		$0.font = UIFont(name: "BMDoHyeon-OTF", size: 48)
		$0.textColor = .white
	}
	
	let subtitleLabel = UILabel().then {
		$0.text = "모여라 대학교 캠퍼스 과팅!"
		$0.font = UIFont(name: "BMDoHyeon-OTF", size: 18)
		$0.textColor = .white
		$0.alpha = 0.5
	}
	
	// View: UI for login
	
	let phoneTF = UITextField().then {
		$0.placeholder = "휴대전화번호"
		$0.backgroundColor = UIColor.white.withAlphaComponent(0.43)
		$0.layer.cornerRadius = 8
	}
	
	let loginButton = UIButton().then {
		$0.setTitle("로그인", for: .normal)
		$0.backgroundColor = .white
		$0.setTitleColor(.black, for: .normal)
		$0.layer.cornerRadius = 8
		$0.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .medium)
	}
	
	override func setupView() {
		super.setupView()
		
		addSubviews(backImgView, backView, titleLabel, subtitleLabel, phoneTF, loginButton)
		
		backImgView.snp.remakeConstraints { make -> Void in
			make.edges.equalTo(self)
		}
		
		backView.snp.remakeConstraints { make -> Void in
			make.edges.equalTo(self)
		}
		
		titleLabel.snp.remakeConstraints { make -> Void in
			make.centerX.equalTo(subtitleLabel)
			make.bottom.equalTo(subtitleLabel.snp.top).offset(-24)
		}
		
		subtitleLabel.snp.remakeConstraints { make -> Void in
			make.center.equalTo(self)
		}
		
		loginButton.snp.remakeConstraints { make -> Void in
			make.bottom.equalTo(safeAreaLayoutGuide).offset(-90)
			make.centerX.equalTo(self)
			make.size.equalTo(CGSize(width: 251, height: 40))
		}
		
		phoneTF.snp.remakeConstraints { make -> Void in
			make.bottom.equalTo(loginButton.snp.top).offset(-12)
			make.centerX.size.equalTo(loginButton)
		}


	}
}
