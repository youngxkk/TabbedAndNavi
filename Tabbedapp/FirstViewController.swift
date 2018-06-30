//
//  FirstViewController.swift
//  Tabbedapp
//
//  Created by 大鲨鱼 on 2018/6/29.
//  Copyright © 2018年 大鲨鱼. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    let labell = UILabel()
    let buttonn: UIButton = UIButton()
    let button2: UIButton = UIButton()
    
    
    @IBAction func click (_ sender: AnyObject) {
        labell.text = "hahaniubilityhahanilalalala"
        buttonn.setTitleColor(UIColor.white, for: .normal)
        buttonn.backgroundColor = UIColor.black
    }
    
    
    @IBAction func reset ( _sender: AnyObject) {
        labell.text = "hello"
        buttonn.setTitleColor(UIColor.black, for: .normal)
        buttonn.backgroundColor = UIColor.yellow
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("FirstView 视图创建 ：viewDidLoad")
        
        //下面是最上面的 label
        labell.text = "hello"
        labell.font = UIFont.boldSystemFont(ofSize: 40)
        labell.textAlignment = .center
        labell.frame.size = CGSize(width: 300, height: 50)
        labell.center.x = self.view.bounds.width / 2
        labell.frame.origin.y = 60
        labell.adjustsFontSizeToFitWidth = true
        //上面这句，根据字体长短调整字体大小
        labell.minimumScaleFactor = 0.5
        //上面这句是缩小到0.5就不缩小了
        self.view.addSubview(labell)
       

        //下面是点击更换文字最大的按钮 BTN
        buttonn.frame.size = CGSize(width: 180, height: 80)
        buttonn.center.x = self.view.bounds.width / 2
        buttonn.frame.origin.y = labell.frame.origin.y + 80
        buttonn.setTitle("click here", for: .normal)
        buttonn.setTitle("alredy click", for: .highlighted)
        buttonn.setTitleColor(UIColor.black, for: .normal)
        buttonn.setTitleColor(UIColor.magenta, for: .highlighted)
        buttonn.backgroundColor = UIColor.yellow
        self.view.addSubview(buttonn)
        buttonn.addTarget(self, action: #selector(click), for: .touchUpInside)
        
        //下面是恢复按钮
        button2.frame.size = CGSize(width: 100, height: 40)
        button2.center.x = self.view.bounds.width / 2
        button2.frame.origin.y = buttonn.frame.origin.y + 80
        button2.setTitle("reset", for: .normal)
        button2.setTitleColor(UIColor.black, for: .normal)
        self.view.addSubview(button2)
        button2.addTarget(self, action: #selector(reset), for: .touchUpInside)
    
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        NSLog("firstView 视图可见 ：viewWillAppear")
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        NSLog("FirstView 视图不可见 ：viewDidDisappear")
    }
    

    
    }

