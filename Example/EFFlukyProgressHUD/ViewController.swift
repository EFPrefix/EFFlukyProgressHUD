//
//  ViewController.swift
//  EFFlukyProgressHUD
//
//  Created by EyreFree on 02/24/2019.
//  Copyright (c) 2019 EyreFree. All rights reserved.
//

import UIKit
import EFFlukyProgressHUD
import Fluky

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 1.
        EFFlukyProgressHUD.showAdded(to: self.view, animated: true)

        // 2.
        // let hub: EFFlukyProgressHUD = EFFlukyProgressHUD(flukyType: FlukyType.single)
        // self.view.addSubview(hub)
        // hub.show(animated: true)
    }
}
