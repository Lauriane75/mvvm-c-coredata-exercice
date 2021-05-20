//
//  SceneDelegate.swift
//  loginPage-coredata
//
//  Created by Lau on 19/05/2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    var mainCoordinator: MainCoordinator?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let winScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: winScene)
        let screens = Screens()
        
        mainCoordinator = MainCoordinator(window: window, screens: screens)
        mainCoordinator?.start()
    }
}

