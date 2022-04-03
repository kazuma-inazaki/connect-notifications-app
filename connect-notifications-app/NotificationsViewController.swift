//
//  NotificationsViewController.swift
//  connect-notifications-app
//
//  Created by Kazuma Inazaki on 2022/03/27.
//

import UIKit

class NotificationsViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!

    let notifications = Notification.createModels()

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self

        collectionView.register(UINib(nibName: "NotificationCell", bundle: nil), forCellWithReuseIdentifier: "NotificationCell")

        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 34, left: 29, bottom: 34, right: 29)
        layout.itemSize = CGSize(width: UIScreen.main.bounds.size.width - 58, height: 140)
        layout.minimumLineSpacing = 34

        collectionView.collectionViewLayout = layout
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
