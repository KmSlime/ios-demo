//
//  Screen2ViewController.swift
//  test
//
//  Created by Liêm Nguyễn on 24/05/2023.
//

import UIKit

protocol ThisSetOnScreen2AndDoOnScreen1DelegateProtocol {
    func sendDataToFirstViewController(myData: String)
}

class Screen2ViewController: UIViewController {

    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var button: UIButton!
    
    var delegate: ThisSetOnScreen2AndDoOnScreen1DelegateProtocol? = nil

    
    override func viewDidLoad() {
        super.viewDidLoad()
        text.text = "prepare data from screen 2"
        button.titleLabel?.text = "transfer data"
    }
    
    @IBAction func touchButton(_ sender: Any) {
        if self.delegate != nil {
            let dataToBeSent = "this data come from screen 2"
            self.delegate?.sendDataToFirstViewController(myData: dataToBeSent)
            navigationController?.popViewController(animated: true)
        }
    }
}
