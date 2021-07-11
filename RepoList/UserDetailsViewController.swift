//
//  UserDetailsViewController.swift
//  RepoList
//
//  Created by Анастасия Гаранович on 10.07.2021.
//

import UIKit

class UserDetailsViewController: UITableViewController {
	var user = User()
	private var repositories = [Repository]()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		Network.getRepo(user: user, completion: {
			error, repo in
			self.repositories = repo
			self.tableView.reloadData()
			
		})
		navigationItem.title = "\(user.login)'s Repositories"
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return repositories.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: "DetailsCell") as? DetailsCell else {
			return UITableViewCell()
		}
		return cell.setRepo(repo: repositories[indexPath.row])
	}
}
