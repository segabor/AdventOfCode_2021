import Foundation

guard let firstLine = readLine() else {
  print("0")
  exit(0)
}


var counter = UInt(0)

var prevLine: String? = firstLine
while let line = readLine() {
  if let l = prevLine,
    let d0 = UInt(l),
    let d1 = UInt(line),
    d0 < d1 {
    counter += 1
  }  

  prevLine = line
}

print(counter)
