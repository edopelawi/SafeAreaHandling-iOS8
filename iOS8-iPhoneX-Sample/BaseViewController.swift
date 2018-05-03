//
//  BaseViewController.swift
//  iOS8-iPhoneX-Sample
//
//  Created by Ricardo Pramana Suranta on 25/04/18.
//  Copyright © 2018 Ricardo Pramana Suranta. All rights reserved.
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
		updateEdgeConstraints()
	}
	
	override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
		super.viewWillTransition(to: size, with: coordinator)
		
		coordinator.animate(alongsideTransition: { [weak self] context in
			
			self?.updateEdgeConstraints()
			
		}, completion: nil)
	}
	
	// MARK: - Public methods
	
	/**
	Returns edge constraints for this instance. Override this method to make it work correctly.
	*/
	func viewEdgeConstraints() -> ViewControllerEdgeConstraints? {
		return nil
	}
	
	/**
	Updates the edge constraints taken from this `viewEdgeConstraints`.
	
	- warning: Please call this method should the navigation bar visibility gets changed.
	*/
	func updateEdgeConstraints() {
		
		let appDelegate = UIApplication.shared.delegate
		
		guard let areaInset = appDelegate?.window??.universalAreaInsets,
			let edgeConstraints = viewEdgeConstraints() else {
			return
		}
		
		let updatedInsets = updateInsetForNavigationBar(initialInsets: areaInset)
		edgeConstraints.configure(edgeInsets: updatedInsets)
	}
	
	// MARK: - Private methods
	
	private func updateInsetForNavigationBar(initialInsets: UIEdgeInsets) -> UIEdgeInsets {
		
		guard let navigationController = self.navigationController,
			!navigationController.isNavigationBarHidden else {
				return initialInsets
		}
		
		var newInsets = initialInsets
		
		let navigationBarFrame = navigationController.navigationBar.frame
		newInsets.top += navigationBarFrame.height + navigationBarFrame.origin.y
		
		return newInsets
	}
}
