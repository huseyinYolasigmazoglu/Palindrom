//
//  VirtueTask.swift
//  VirtueTask
//
//  Created by Huseyin Yolasigmazoglu on 23/01/2021.
//

import Foundation


class VirtueTask {
    
    func checkAnyPermutationisPalindrom(input:String) -> Bool {
        
        var manuplatedInput = input.lowercased()
        
        //Allow only letters and numbers. any other character is igonered.
        manuplatedInput = manuplatedInput.replacingOccurrences( of:"[^a-z0-9]", with: "", options: .regularExpression)
        
        
        if manuplatedInput.count == 0 {
            return false
        }
        
        var histogramDictionary = [Character:Int]()
        
        for item in manuplatedInput {
            
            histogramDictionary[item,default:0] += 1
        }
        
        let result = numberOfOddValuesInHistogram(histogramDictionary)
        
        if result >= 2 {
            return false
        }
        else
        {
            return true
        }
        
    }
    
    func numberOfOddValuesInHistogram(_ histogram :[Character:Int]) -> Int {
        
        var numberOfOddValues : Int = 0
        
        for item in histogram {
            
            if  item.value % 2 != 0 {
                numberOfOddValues += 1
            }
        }
        return numberOfOddValues
    }
}
