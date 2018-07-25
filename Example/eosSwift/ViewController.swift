//
//  ViewController.swift
//  eosSwift
//
//  Created by Eugene Ovchynykov on 07/25/2018.
//  Copyright (c) 2018 Eugene Ovchynykov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NetworkManager(stringUrl: "http://domain.com").getInfo { (info, _) in
            debugPrint(info?.chain_id)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

