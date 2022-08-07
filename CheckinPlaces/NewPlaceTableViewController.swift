//
//  NewPlaceTableViewController.swift
//  CheckinPlaces
//
//  Created by Afir Thes on 06.08.2022.
//

import UIKit

class NewPlaceTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView() // убираем разлиновку пустых строк.
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            
        } else {
            view.endEditing(true)
        }
    }
}

extension NewPlaceTableViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
        // Some minor change
    }
}
