//
//  NotificationsViewController.swift
//  connect-notifications-app
//
//  Created by Kazuma Inazaki on 2022/03/27.
//

import UIKit

class NotificationsViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var loadingText: UILabel!

    var notifications = [Notification]()
    var selectedNotification: Notification?

    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.global(qos: .userInitiated).async {
            self.notifications = Notification.createModels()

            DispatchQueue.main.async {
                self.loadingText.isHidden = true

                self.collectionView.dataSource = self
                self.collectionView.delegate = self

                self.collectionView.register(UINib(nibName: "NotificationCell", bundle: nil), forCellWithReuseIdentifier: "NotificationCell")

                let layout = UICollectionViewFlowLayout()
                layout.sectionInset = UIEdgeInsets(top: 34, left: 29, bottom: 34, right: 29)
                layout.itemSize = CGSize(width: UIScreen.main.bounds.size.width - 58, height: 140)
                layout.minimumLineSpacing = 34

                self.collectionView.collectionViewLayout = layout
            }
        }
    }
}

// MARK: UICollectionViewDataSource
extension NotificationsViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return notifications.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NotificationCell", for: indexPath)

        if let cell = cell as? NotificationCell {
            cell.setupCell(notification: notifications[indexPath.row])
        }

        return cell
    }


}

// MARK: UICollectionViewDelegate
extension NotificationsViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedNotification = notifications[indexPath.row]

        let storyboard = UIStoryboard(name: "NotificationDetail", bundle: nil)
        let notificationDetailVC = storyboard.instantiateViewController(withIdentifier: "NotificationDetail") as! NotificationDetailViewController

        notificationDetailVC.notification = selectedNotification

        self.navigationController?.pushViewController(notificationDetailVC, animated: true)
    } 
}
