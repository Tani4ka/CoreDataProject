//
//  ViewController.swift
//  Les_15_CoreDataTest
//
//  Created by Tetiana Hranchenko on 6/27/19.
//  Copyright © 2019 Tanya Corporation. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    let testSwiftLet: String = "testSwiftLet"

    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func save() {
        print("Hello Tanya")
    }

    @IBAction func load() {
    }

    func userId() -> String {
        return "Hello"
    }
}
