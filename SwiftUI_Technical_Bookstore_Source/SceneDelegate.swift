//
//  SceneDelegate.swift
//  SwiftUI_Technical_Bookstore_Source
//
//  Created by admin on 2019/08/25.
//  Copyright © 2019 h.crane. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = scene as? UIWindowScene else { return }
        initial(scene: windowScene)
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }
}


// MARK: - Private

private extension SceneDelegate {
    
    func initial(scene: UIWindowScene) {
        let scene = UIWindow(windowScene: scene)
        scene.rootViewController = UIHostingController(rootView: ContentView())
        scene.makeKeyAndVisible()
        window = scene
    }
}
