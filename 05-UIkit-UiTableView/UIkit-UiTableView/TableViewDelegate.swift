//
//  TableViewDelegate.swift
//  UIkit-UiTableView
//
//  Created by Jonathan Casillas on 23/08/23.
//

import Foundation
import UIKit

final class TableViewDelegate: NSObject, UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = house[indexPath.row]
        print("Cell: \(model.title)")
    }
}

