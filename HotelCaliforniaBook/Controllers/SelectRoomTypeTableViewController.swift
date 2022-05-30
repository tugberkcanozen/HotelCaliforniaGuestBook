//
//  SelectRoomTypeTableViewController.swift
//  HotelCaliforniaBook
//
//  Created by Tuğberk Can Özen on 29.05.2022.
//

import UIKit

protocol SelectRoomTypeTableViewControllerDelegate: class {
    
    func didSelectRoomType(roomType: RoomType)
}

class SelectRoomTypeTableViewController: UITableViewController {

    // MARK: - UI Elements
    
    // MARK: - Properties
    weak var delegate: SelectRoomTypeTableViewControllerDelegate?
    var selectedRoomType: RoomType?
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Functions
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return RoomType.all.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RoomTypeCell")!
        let roomType = RoomType.all[indexPath.row]
        cell.textLabel?.text = roomType.name
        cell.detailTextLabel?.text = "₺ \(roomType.price)"
        
        if roomType == selectedRoomType {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        selectedRoomType = RoomType.all[indexPath.row]
        
        delegate?.didSelectRoomType(roomType: selectedRoomType!)
        tableView.reloadData()
    }
    
    // MARK: - Actions

}
