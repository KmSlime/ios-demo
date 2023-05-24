//
//  Screen1ViewController.swift
//  test
//
//  Created by Liêm Nguyễn on 24/05/2023.
//

import UIKit

class Screen1ViewController: UIViewController {

    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var button: UIButton!

    let secondVC = Screen2ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        text.text = "beginning message"
        secondVC.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        button.titleLabel?.text = "go to get message"
    }
    
    @IBAction func touchButton(_ sender: Any) {
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
    
    @IBAction func back(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}

extension Screen1ViewController: ThisSetOnScreen2AndDoOnScreen1DelegateProtocol {
    // Delegate Method
    func sendDataToFirstViewController(myData: String) {
        text.text = myData
    }
}
