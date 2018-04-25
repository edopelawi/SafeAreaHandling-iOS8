//
//  BaseViewController.swift
//  iOS8-iPhoneX-Sample
//
//  Created by Ricardo Pramana Suranta on 25/04/18.
//  Copyright © 2018 Ice House. All rights reserved.
//

import UIKit

// Provides default XIB loading implementation for iOS 8.
class BaseViewController: UIViewController {

	/**
	Loads this view controller based on XIB file with same class name. Necessary for iOS 8 and below.
	*/
	init() {
		let bundle = Bundle(for: type(of: self))
		let nibName = String(describing: type(of: self))
		
		super.init(nibName: nibName, bundle: bundle)
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}
	
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
	
	// MARK: - Public methods
	
	/**
	Returns edge constraints for this instance. Override this method to make it work correctly.
	*/
	func viewEdgeConstraints() -> ViewControllerEdgeConstraints? {
		return nil
	}
	
	
	// MARK: - Private methods
	
	private func configureConstraints() {
		
		let appDelegate = UIApplication.shared.delegate
		
		guard let areaInset = appDelegate?.window??.universalAreaInsets,
			let edgeConstraints = viewEdgeConstraints() else {
			return
		}
		
		edgeConstraints.configure(edgeInsets: areaInset)		
	}
}
