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
 
        
        
        
        //下面是最上面的 label = HELLO
        labell.text = "Hello"
        labell.font = UIFont.boldSystemFont(ofSize: 40)
        labell.textAlignment = .center
        labell.frame.size = CGSize(width: 300, height: 50)
//        labell.center.x = self.view.bounds.width / 2
//        labell.frame.origin.y = 60
        labell.adjustsFontSizeToFitWidth = true
        //上面这句，根据字体长短调整字体大小
        labell.minimumScaleFactor = 0.5
        //上面这句是缩小到0.5就不缩小了
        self.view.addSubview(labell)
       

        //下面是点击更换文字黄色的按钮 BTN
        buttonn.frame.size = CGSize(width: 180, height: 80)
//        buttonn.center.x = self.view.bounds.width / 2
//        buttonn.frame.origin.y = labell.frame.origin.y + 80
        buttonn.setTitle("click here", for: .normal)
        buttonn.setTitle("alredy click", for: .highlighted)
        buttonn.setTitleColor(UIColor.black, for: .normal)
        buttonn.setTitleColor(UIColor.magenta, for: .highlighted)
        buttonn.backgroundColor = UIColor.yellow
        self.view.addSubview(buttonn)
        buttonn.addTarget(self, action: #selector(click), for: .touchUpInside)
        
        //下面是恢复文字 reset
        button2.frame.size = CGSize(width: 100, height: 40)
//        button2.center.x = self.view.bounds.width / 2
//        button2.frame.origin.y = buttonn.frame.origin.y + 80
        button2.setTitle("reset", for: .normal)
        button2.setTitleColor(UIColor.black, for: .normal)
        self.view.addSubview(button2)
        button2.addTarget(self, action: #selector(reset), for: .touchUpInside)

        

        //使用Auto Layout的方式来布局，下面是关掉这两个按钮自带的位置属性,关闭autoresizing
        buttonn.translatesAutoresizingMaskIntoConstraints = false
        button2.translatesAutoresizingMaskIntoConstraints = false
        labell.translatesAutoresizingMaskIntoConstraints = false
        
        //宽度约束
//        let widthContraint = NSLayoutConstraint(item: buttonn,
//                                                attribute: .width,
//                                                relatedBy: .equal,
//                                                toItem: nil,
//                                                attribute: .notAnAttribute,
//                                                multiplier: 0.0,
//                                                constant: 300)
//        buttonn.addConstraint(widthContraint)
        
        //高度约束
        let heightContraint = NSLayoutConstraint(item: buttonn,
                                                 attribute: .height,
                                                 relatedBy: .equal,
                                                 toItem: nil,
                                                 attribute: .notAnAttribute,
                                                 multiplier: 0.0,
                                                 constant: 50)
        buttonn.addConstraint(heightContraint)
        
        //下面约束
//        let bottomConstraint = NSLayoutConstraint(item: buttonn,
//                                               attribute: .bottom,
//                                               relatedBy: .equal,
//                                               toItem: self.view,
//                                               attribute: .bottom,
//                                               multiplier: 1.0,
//                                               constant: 100)
//        buttonn.superview!.addConstraint(buttomConstraint)

        //上面约束
        let topConstraint = NSLayoutConstraint(item: buttonn,
                                               attribute: .top,
                                               relatedBy: .equal,
                                               toItem: self.view,
                                               attribute: .top,
                                               multiplier: 1.0,
                                               constant: 120)
        buttonn.superview!.addConstraint(topConstraint)
        
        let topConstraintlabel = NSLayoutConstraint(item: labell,
                                               attribute: .top,
                                               relatedBy: .equal,
                                               toItem: buttonn,
                                               attribute: .top,
                                               multiplier: 1.0,
                                               constant: -60)
        labell.superview!.addConstraint(topConstraintlabel)
        
        let centerContraint = NSLayoutConstraint(item: labell,
                                         attribute: .centerX,
                                         relatedBy: .equal,
                                         toItem: buttonn,
                                         attribute: .centerX,
                                         multiplier: 1.0,
                                         constant: 0.0)
        labell.superview!.addConstraint(centerContraint)
        
        let centerContraint2 = NSLayoutConstraint(item: button2,
                                                 attribute: .centerX,
                                                 relatedBy: .equal,
                                                 toItem: buttonn,
                                                 attribute: .centerX,
                                                 multiplier: 1.0,
                                                 constant: 0.0)
        button2.superview!.addConstraint(centerContraint2)
        
        
        let topConstraint2 = NSLayoutConstraint(item: button2,
                                                    attribute: .top,
                                                    relatedBy: .equal,
                                                    toItem: buttonn,
                                                    attribute: .bottom,
                                                    multiplier: 1.0,
                                                    constant: 20)
        button2.superview!.addConstraint(topConstraint2)
        
        
        //下面约束
        //         let bottomContraint = NSLayoutConstraint(item: buttonn,
        //                                                 attribute: .bottom,
        //                                                 relatedBy: .equal,
        //                                                 toItem: self.view,
        //                                                 attribute: .bottom,
        //                                                 multiplier: 1.0,
        //                                                 constant: -100)
        //        buttonn.addConstraint(bottomContraint)

        //buttonn左约束
        let leftContraint = NSLayoutConstraint(item: buttonn,
                                              attribute: .left,
                                              relatedBy: .equal,
                                              toItem: self.view,
                                              attribute: .left,
                                              multiplier: 1.0,
                                              constant: 20)
        buttonn.superview!.addConstraint(leftContraint)
        
        //右边约束
        let rightContraint = NSLayoutConstraint(item: buttonn,
                                               attribute: .right,
                                               relatedBy: .equal,
                                               toItem: self.view,
                                               attribute: .right,
                                               multiplier: 1.0,
                                               constant: -20)
        buttonn.superview!.addConstraint(rightContraint)
        

//        //下面是使用 VLF 可视化语言布局
//        let views:[String:AnyObject] = ["buttonn": UIButton.self,
//                                        "button2": UIButton.self]
//
//        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[buttonn]-20|",
//                                                                options: [],
//                                                                metrics: nil,
//                                                                views: views))
//        self.view.addConstraint(NSLayoutConstraint.constraints(withVisualFormat: "V:|-50-[buttonn]|",
//                                                               options: [],
//                                                               metrics: nil,
//                                                               views: views))
//        
        
        
        
        
        
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

