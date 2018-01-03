//: Playground - noun: a place where people can play

// last checked with Xcode 9.0b4
#if swift(>=4.0)
print("Hello, Swift 4!")
#endif

extension String {
  func indexOf(_ pattern: String) -> String.Index? {

    for i in self.indices {
      var j = i
      var found = true
      for p in pattern.indices {
        if j == self.endIndex || self[j] != pattern[p] {
          found = false
          break
        } else {
            j = self.index(after: j)
        }
      }
      if found {
        return i
      }
    }
    return nil
  }
}

// A few simple tests

let s = "Hello, World"
s.indexOf("World")  // 7

let animals = "🐶🐔🐷🐮🐱"
animals.indexOf("🐮")  // 6
