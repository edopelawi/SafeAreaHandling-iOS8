//
//  SampleFullscreenViewController.swift
//  iOS8-iPhoneX-Sample
//
//  Created by Ricardo Pramana Suranta on 25/04/18.
//  Copyright © 2018 Ice House. All rights reserved.
//

import UIKit

final class SampleFullscreenViewController: BaseViewController {

	@IBOutlet private weak var bottomConstraint: NSLayoutConstraint!
	@IBOutlet private weak var topConstraint: NSLayoutConstraint!
	@IBOutlet private weak var trailingConstraint: NSLayoutConstraint!
	@IBOutlet private weak var leadingConstraint: NSLayoutConstraint!
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		title = "Fullscreen Page"
		configureConstraints()
    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		navigationController?.isNavigationBarHidden = true
	}

	override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
		super.viewWillTransition(to: size, with: coordinator)
		
		coordinator.animate(alongsideTransition: { [weak self] context in
			
			self?.configureConstraints()
			
		}, completion: nil)
	}
	
	// MARK: - Private methods
	
	@IBAction func navigateToNextPage(_ sender: Any) {
		
		let nextViewController = SampleBarScreenViewController()
		self.navigationController?.pushViewController(nextViewController, animated: true)
	}
	
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
