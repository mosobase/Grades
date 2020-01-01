//
//  Course.swift
//  Grade
//
//  Created by Marcus Osobase on 2019-12-24.
//  Copyright © 2019 Keystack. All rights reserved.
//

import UIKit

class Course: NSObject {
  var items: [Item] = []
  var title: String
  var courseAverage: Double { return getCourseAeverage() }
  
  init(title: String) {
    self.title = title
  }
  
  private func getCourseAeverage() -> Double {
    guard !items.isEmpty else { return 0.0 }
    return items.map{$0.grade}.reduce(0.0, +) / Double(items.count)
  }
  
}
