//
//  RoomCell.swift
//  Cammeet
//
//  Created by Goodnews on 2018. 6. 3..
//  Copyright © 2018년 TYLENOL. All rights reserved.
//

import UIKit
import SnapKit
import Then

class RoomCell: YSCollectionViewCell {
	let titleLabel = UILabel().then {
		$0.text = "잘 마시는 분들 위주로 받아요"
		$0.font = .systemFont(ofSize: 18, weight: .bold)
	}
	let descLabel = UILabel().then {
		$0.text = "현기대학교 윤수학과 동구학번"
		$0.font = .systemFont(ofSize: 14, weight: .bold)
		$0.textColor = .gray
	}
	
	override func setupView() {
		super.setupView()
		
		backgroundColor = .white
		layer.cornerRadius = 12
		
		addSubviews(titleLabel, descLabel)
		
		titleLabel.snp.remakeConstraints { make -> Void in
			make.top.equalTo(self).inset(22)
			make.left.right.equalTo(self).inset(20)
		}
		
		descLabel.snp.remakeConstraints { make -> Void in
			make.top.equalTo(titleLabel.snp.bottom)
			make.left.right.equalTo(titleLabel)
		}


	}
}
