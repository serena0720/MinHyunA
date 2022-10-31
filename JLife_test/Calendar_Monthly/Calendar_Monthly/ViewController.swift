//
//  ViewController.swift
//  Calendar_Monthly
//
//  Created by Hyun A Song on 2022/10/15.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectoinView: UICollectionView!
    @IBOutlet weak var lblMonthly: UILabel!
    
    var selectedDate = Date()
    var totalSquares = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCellsView()
        setMonthView()
    }
    
    func setCellsView(){
        let width = ( collectoinView.frame.size.width - 2 ) / 8
        let height = ( collectoinView.frame.size.height - 2 ) / 8
        
        let flowLayout = collectoinView.collectionViewLayout as! UICollectionViewFlowLayout
        flowLayout.itemSize = CGSize(width: width, height: height)
        
    }
    
    func setMonthView(){
        totalSquares.removeAll()
        
        let daysInMonth = CalendarHelper().daysInMonth(date: selectedDate)
        let firstDayOfMonth = CalendarHelper().firstOfMonth(date: selectedDate)
        let startingSpaces = CalendarHelper().weekDay(date: firstDayOfMonth)
        
        var count: Int = 1
        
        //월달력 빈칸에 빈글씨를 넣는건데..
        while(count <= 42){
            if(count <= startingSpaces || count - startingSpaces > daysInMonth){
                totalSquares.append("")
            }else{
                totalSquares.append(String(count - startingSpaces))
            }
            count += 1
        }
        lblMonthly.text = CalendarHelper().monthString(date: selectedDate) +  " " + CalendarHelper().yearString(date: selectedDate)
        collectoinView.reloadData()
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        totalSquares.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "calCell", for: indexPath) as! CalendarCell
        cell.lblDay.text = totalSquares[indexPath.item]
        
        return cell
    }
    
    @IBAction func btnNextMonth(_ sender: UIButton) {
        selectedDate = CalendarHelper().plusMonth(date: selectedDate)
        setMonthView()
    }
    
    @IBAction func btnPreviousMonth(_ sender: UIButton) {
        selectedDate = CalendarHelper().minusMonth(date: selectedDate)
        setMonthView()
    }
    
    override open var shouldAutorotate: Bool{
        return false
    }
}

