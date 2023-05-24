//
//  TestViewController.swift
//  test
//
//  Created by Liêm Nguyễn on 24/05/2023.
//

import UIKit

class TestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goToDelegateExample(_ sender: Any) {
        let vc = Screen1ViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
