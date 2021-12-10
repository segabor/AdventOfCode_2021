import Foundation

let input: AnyIterator<String> = AnyIterator {
  return readLine()  
}


var counter = UInt(0)

var prevLine: String? = input.next()
while let line = input.next() {
  if let l = prevLine,
    let d0 = UInt(l),
    let d1 = UInt(line),
    d0 < d1 {
    counter += 1
  }  

  prevLine = line
}

print(counter)
