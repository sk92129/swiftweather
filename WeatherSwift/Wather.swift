//
//  Wather.swift
//  WeatherSwift
//
//  Created by sean on 11/4/17.
//  Copyright © 2017 Cresent Engineering Lab. All rights reserved.
//

import Foundation


func tempToCelsius(degree: Double) -> Double {
    let cel = (degree - 32) * 5 / 9
    return cel
}



func tempToDegree(cel: Double) -> Double {
    let deg = (cel *  9 / 5)  + 32
    return deg
}


