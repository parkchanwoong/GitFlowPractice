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
        
        print("버그수정완료!")
        print("은지도 버그수정완료!")
        // Do any additional setup after loading the view.
    }


    @IBAction func printerButtonAction(_ sender: Any) {
        print("버튼 꾸우우욱!!!")
    }
}
extension ViewController {
    func name() {
        print("박찬웅")
    }
}

protocol ViewControllerUsable {
    
}

extension ViewControllerUsable {
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "iCell")
        if let c = cell {
            c.textLabel?.text = "테\n스\n트\n셀\n\(indexPath.row)"
            return c
        }
        return UITableViewCell.init()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.setSelected(false, animated: true)
    }
}
