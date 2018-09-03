//
//  ViewController.swift
//  ReadWriteTXT
//
//  Created by Vinícius Cano Santos on 03/09/2018.
//  Copyright © 2018 Vinícius Cano Santos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "Text", ofType: "txt")
        print("Path =", path)
        
        let url = URL(fileURLWithPath: path!)
        print("URL =", url)
        
        let contentString = try! String(contentsOf: url, encoding: .utf8)
        print(contentString)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

