//
//  Term.swift
//  Grade
//
//  Created by Marcus Osobase on 2019-12-24.
//  Copyright © 2019 Keystack. All rights reserved.
//

import UIKit

class Term: NSObject {
  var title: String
  var courses: [Course] = []
  var termAverage: Double { return getTermAverage() }
  
  init(title: String) {
    self.title = title
  }
  
  private func getTermAverage() -> Double {
    guard !courses.isEmpty else { return 0.0 }
    return courses.map{$0.courseAverage}.reduce(0.0, +) / Double(courses.count)
  }

}
