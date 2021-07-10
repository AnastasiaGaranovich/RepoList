//
//  Network.swift
//  RepoList
//
//  Created by Анастасия Гаранович on 10.07.2021.
//

import Foundation
import AlamofireObjectMapper
import Alamofire

class Network {
	static let url = "https://api.github.com/users"
	
	private init() {
		
	}
	
	static func getUsers(completion: @escaping (String?, [User]) -> () ) {
		AF.request(url).responseArray { (response: DataResponse<[User], AFError>) in
			switch response.result {
			case let .success(user):
				completion(nil, user)
			case let .failure(error):
				completion(error.localizedDescription, [])
			}
		}
	}
	
	static func getRepo(user: User, completion: @escaping (String?, [Repository]) -> () ) {
		AF.request("https://api.github.com/users/\(user.login)/repos").responseArray { (response: DataResponse<[Repository], AFError>) in
			switch response.result {
			case let .success(repo):
				completion(nil, repo)
			case let .failure(error):
				completion(error.localizedDescription, [])
			}
		}
	}
}
