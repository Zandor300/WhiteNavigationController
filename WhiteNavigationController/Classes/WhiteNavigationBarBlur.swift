//
//  WhiteNavigationBarBlur.swift
//  WhiteNavigationController
//
//  Created by Zandor Smith on 30/03/2019.
//

import UIKit

public class WhiteNavigationBarBlur: UIVisualEffectView {

    public let whiteView = UIView()

    var centerLabelSuperview: UIView?

    var navigationBar: UINavigationBar? {
        return self.superview as? UINavigationBar
    }

    override init(effect: UIVisualEffect?) {
        super.init(effect: effect)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    private func setup() {
        self.contentView.addSubview(whiteView)
        self.whiteView.backgroundColor = UIColor(white: 1.0, alpha: 0.5)
    }

    override public func layoutSubviews() {
        if let navigationBar = self.navigationBar {
            let statusBarHeight = UIApplication.shared.statusBarFrame.size.height

            if self.centerLabelSuperview == nil {
                for subview in navigationBar.subviews {
                    for subsubview in subview.subviews {
                        if subsubview.isMember(of: UILabel.self) {
                            let subviewName = String(describing: subview.self)
                            if !subviewName.contains("Large") {
                                self.centerLabelSuperview = subsubview.superview
                            }
                        }
                    }
                }
            }

            if let bounds = self.centerLabelSuperview?.bounds {
                self.frame = bounds.insetBy(dx: 0, dy: -(statusBarHeight)).offsetBy(dx: 0, dy: -(statusBarHeight))
            } else {
                self.frame = navigationBar.bounds.insetBy(dx: 0, dy: -(statusBarHeight)).offsetBy(dx: 0, dy: -(statusBarHeight))
            }

            self.whiteView.frame = self.contentView.bounds

            navigationBar.sendSubviewToBack(self)
        }
    }

}
