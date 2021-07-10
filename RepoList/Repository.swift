//
//  Repository.swift
//  RepoList
//
//  Created by Анастасия Гаранович on 10.07.2021.
//

import Foundation
import ObjectMapper

class Repository: Mappable {
	var name = ""
	var language = ""
	
	required init?(map: Map) {
		
	}
	
	func mapping(map: Map) {
		name <- map["name"]
		language <- map["language"]
	}
}
