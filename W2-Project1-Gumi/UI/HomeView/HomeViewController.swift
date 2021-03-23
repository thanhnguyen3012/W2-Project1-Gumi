//
//  HomeViewController.swift
//  W2-Project1-Gumi
//
//  Created by Thành Nguyên on 22/03/2021.
//

import UIKit

class HomeViewController: UIViewController {

    //Outlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    func setupView() {
        textField.delegate = self
        textField.clearButtonMode = .whileEditing
    }
}


extension HomeViewController: UITextFieldDelegate {
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        nameLabel.text = textField.text
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        let alert = UIAlertController(title: "Clear text field", message: "Do you want to clear text field?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {_ in textField.text = ""}))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
        return false
    }
    
}
