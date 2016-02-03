//
//  Client.swift
//  ToFind
//
//  Created by Jonathan Bennett on 2016-02-02.
//  Copyright © 2016 Jonathan Bennett. All rights reserved.
//

import Foundation

let amanda = Author(name: "Amanda Lin", imageName: "AmandaLin")
let joe = Author(name: "Joe Blow", imageName: "JoeBlow")
let peter = Author(name: "Peter Allan", imageName: "PaulAllan")
let sue = Author(name: "Sue Smith", imageName:" SueSmith")

let comment1 = Comment(date: NSDate(), content: "The federal beach act requires states that receive funding to develop a risk-based beach evaluation and classification plan and apply it to …", author: peter)
let comment2 = Comment(date: NSDate(), content: "The federal beach act requires states that receive funding to develop a risk-based beach evaluation and classification plan and apply it to …", author: amanda)
let comment3 = Comment(date: NSDate(), content: "The federal beach act requires states that receive funding to develop a risk-based beach evaluation and classification plan and apply it to …", author: sue)
let comment4 = Comment(date: NSDate(), content: "The federal beach act requires states that receive funding to develop a risk-based beach evaluation and classification plan and apply it to …", author: joe)

let syracuse = Location(name: "Syracuse", id: 7911847, comments: [comment1, comment2, comment3, comment4], longitude: 24, latitude: 17)
let atcoastal = Location(name: "Atcoastal", id: 152368, comments: [comment4, comment3, comment1], longitude: 98, latitude: 46)


class Client {
  
  func getLocations() -> [Location] {
    return [atcoastal, syracuse]
  }
  
}