//
//  DetailsCell.swift
//  RepoList
//
//  Created by Анастасия Гаранович on 11.07.2021.
//

import UIKit

class DetailsCell: UITableViewCell {
	@IBOutlet weak var languageLabel: UILabel!
	@IBOutlet weak var repoLabel: UILabel!
	
	func setRepo(repo: Repository) -> Self {
		repoLabel.text = repo.name
		languageLabel.text = repo.language
		return self
	}
}
