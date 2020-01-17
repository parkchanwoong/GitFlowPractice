//
//  SecondViewController.swift
//  GitFlowPractice
//
//  Created by 박찬웅 on 2020/01/17.
//  Copyright © 2020 chanwoong. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("SecondViewController ::",#function)
        print("릴리즈에서 추가한 단순 버그 수정")
        
    }

}

extension UIViewController {
    func showSimpleAlert(message: String) {
        let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인", style: .default, handler: nil)
        let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        let destructive = UIAlertAction(title: "파괴적인행동", style: .destructive, handler: nil)
        
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        alertController.addAction(destructive)
        
        present(alertController, animated: true, completion: nil)
    }
}
