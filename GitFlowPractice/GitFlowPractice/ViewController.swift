//
//  ViewController.swift
//  GitFlowPractice
//
//  Created by 박찬웅 on 2020/01/17.
//  Copyright © 2020 chanwoong. All rights reserved.
//

import UIKit

enum MyError {
    case normalError
    case networkError
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController {
    func name() {
        print("박찬웅")
    }
}
