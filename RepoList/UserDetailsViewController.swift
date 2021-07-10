//
//  UserDetailsViewController.swift
//  RepoList
//
//  Created by Анастасия Гаранович on 10.07.2021.
//

import UIKit

class UserDetailsViewController: UITableViewController {
	var repositories = [Repository]()
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return repositories.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		return UITableViewCell()
	}
}
