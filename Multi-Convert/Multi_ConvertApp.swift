//
//  Multi_ConvertApp.swift
//  Multi-Convert
//
//  Created by Kyle Ferrigan on 9/20/22.
//

import SwiftUI

@main
struct Multi_ConvertApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
			.onReceive(NotificationCenter.default.publisher(for: UIScene.willConnectNotification)) { _ in
				#if targetEnvironment(macCatalyst)
				// prevent macOS window from being resized
				  UIApplication.shared.connectedScenes.compactMap { $0 as? UIWindowScene }.forEach { windowScene in
					windowScene.sizeRestrictions?.maximumSize = CGSize(width: 500, height: 500)
					windowScene.sizeRestrictions?.minimumSize = CGSize(width: 500, height: 500)
				}
				#endif
			}
		}
    }
}
