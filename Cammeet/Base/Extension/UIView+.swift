//
//  UIView+.swift
//  Cammeet
//
//  Created by Goodnews on 2018. 5. 24..
//  Copyright © 2018년 TYLENOL. All rights reserved.
//

import UIKit


extension UIView {
	
	
	/*
	여러 view를 한번에 add  / ex) self.view.addSubviews(titleLabel, logoImgView)	*/
	func addSubviews(_ views:UIView...){
		for view in views {
			self.addSubview(view)
		}
	}
}
