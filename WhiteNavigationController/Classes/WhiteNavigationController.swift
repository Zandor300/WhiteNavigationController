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

        self.barBlur = WhiteNavigationBarBlur(effect: UIBlurEffect(style: .light))

        self.navigationBar.isTranslucent = true
        self.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationBar.addSubview(self.barBlur!)

        NotificationCenter.default.addObserver(self, selector: #selector(deviceOrientationDidChange), name: UIDevice.orientationDidChangeNotification, object: nil)
    }

    override open func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        self.barBlur?.layoutSubviews()
    }

    override open func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }

    @objc func deviceOrientationDidChange(_ notification: Notification) {
        self.barBlur?.layoutSubviews()
    }

}
