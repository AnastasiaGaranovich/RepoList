//
//  MainCell.swift
//  RepoList
//
//  Created by Анастасия Гаранович on 10.07.2021.
//

import UIKit
class MainCell: UITableViewCell {
	@IBOutlet private weak var avatar: UIImageView!
	@IBOutlet private weak var loginLabel: UILabel!
	
	func setUser(user: User) -> Self {
		loginLabel.text = user.login
		return self
	}
}
