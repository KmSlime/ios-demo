//
//  Navigator.swift
//  test
//
//  Created by Liêm Nguyễn on 24/05/2023.
//

import UIKit

extension AppViewController {
    func pushToTestVC() {
        let vc = TestViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
