//
//  ViewController.swift
//  Swift调用OC
//
//  Created by 沈凯 on 2017/7/6.
//  Copyright © 2017年 Ssky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let oc = OCFile();
        oc.sayHello();
        
        oc.saySomething("Hello World 2");
        
        oc.sayCallback { (str) in
            print(str!);
        }
        
        oc.saySomething("Hello World 4") { (str) in
            print(str!);
        }
        
        oc.saySomething1("Hello World", something2: "5") { (str) in
            print(str!);
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

