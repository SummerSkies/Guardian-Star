//
//  AppDelegate.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 8/24/23.
//

import Foundation
import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        UIScrollView.appearance().bounces = false
        return true
    }
}
