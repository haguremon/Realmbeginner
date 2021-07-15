//
//  Person.swift
//  Realmbeginner
//
//  Created by IwasakIYuta on 2021/07/15.
//

import Foundation
import RealmSwift

class Person : Object {
    @objc dynamic var id: String = ""//dynamic動的なプロパティて意味？
    @objc dynamic var name: String = ""
    @objc dynamic var age: Int16 = 0
    @objc override static func primaryKey() -> String? {
        return "id"
    }
}
