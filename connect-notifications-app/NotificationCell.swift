//
//  NotificationCell.swift
//  connect-notifications-app
//
//  Created by Kazuma Inazaki on 2022/03/27.
//

import UIKit

class NotificationCell: UICollectionViewCell {
    @IBOutlet weak var headerImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var desc: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func prepareForReuse() {
        super.prepareForReuse()

        headerImage.image = UIImage(named: "color-darkblue")
        title.text = ""
        desc.text = ""
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)

        self.layer.borderWidth = 3.0
        self.layer.borderColor = UIColor.black.cgColor
    }

    func setupCell(notification: Notification) {
        headerImage.image = UIImage(named: notification.headerName)
        title.text = notification.title
        desc.text = notification.desc
    }

}
