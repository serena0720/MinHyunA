//
//  GViewController.swift
//  Quiz14-01
//
//  Created by TJ on 2022/09/04.
//

import UIKit
import WebKit

class GViewController: UIViewController {
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        myWebView.navigationDelegate = self
//        loadWebpage(url: "https://www.google.com")
        
        // Struct의 함수를 이용한 Web 구성
        let site: SiteRequest = SiteRequest()
        let myRequest = site.loadWebpage(url: "https://www.google.com")
        myWebView.load(myRequest)

    }

//    func loadWebpage(url: String){
//        let myUrl = URL(string: url)
//        let myRequest = URLRequest(url: myUrl!)
//        myWebView.load(myRequest)
//    }

}// GViewController

extension GViewController: WKNavigationDelegate{
    
    // Indicator 시작
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        myActivityIndicator.startAnimating()
        myActivityIndicator.isHidden = false
    }
    
    // Indicator 종료
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }
    
    // Error발생시
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }
}
