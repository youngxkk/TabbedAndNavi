//
//  FourthViewController.swift
//  Tabbedapp
//
//  Created by 大鲨鱼 on 2018/6/30.
//  Copyright © 2018年 大鲨鱼. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    
    @IBAction func closeBtn(_ sender: UIButton) {
        close()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //设置一个func，把每个按钮的样式封装起来，标题文本可换
        func publicButton(title: String) -> UIButton {
            let button:UIButton = UIButton()
            button.frame.size = CGSize(width: 50, height: 50)
            button.setTitle(title, for: .normal)
            button.setTitleColor(UIColor.black, for: .normal)
            button.backgroundColor = UIColor.cyan
            return button
        }

        
        let btn5 = publicButton(title: "中间")
        btn5.center = self.view.center
        self.view.addSubview(btn5)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    //返回按钮点击响应，返回上一级
    @IBAction func close(){
        self.dismiss(animated: true, completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        NSLog("fourthView 视图可见 ：viewWillAppear")
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        NSLog("fourthdView 视图不可见 ：viewDidDisappear")
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    
}


