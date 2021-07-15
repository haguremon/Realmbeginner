//
//  ViewController.swift
//  Realmbeginner
//
//  Created by IwasakIYuta on 2021/07/12.
//明日はりなむやるぞぉい

import UIKit
import RealmSwift
class ViewController: UIViewController {

    let randomArrya = ["@","#","$","%","^","&","*","(",")"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    let person1 = Person() //Personをインスタンしてプロパティに追加する↓
        person1.age = 23
        person1.id = String(Int.random(in: 1...100)) + randomArrya.randomElement()!//idにprimaryKeyを設定
        person1.name = "iwasi"
        let realm = try! Realm() //throwsついてるのでtryをつける必要がある強制的にインスタンス化！
print(Realm.Configuration.defaultConfiguration.fileURL!)
        do {
            try realm.write { //write内に保存したいのを入れる
                realm.add(person1)
            }
        } catch {
            print("\(error)")
        }
        
    }


}

