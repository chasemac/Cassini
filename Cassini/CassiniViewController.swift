//
//  CassiniViewController.swift
//  Cassini
//
//  Created by Chase McElroy on 5/8/17.
//  Copyright © 2017 Chase McElroy. All rights reserved.
//

import UIKit

class CassiniViewController: UIViewController {


    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let url = DemoURL.NASA[segue.identifier ?? ""] {
            if let imageVC = (segue.destination.contents as? ImageViewController) {
                imageVC.imageURL = url
                imageVC.title = (sender as?  UIButton)?.currentTitle    
            }
        }

    }
}

extension UIViewController {
    var contents: UIViewController {
        if let navcon = self as? UINavigationController {
            return navcon.visibleViewController ?? self
        } else {
            return self
        }
    }
}
