//
//  BusinessSearch.swift
//  City Sight App
//
//  Created by Muhammadayubxon on 18/01/22.
//

import Foundation

struct BusinessSearch:Decodable{
    
    var businesses=[Business]()
    var total=0
    var region=Region()
}

struct Region:Decodable{
    var center=Coordinate()
}

