//
//  AppViewController.swift
//  test
//
//  Created by Liêm Nguyễn on 24/05/2023.
//

import UIKit

class AppViewController: UIViewController {
    // MARK: - IBOutlets

        
    // MARK: - Properties
    static let shared = AppViewController()

    // MARK: - Overrides


    // MARK: - Life cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: false)
        pushToTestVC()
    }
    // MARK: - Publics
    func showAlert(tittle: String, message: String) {
        let alertController = UIAlertController(title: tittle, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }

    func popupAlert(title: String, colorPopup: UIColor? = nil) {
//        let snackBarMsg = MDCSnackbarMessage()
//        snackBarMsg.text = title
//        MDCSnackbarMessageView.appearance().snackbarMessageViewBackgroundColor = colorPopup ?? UIColor.black
//        MDCSnackbarManager.default.show(snackBarMsg)
    }

    // MARK: - Private

    // MARK: - Actions

}

