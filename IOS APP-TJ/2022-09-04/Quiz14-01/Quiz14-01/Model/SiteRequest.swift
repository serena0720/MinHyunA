//
//  SiteRequest.swift
//  Quiz14-01
//
//  Created by TJ on 2022/09/04.
//
import WebKit

struct SiteRequest{
    func loadWebpage(url: String) -> URLRequest{
        let myUrl = URL(string: url)
        return URLRequest(url: myUrl!)
    }

}
