//
//  ViewController.swift
//  webview
//
//  Created by pankaj kumar on 28/10/16.
//  Copyright © 2016 pankaj kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate {
    @IBOutlet weak var web_View: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        UIWebView.loadRequest(web_View)(URLRequest(url: URL(string: "https://google.com")!))
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func webViewDidStartLoad(_ webView : UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        print("AA")
    }
    
    func webViewDidFinishLoad(_ webView : UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
        print("BB")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

        // Dispose of any resources that can be recreated.
    }


}

