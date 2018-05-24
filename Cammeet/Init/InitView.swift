//
//  InitView.swift
//  Cammeet
//
//  Created by Goodnews on 2018. 5. 24..
//  Copyright © 2018년 TYLENOL. All rights reserved.
//

import UIKit

class InitView: YSView {
	let titleLabel = UILabel().then {
		$0.text = "캠팅"
		$0.font = UIFont(name: "BMDoHyeon-OTF", size: 48)
//		$0.textColor = .white
	}
	
	let subtitleLabel = UILabel().then {
		$0.text = "모여라 대학교 캠퍼스 과팅!"
//		$0.textColor = .white
		$0.alpha = 0.5
		$0.font = UIFont(name: "BMDoHyeon-OTF", size: 18)
	}
	
	
	
	override func setupView() {
		super.setupView()
		
		addSubviews(titleLabel, subtitleLabel)
		
		subtitleLabel.snp.remakeConstraints { make -> Void in
			make.center.equalTo(self)
		}
		
		titleLabel.snp.remakeConstraints { make -> Void in
			make.centerX.equalTo(subtitleLabel)
			make.bottom.equalTo(subtitleLabel.snp.top).offset(-24)
		}

	}
}
