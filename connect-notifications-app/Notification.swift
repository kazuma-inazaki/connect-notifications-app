//
//  Notification.swift
//  connect-notifications-app
//
//  Created by Kazuma Inazaki on 2022/03/27.
//

import Foundation

struct Notification {
    let headerName: String
    let title: String
    let desc: String

    static func createModels() -> [Notification] {
        sleep(5)
        let longDesc = String(repeating: "this is test delivery.", count: 100)
        
        return [
            Notification(headerName: "biscuit", title: "test notification 1", desc: "this is test delivery."),
            Notification(headerName: "cookie", title: "test notification 2", desc: "this is test delivery."),
            Notification(headerName: "programmer", title: "test notification 3", desc: "this is test delivery."),
            Notification(headerName: "color-red", title: "test notification 4 LONG TITLE LONG TITLE LONG TITLE", desc: "this is test delivery."),
            Notification(headerName: "color-orange", title: "test notification 5", desc: longDesc),
            Notification(headerName: "color-darkblue", title: "test notification 6", desc: "this is test delivery.")
        ]
    }
}
