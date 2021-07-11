//
//  Repository.swift
//  RepoList
//
//  Created by Анастасия Гаранович on 10.07.2021.
//

import Foundation
import ObjectMapper
import RealmSwift

class Repository: Object, Mappable {
	@objc dynamic var name = ""
	@objc dynamic var language = ""
	
	override init() {
		
	}
	
	required init?(map: ObjectMapper.Map) {
		
	}
	
	func mapping(map: ObjectMapper.Map) {
		name <- map["name"]
		language <- map["language"]
	}
}
