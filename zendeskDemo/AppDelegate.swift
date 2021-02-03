//
//  AppDelegate.swift
//  zendeskDemo
//
//  Created by Oscar on 2021/02/03.
//

import UIKit
import SupportProvidersSDK
import ZendeskCoreSDK

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        Zendesk.initialize(appId: "ff9558b5688fdf6afed5e686ce32d34887a57b2a85bc4474",
                           clientId: "mobile_sdk_client_30ae35ff0b97dc470ad1",
                           zendeskUrl: "https://onecart.zendesk.com")
        Support.initialize(withZendesk: Zendesk.instance)
        CoreLogger.enabled = true
        CoreLogger.logLevel = .verbose
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

