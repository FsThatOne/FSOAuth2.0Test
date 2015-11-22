//
//  ViewController.swift
//  FSOAuth2.0Test
//
//  Created by FS小一 on 15/11/22.
//  Copyright © 2015年 FSxiaoyi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var webView = {
        return UIWebView(frame: UIScreen.mainScreen().bounds)
    }()
//    
//    override func loadView() {
//        
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let loginBtn: UIButton = UIButton(type: UIButtonType.System)
        loginBtn.frame = CGRect(x: 100, y: 100, width: 100, height: 80)
        loginBtn.titleLabel?.text = "登陆"
        loginBtn.titleLabel?.textColor = UIColor.blackColor()
        loginBtn.backgroundColor = UIColor.blueColor()
        view.addSubview(loginBtn)
        loginBtn.addTarget(self, action: "loginClick", forControlEvents: UIControlEvents.TouchUpInside)
    
    }
    
    @objc private func loginClick(){
        let vc = UIViewController()
        vc.view = webView
        webView.loadRequest(NSURLRequest(URL: NetworkTools.sharedTools.oauthUrl()))
        webView.backgroundColor = UIColor.whiteColor()
        let nav = UINavigationController(rootViewController: vc)
        nav.title = "测试微博登陆"
        presentViewController(nav, animated: true) { () -> Void in
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

