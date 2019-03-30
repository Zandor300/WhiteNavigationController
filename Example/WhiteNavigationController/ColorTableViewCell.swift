//
//  ColorTableViewCell.swift
//  WhiteNavigationController_Example
//
//  Created by Zandor Smith on 30/03/2019.
//  Copyright © 2019 Zandor Smith. All rights reserved.
//

import UIKit

class ColorTableViewCell: UITableViewCell {

    static let colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]

    @IBOutlet weak var coloredView: UIView!

    var color: UIColor = .clear

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }

    func setup() {
        self.color = ColorTableViewCell.colors.randomElement()!
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        self.coloredView.backgroundColor = self.color
        self.coloredView.layer.cornerRadius = 10
    }

}
