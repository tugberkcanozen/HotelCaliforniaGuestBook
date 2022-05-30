//
//  RegistrationsTableViewController.swift
//  HotelCaliforniaBook
//
//  Created by Tuğberk Can Özen on 30.05.2022.
//

import UIKit

class RegistrationsTableViewController: UITableViewController {

    // MARK: - UI Elements
    
    // MARK: - Properties
    var registrations: [Registration] = []
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Functions
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return registrations.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RegistrationCell")!
        let registration = registrations[indexPath.row]
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        cell.textLabel?.text = registration.fullName()
        let checkInString = dateFormatter.string(from: registration.checkInDate)
        let checkOutString = dateFormatter.string(from: registration.checkOutDate)
        let roomName = registration.roomType.name
        cell.detailTextLabel?.text = ("\(checkInString) - \(checkOutString): \(roomName) ")
        return cell
        
    }
    // MARK: - Actions
    @IBAction func unwindFromRegistration(unwindSegue: UIStoryboardSegue) {
        guard let source = unwindSegue.source as? AddRegistrationTableViewController,
              let registration = source.registration else { return }
        registrations.append(registration)
        tableView.reloadData()
    }
}
