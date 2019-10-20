//
//  WhiteNavigationController.swift
//  WhiteNavigationController
//
//  Created by Zandor Smith on 30/03/2019.
//

import UIKit

open class WhiteNavigationController: UINavigationController {

    public var barBlur: WhiteNavigationBarBlur?

    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    override open func viewDidLoad() {
        super.viewDidLoad()

        if #available(iOS 13, *) {} else {
            self.barBlur = WhiteNavigationBarBlur(effect: UIBlurEffect(style: .light))

            self.navigationBar.isTranslucent = true
            self.navigationBar.setBackgroundImage(UIImage(), for: .default)
            self.navigationBar.addSubview(self.barBlur!)

            NotificationCenter.default.addObserver(self, selector: #selector(deviceOrientationDidChange), name: UIDevice.orientationDidChangeNotification, object: nil)
        }
    }

    override open func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        if #available(iOS 13, *) {} else {
            self.barBlur?.layoutSubviews()
        }
    }

    @objc func deviceOrientationDidChange(_ notification: Notification) {
        if #available(iOS 13, *) {} else {
            self.barBlur?.layoutSubviews()
        }
    }

}
