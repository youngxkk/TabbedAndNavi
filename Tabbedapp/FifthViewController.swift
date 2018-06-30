//
//  FifthViewController.swift
//  Tabbedapp
//
//  Created by 大鲨鱼 on 2018/6/30.
//  Copyright © 2018年 大鲨鱼. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
    
    let labell = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        labell.text = "world"
        labell.font = UIFont.boldSystemFont(ofSize: 40)
        labell.frame.size = CGSize(width: 300, height: 50)
        labell.textAlignment = .center
        labell.center.x = self.view.bounds.width / 2
        labell.frame.origin.y = 200
        labell.textColor = UIColor.red
        //        labell.sizeToFit()
        self.view.addSubview(labell)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        NSLog("fifthView 视图可见 ：viewWillAppear")
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        NSLog("fifthdView 视图不可见 ：viewDidDisappear")
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    
}

