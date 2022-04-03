//
//  NotificationDetailViewController.swift
//  connect-notifications-app
//
//  Created by Kazuma Inazaki on 2022/04/03.
//

import UIKit

class NotificationDetailViewController: UIViewController {
    @IBOutlet weak var notificationHeaderImage: UIImageView!
    @IBOutlet weak var notificationTitle: UILabel!
    @IBOutlet weak var notificationDesc: UITextView!

    var notification: Notification!

    override func viewDidLoad() {
        super.viewDidLoad()
        notificationHeaderImage.image = UIImage(named: notification.headerName)
        notificationTitle.text = notification.title
        notificationDesc.text = notification.desc
    }
}
