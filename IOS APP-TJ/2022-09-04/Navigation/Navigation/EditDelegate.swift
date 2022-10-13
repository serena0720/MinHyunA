//
//  EditDelegate.swift
//  Navigation
//
//  Created by TJ on 2022/09/04.
//

import Foundation

// 작업 지시서
protocol EditDelegate{
    func didMessageEditDone(_ controller: EditViewController, message: String)
    func didImageOnOffDone(_ controller: EditViewController, isOn: Bool)
}
