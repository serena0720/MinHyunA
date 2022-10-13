//
//  ViewController.swift
//  03_Hybrid
//
//  Created by Hyun A Song on 2022/09/03.
//

import UIKit
import WebKit // 잊지 말기!

class ViewController: UIViewController {

    @IBOutlet weak var tfUrl: UITextField!
    
    @IBOutlet weak var myWebView: WKWebView!
    
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Activity Indicator를 위해 확장한 class를  viewcontroller에 넣음
        myWebView.navigationDelegate = self
        // 첫 화면 : naver로 이동
        loadWebPage(url: "https://www.naver.com") // https를 필수로 작성
    }
    //html 불러오기
    func loadWebPage(url: String){
        //web에서 정보 가져오기
        let myUrl = URL(string: url)
        let myRequest = URLRequest(url: myUrl!)
        myWebView.load(myRequest) // 화면을 띄워주는 역할
    }
    
    //go 버튼에 입력할 때 사용자가 http를 사용안하는 경우 방지
    func checkUrl(_ url:String)->String {
        var strUrl = url
        let flag = strUrl.hasPrefix("http://") //앞에 넣었는지 체크
        
        if !flag{
            strUrl = "htt://" + strUrl
            return strUrl
        }
        return url
    }
    
    // 아무곳이나 눌러 softkeyboard 지우기
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func btnGo(_ sender: UIButton) {
        let myUrl = checkUrl(tfUrl.text!)
        tfUrl.text = ""
        loadWebPage(url: myUrl)
    }
    
    @IBAction func btnSite1(_ sender: UIButton) {
        //구글 연동
        loadWebPage(url: "http://www.googel.com")
    }
    
    @IBAction func btnSite2(_ sender: UIButton) {
        //다음 연동
        loadWebPage(url: "http://www.daum.net")
    }
    
    @IBAction func btnHtml(_ sender: UIButton) {
        let html = """
        <html>
            <head>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
            </head>
            <body>
                <h1>HYML String</h1>
                <p>String변수를 이용한 웹 페이지</p>
                <p><a href="http://jtbc.joins.com">JTBC</a>로 이동</p>
            </body>
        </html>
        """//엔터치는 것을 자동으로 인식. 두개짜리는 /를 붙여줘야함
        //<meta name="viewport" content="width=device-width, initial-scale=1.0"> : 기종별 해상도에 맞춰서 조정해주는 역할
        myWebView.loadHTMLString(html, baseURL: nil)//이렇게 해줘야 원하는 위치에 들어가게됨
    }
    
    @IBAction func btnFile(_ sender: UIButton) {
        let filePath = Bundle.main.path(forResource: "htmlView", ofType: "html") //파일 이름, 파일 확장자
        let myUrl = URL(fileURLWithPath: filePath! )//파일을 불러올땐 withpath
        let myRequest = URLRequest(url: myUrl)
        myWebView.load(myRequest)
    }
    
    @IBAction func btnStop(_ sender: UIBarButtonItem) {
        myWebView.stopLoading()
    }
    
    @IBAction func btnRefresh(_ sender: UIBarButtonItem) {
        myWebView.reload()
    }
    
    @IBAction func btnBack(_ sender: UIBarButtonItem) {
        myWebView.goBack()
    }
    
    @IBAction func btnForward(_ sender: UIBarButtonItem) {
        myWebView.goForward()
    }
    
}//ViewController

extension ViewController:WKNavigationDelegate{
    //Indicator 시작
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        myActivityIndicator.startAnimating()
        myActivityIndicator.isHidden = false // indicator를 보이게 만듦
    } //didCommit으로 검색
    
    //Indicator 종료 완료시
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }// didfinish로 검색
    
    //Error 발생 시
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }//didfail로 검색
}
