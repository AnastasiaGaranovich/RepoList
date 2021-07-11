//
//  RealmDB.swift
//  RepoList
//
//  Created by Анастасия Гаранович on 11.07.2021.
//

import Foundation
import RealmSwift

class RealmDB {
	static let dataBase = try! Realm()
	 
	static func addUsers(users: [User]) {
		try! dataBase.write {
			dataBase.add(users)
		}
	}
	
	static func addRepos(repos: [Repository]) {
		try! dataBase.write {
			dataBase.add(repos)
		}
	}
	
	static func getUsers() -> [User] {
		let users = Array(dataBase.objects(User.self))
		return users
	}
	
	static func getRepos() -> [Repository] {
		let repos = Array(dataBase.objects(Repository.self))
		return repos
	}
}
