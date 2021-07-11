//
//  User.swift
//  RepoList
//
//  Created by Анастасия Гаранович on 10.07.2021.
//

import Foundation
import ObjectMapper

class User: Mappable {
	var login = ""
	var avatar = ""
	
	init() {
		
	}
	
	required init?(map: Map) {
		
	}
	
	func mapping(map: Map) {
		login <- map["login"]
		avatar <- map["avatar_url"]
	}
}
