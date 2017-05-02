//
//  ViewController.swift
//  QuickSort
//
//  Created by iFlame on 5/2/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomNumbers = [42, 12, 88, 62, 63, 56, 1, 77, 88, 97, 97, 20, 45, 91, 62, 2, 15, 31, 59, 5]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let x = quickSort(newArray: randomNumbers)
        print(x)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func quickSort(newArray: [Int])->Array<Int> {
        
        let lblNumber = UILabel.init(frame: CGRect(x: 10, y: 30, width: UIScreen.main.bounds.width - 20, height: 30))
        lblNumber.numberOfLines = 3
        lblNumber.backgroundColor = UIColor.blue
        lblNumber.lineBreakMode = .byWordWrapping
        lblNumber.text = "\(newArray)"
        print("new array is : \(newArray)")
        self.view.addSubview(lblNumber)
        // newArray is an array of ints
        
        var less = [Int]()
        var equal = [Int]()
        var greater = [Int]()
        
        if newArray.count > 1{
            
            let pivot = newArray[0]
            print("pivot value is: \(pivot)")
            
            for x in newArray {
                if x < pivot{
                    less.append(x)
                   
                }
                if x == pivot {
                    equal.append(x)
                }
                if x > pivot {
                    greater.append(x)
                }
            }
            print("less : \(less)")
            print("greater : \(greater)")
            print("return array : ")
            print(quickSort(newArray: less)+equal+quickSort(newArray: greater))
            return (quickSort(newArray: less)+equal+quickSort(newArray: greater))
        }
        else {
            return newArray
        }
        
    }
    
   

}

