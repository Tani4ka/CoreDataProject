//
//  ViewController.swift
//  Les_15_CoreDataTest
//
//  Created by Tetiana Hranchenko on 6/27/19.
//  Copyright © 2019 Tanya Corporation. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    let testSwiftLet: String = "testSwiftLet"

    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func save() {
        // создаем Entity в контексте AppDelegate.viewContext в оперативной памяти, заполняем ему поля
        let user = Entity(context: AppDelegate.viewContext)
        user.name = "Tanya"
        user.age = 33
        user.isAlive = true
        user.id = UUID().uuidString
    }

    @IBAction func load() {
        let nameFetch = "Tanya"
        // создаем запрос
        let request: NSFetchRequest<Entity> = Entity.fetchRequest()
        request.predicate = NSPredicate(format: "name == %@", nameFetch)
        do {
            let user = try AppDelegate.viewContext.fetch(request)
            label.text = user.first?.id
        } catch {
            print(error)
        }
    }
    
}
