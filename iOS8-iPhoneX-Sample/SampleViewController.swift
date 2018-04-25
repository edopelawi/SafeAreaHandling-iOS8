//
//  SampleViewController.swift
//  iOS8-iPhoneX-Sample
//
//  Created by Ricardo Pramana Suranta on 25/04/18.
//  Copyright © 2018 Ice House. All rights reserved.
//

import UIKit

final class SampleViewController: UIViewController {

	@IBOutlet private weak var bottomConstraint: NSLayoutConstraint!
	@IBOutlet private weak var topConstraint: NSLayoutConstraint!
	@IBOutlet private weak var trailingConstraint: NSLayoutConstraint!
	@IBOutlet private weak var leadingConstraint: NSLayoutConstraint!
	
	override func viewDidLoad() {
        super.viewDidLoad()
		configureConstraints()
    }

	override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
		super.viewWillTransition(to: size, with: coordinator)
		
		coordinator.animate(alongsideTransition: { [weak self] context in
			
			self?.configureConstraints()
			
		}, completion: nil)
	}
	
	// MARK: - Private methods
	
	private func configureConstraints() {
		
		let appDelegate = UIApplication.shared.delegate
		
		guard let areaInset = appDelegate?.window??.universalAreaInsets else {
			return
		}
		
		trailingConstraint.constant = areaInset.left
		leadingConstraint.constant = areaInset.right
		
		bottomConstraint.constant = areaInset.bottom
		topConstraint.constant = areaInset.top
	}
}
