//
//  EditDelegate.swift
//  NavigationProtocol
//
//  Created by Hyun A Song on 2022/09/04.
//

import Foundation

//protocol은 작업지시거같은것. func의 이름을 정함
protocol EditDelegate{
    func didMessageEditDone(_ controller: EditViewController, message:String)
    func didImageOnOffDone(_ controller: EditViewController, isOn:Bool)
}// 서로 이름을 맞춰서 정보를 공유할 수 있도록

