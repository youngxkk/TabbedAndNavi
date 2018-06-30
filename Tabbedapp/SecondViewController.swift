//
//  SecondViewController.swift
//  Tabbedapp
//
//  Created by 大鲨鱼 on 2018/6/29.
//  Copyright © 2018年 大鲨鱼. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    let labell = UILabel()
    let input = UITextField(frame: CGRect(x: 40, y: 80, width: 300, height: 50))
    var longText = UITextView(frame: CGRect(x: 40, y: 140, width: 300, height: 100))
    var tableview = UITableView()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("secondView 视图创建 ：viewDidLoad")
        
        

        
        
        //下面是主要标题
        labell.text = "world"
        labell.font = UIFont.boldSystemFont(ofSize: 40)
        labell.frame.size = CGSize(width: 300, height: 50)
        labell.textAlignment = .center
        labell.center.x = self.view.bounds.width / 2
        labell.frame.origin.y = 200
        labell.textColor = UIColor.red
//        labell.sizeToFit()
        self.view.addSubview(labell)
        
        input.placeholder = "click here input username"
        input.backgroundColor = UIColor.white
//        input.layer.borderWidth = 0.5

//        input.layer.cornerRadius = 10
        input.font = UIFont.boldSystemFont(ofSize: 20)
        // 边框样式
        input.borderStyle = UITextBorderStyle.roundedRect
        // 自动更正功能
        input.autocorrectionType = UITextAutocorrectionType.no
        // 完成按钮样式
        input.returnKeyType = UIReturnKeyType.done
        // 清除按钮显示状态
        input.clearButtonMode = UITextFieldViewMode.whileEditing
        // 键盘样式
        input.keyboardType = UIKeyboardType.namePhonePad
        // 键盘外观
        input.keyboardAppearance = UIKeyboardAppearance.alert
        // 安全文本输入，（输入密码）
        input.isSecureTextEntry = false
//        input.delegate = self as! UITextFieldDelegate
        self.view.addSubview(input)
        
//        longText.frame(forDictationResultPlaceholder: "ddddd")
        longText.backgroundColor = UIColor.white
        longText.layer.borderWidth = 0.5
        longText.layer.cornerRadius = 10
        longText.font = UIFont.boldSystemFont(ofSize: 30)
        longText.autocorrectionType = UITextAutocorrectionType.no
        longText.returnKeyType = UIReturnKeyType.done
        longText.keyboardType = UIKeyboardType.namePhonePad
        longText.keyboardAppearance = UIKeyboardAppearance.alert
        longText.isSecureTextEntry = false
//        longText.delegate = self as! UITextViewDelegate
        self.view.addSubview(longText)
        
        
        
        func textFieldShoundReturn(_ textField: UITextField) -> Bool{
            NSLog("点击了这里")
            return true
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        NSLog("secondView 视图可见 ：viewWillAppear")
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        NSLog("secondView 视图不可见 ：viewDidDisappear")
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    

}

