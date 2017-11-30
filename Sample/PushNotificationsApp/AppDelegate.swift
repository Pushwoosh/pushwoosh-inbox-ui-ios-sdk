//
//  AppDelegate.swift
//  PushNotificationsApp
//
//  Created by Pushwoosh on 30/11/2017.
//  Copyright © 2017 Pushwoosh. All rights reserved.
//

import UIKit
import Pushwoosh
import PushwooshInboxUI
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, PushNotificationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        PushNotificationManager.initialize(withAppCode: "5927F-D517A", appName: "PushNotificationsApp")
        PushNotificationManager.push().delegate = self
        PushNotificationManager.push().sendAppOpen()
        PushNotificationManager.push().registerForPushNotifications()
        if #available(iOS 10.0, *) {
            UNUserNotificationCenter.current().delegate = PushNotificationManager.push().notificationCenterDelegate
        }
        
         //customizing the inbox style
        let inboxStyle = PWIInboxStyle.customStyle(withDefaultImageIcon: UIImage.init(named: "custom_image"),
                                                   textColor: UIColor.darkText,
                                                   accentColor: UIColor.blue,
                                                   font: UIFont.systemFont(ofSize: 17))
        
        inboxStyle?.backgroundColor = UIColor.init(white: 1, alpha: 1)
        inboxStyle?.listErrorMessage = NSLocalizedString("Custom error message", comment: "Custom error message")
        inboxStyle?.listEmptyMessage = NSLocalizedString("Custom empty message", comment: "Custom empty message")
        PWIInboxStyle.setupDefaultStyle(inboxStyle)
        
        return true
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        PushNotificationManager.push().handlePushRegistration(deviceToken as Data!)
    }
    
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        PushNotificationManager.push().handlePushRegistrationFailure(error)
    }
    
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any],
                     fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        PushNotificationManager.push().handlePushReceived(userInfo)
        completionHandler(UIBackgroundFetchResult.noData)
    }
    
    func onPushAccepted(_ pushManager: PushNotificationManager!, withNotification pushNotification: [AnyHashable : Any]!, onStart: Bool) {
        print("Push notification accepted: \(pushNotification)")
    }

}

