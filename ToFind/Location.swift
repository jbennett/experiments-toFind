//
//  Location.swift
//  ToFind
//
//  Created by Jonathan Bennett on 2016-02-02.
//  Copyright © 2016 Jonathan Bennett. All rights reserved.
//

import Foundation

struct Location {
  let name: String
  let id: Int
  let comments: [Comment]
  let longitude: Int
  let latitude: Int
}

extension Location: Equatable {}
func ==(lhs: Location, rhs: Location) -> Bool {
  return lhs.id == rhs.id
}