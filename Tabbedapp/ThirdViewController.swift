//
//  ThirdViewController.swift
//  Tabbedapp
//
//  Created by 大鲨鱼 on 2018/6/29.
//  Copyright © 2018年 大鲨鱼. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var navigationBar = UINavigationBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //滚动视图
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 400))
        scrollView.backgroundColor = UIColor.brown
        scrollView.bounces = true
        scrollView.alwaysBounceVertical = true
        scrollView.contentOffset.y = 100
        scrollView.isPagingEnabled = true
        scrollView.delegate = self as? UIScrollViewDelegate
        scrollView.showsVerticalScrollIndicator = true
        self.view.addSubview(scrollView)

        
        //实例话导航条
        navigationBar = UINavigationBar()
        self.view.addSubview(navigationBar)
        self.navigationItem.title = "Summer"
//      self.navigationController?.navigationBar.barTintColor = UIColor.cyan
        
        
        
        
        //设置 状态栏的高度，下方设置高度需要减去状态栏的高度
        let statusFrame = UIApplication.shared.statusBarFrame
        
        print("secondView 视图创建 ：viewDidLoad")
        
        //设置一个func，把每个按钮的样式封装起来，标题文本可换
        func publicButton(title: String) -> UIButton {
            let button:UIButton = UIButton()
            button.frame.size = CGSize(width: 50, height: 50)
            button.setTitle(title, for: .normal)
            button.setTitleColor(UIColor.black, for: .normal)
            button.backgroundColor = UIColor.yellow
            return button
        }
        
        
        let btn1 = publicButton(title: "左上")
        //下面这行是指btn1的 Y 轴的大小等于状态栏的大小，也就意味着在状态栏下方
        btn1.frame.origin.y = statusFrame.height + 44
        scrollView.addSubview(btn1)
        
        let btn2 = publicButton(title: "右上")
        btn2.frame.origin.y = statusFrame.height + 44
        //下面这行是指，右上的方块，x 轴的位置等于屏宽减 方块本身的尺寸
        btn2.frame.origin.x = self.view.bounds.width - btn2.frame.width
        scrollView.addSubview(btn2)
        
        let btn3 = publicButton(title: "中上")
        btn3.frame.origin.y = statusFrame.height + 44
        btn3.center.x = self.view.bounds.width / 2
        scrollView.addSubview(btn3)
        
        let btn4 = publicButton(title: "左中")
        btn4.center.y = self.view.bounds.height / 2
        scrollView.addSubview(btn4)
        
        let btn5 = publicButton(title: "中间")
        btn5.center = self.view.center
        scrollView.addSubview(btn5)
        
        let btn6 = publicButton(title: "右中")
        btn6.frame.origin.x = self.view.bounds.width - btn6.frame.width
        btn6.center.y = self.view.bounds.height / 2
        scrollView.addSubview(btn6)
        
        let btn7 = publicButton(title: "左下")
        btn7.frame.origin.y = self.view.bounds.height - btn7.frame.height - 44
        scrollView.addSubview(btn7)
        
        let btn8 = publicButton(title: "中下")
        btn8.center.x = self.view.bounds.width / 2
        btn8.frame.origin.y = self.view.bounds.height - btn8.frame.height - 44
        scrollView.addSubview(btn8)
        
        let btn9 = publicButton(title: "右下")
        btn9.frame.origin.x = self.view.frame.width - btn9.frame.width
        btn9.frame.origin.y = self.view.bounds.height - btn9.frame.height - 44
        scrollView.addSubview(btn9)
        
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        NSLog("thirdView 视图可见 ：viewWillAppear")
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        NSLog("thirdView 视图不可见 ：viewDidDisappear")
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    
}

