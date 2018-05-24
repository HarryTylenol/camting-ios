//
//  YSScrollView.swift
//  PopcornMate
//
//  Created by Goodnews on 2018. 1. 16..
//  Copyright © 2018년 Depromeet. All rights reserved.
//

import UIKit
import Then
import SnapKit

class YSScrollView: YSView {
	let scrollView = UIScrollView().then {
		$0.bounces = false
		$0.keyboardDismissMode = .onDrag
	}
	var contentView = UIView()
	
	override func setupView() {
		super.setupView()
		
		addSubview(scrollView)
		scrollView.addSubview(contentView)
		
		scrollView.snp.remakeConstraints { make -> Void in
			make.top.equalTo(self)
			make.left.right.equalTo(self)
			make.bottom.equalTo(self)
		}
		
		contentView.snp.remakeConstraints { make -> Void in
			make.top.bottom.equalTo(scrollView)
			make.left.right.equalTo(self)
		}
	}
}
