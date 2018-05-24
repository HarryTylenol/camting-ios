//
//  InitVC.swift
//  Cammeet
//
//  Created by Goodnews on 2018. 5. 24..
//  Copyright © 2018년 TYLENOL. All rights reserved.
//

import UIKit

class InitVC: YSViewController {
	
	let dView = InitView()
	
	override func setupViews() {
		super.setupViews()
		self.view = dView
	}
}
