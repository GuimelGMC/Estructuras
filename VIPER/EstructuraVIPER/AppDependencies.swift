//
//  AppDependencies.swift
//  EstructuraVIPER
//
//  Created by GuimelGMC on 15/01/18.
//  Copyright © 2018 GuimelGMC. All rights reserved.
//

import Foundation
import UIKit

class AppDependencies: NSObject {
    var window : UIWindow?
    var navigationController : UINavigationController?
    
    override init() {
        
    }
    
    func initWithWindow(window : UIWindow) {
        self.window = window
        self.installRootViewController()
    }
    
    func installRootViewController() {
        let firstView = FirstRouter.createModule()
        self.navigationController = UINavigationController(rootViewController: firstView)
        self.window?.rootViewController = self.navigationController
    }
    
    private func configDependencies() {
        //Se inicializan liberia o SDKs
    }
    
}
