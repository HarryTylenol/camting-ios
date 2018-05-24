//
//  SignUpView.swift
//  Cammeet
//
//  Created by Goodnews on 2018. 5. 24..
//  Copyright © 2018년 TYLENOL. All rights reserved.
//

import UIKit

class SignUpView: YSScrollView {
	
	let profileImgButton = UIButton().then {
		$0.backgroundColor = .gray
		$0.layer.cornerRadius = 46
	}
	
	let nameTF = UITextField().then {
		$0.placeholder = "이름"
		$0.backgroundColor = .lightGray
	}
	
	let maleButton = UIButton().then {
		$0.backgroundColor = .lightGray
		$0.setTitle("남자", for: .normal)
	}
	
	let femaleButton = UIButton().then {
		$0.backgroundColor = .lightGray
		$0.setTitle("여자", for: .normal)
	}
	
	let treatyLabel = UILabel().then {
		$0.text = """
		프로필 사진을 제외한 나머지 정보는 가입후에 수정할 수 없으니 신중하게 선택해주시기 바랍니다.
		
		잘못된 정보로 가입 시 서비스 이용에 지장이생길 수 있습니다.
		"""
		
		$0.font = UIFont.systemFont(ofSize: 14, weight: .medium)
		$0.alpha = 0.2
		$0.numberOfLines = 0
	}
	
	// MARK: Elements
	override func setupView() {
		super.setupView()
		
		self.contentView.addSubviews(profileImgButton, nameTF, maleButton, femaleButton, treatyLabel)
	
		profileImgButton.snp.remakeConstraints { make -> Void in
			make.top.equalTo(contentView).offset(64)
			make.size.equalTo(92)
			make.left.equalTo(readableContentGuide).offset(20)
		}

		nameTF.snp.remakeConstraints { make -> Void in
			make.left.right.equalTo(readableContentGuide).inset(20)
			make.top.equalTo(profileImgButton.snp.bottom).offset(24)
			make.height.equalTo(87)
		}
		
		maleButton.snp.remakeConstraints { make -> Void in
			make.top.equalTo(nameTF.snp.bottom).offset(24)
			make.left.equalTo(nameTF)
			make.size.equalTo(CGSize(width: 66, height: 40))
		}
		
		femaleButton.snp.remakeConstraints { make -> Void in
			make.top.size.equalTo(maleButton)
			make.left.equalTo(maleButton.snp.right).offset(10)
		}
		
		treatyLabel.snp.remakeConstraints { make -> Void in
			make.left.right.equalTo(nameTF)
			make.top.equalTo(maleButton.snp.bottom).offset(20)
			make.bottom.equalTo(contentView).offset(-24)
		}




	}
}
