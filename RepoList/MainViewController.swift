//
//  ViewController.swift
//  RepoList
//
//  Created by Анастасия Гаранович on 10.07.2021.
//

import UIKit

class MainViewController: UITableViewController {
	
	var users = [User]()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		Network.getUsers {
			error, users in
			self.users = users
			self.tableView.reloadData()
		}
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return users.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell") as? MainCell else {
			return UITableViewCell()
		}
		return cell.setUser(user: users[indexPath.row])
	}
	
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let user = users[indexPath.row]
		let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
		let viewController = mainStoryboard.instantiateViewController(withIdentifier: "UserDetailsViewController") as! UserDetailsViewController
		viewController.user = user
		navigationController?.pushViewController(viewController, animated: true)
	}
	
	override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 80
	}
}

