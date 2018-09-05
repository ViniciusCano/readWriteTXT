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
        
        //txt URL
        let path = Bundle.main.path(forResource: "Text", ofType: "txt")
        print("Path =", path)

        let url = URL(fileURLWithPath: path!)
        print("URL =", url)
        
        //Read
        var contentString = try! String(contentsOf: url, encoding: .utf8)

        //Write
        let text = contentString + "Escreva aqui o texto que deseja escrever no documento"
        
        do {
            try text.write(to: url, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            print("Erro", error)
        }
        
        //Read the entire document
        contentString = try! String(contentsOf: url, encoding: .utf8)
        print(contentString)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

