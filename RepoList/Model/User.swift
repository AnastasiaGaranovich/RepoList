//
//  User.swift
//  RepoList
//
//  Created by Анастасия Гаранович on 10.07.2021.
//

import Foundation
import ObjectMapper
import RealmSwift

class User: Object, Mappable {
	@objc dynamic var login = ""
	@objc dynamic var avatar = ""
	let repositories = List<Repository>()

	override init() {
		
	}
	
	required init?(map: ObjectMapper.Map) {
		
	}
	
	func mapping(map: ObjectMapper.Map) {
		login <- map["login"]
		avatar <- map["avatar_url"]
	}
}
