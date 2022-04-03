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
        return [
            Notification(headerName: "biscuit", title: "test notification 1", desc: "this is test delivery."),
            Notification(headerName: "cookie", title: "test notification 2", desc: "this is test delivery."),
            Notification(headerName: "programmer", title: "test notification 3", desc: "this is test delivery."),
            Notification(headerName: "color-red", title: "test notification 4 LONG TITLE LONG TITLE LONG TITLE", desc: "this is test delivery."),
            Notification(headerName: "color-orange", title: "test notification 5", desc: "this is test delivery. LONG DESC LONG DESC LONG DESC LONG DESC LONG DESC LONG DESC LONG DESC"),
            Notification(headerName: "color-darkblue", title: "test notification 6", desc: "this is test delivery.")
        ]
    }
}
