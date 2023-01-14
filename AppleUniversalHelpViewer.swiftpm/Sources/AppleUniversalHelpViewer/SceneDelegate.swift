//
//  SceneDelegate.swift
//  
//
//  Created by Steven Troughton-Smith on 14/01/2023.
//

import UIKit
import AppleUniversalHelp

class SceneDelegate: COREHelpWindowSceneDelegate {

	func sceneDidBecomeActive(_ scene: UIScene) {
		setupHelpSystemHandler()
	}
	
	// MARK: - Help Menu (Mac)
	
	/*
	 This configures Help menu Spotlight search on macOS.
	 */
	
	var helpSearchHandler:COREHelpSearchSpotlightHandler? = nil

	func setupHelpSystemHandler() {
		#if targetEnvironment(macCatalyst)
		
		guard helpSearchHandler == nil else { return }
		
		let handler = COREHelpSearchSpotlightHandler(helpBundle:helpRootController.helpBundle)
		
		handler.actionHandler = { [weak self] page in
			self?.helpRootController.navigate(to: page)
		}
		
		handler.registerWithSystem()
		
		helpSearchHandler = handler
		#endif
	}
}
