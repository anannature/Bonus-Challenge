import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    calculateFibonacci()
    calculateFilterArray()
  }

  //เขียน program generate natar Fibonacci (0, 1, 1, 2, 3, 5, 8, 13, ...)
  func calculateFibonacci() {
    var numberOne = 0
    var numberTwo = 1
    var results = 0
    let amounts = 15
    for _ in 0..<amounts {
      results = numberOne
      numberOne = numberTwo
      numberTwo = results + numberTwo
      print("calculateFibonacci \(results)")
    }
  }
  
  //เขียนโค๊ดในการ filter array จาก array ของชุดตัวเลข 2 ชุด โดยให้สมาชิกของ array ชุดแรกเหลือแค่สมาชิกที่มีอยู่ใน array ชุดที่สองเท่านั้น (ห้ามใช้ฟังก์ชันสำเร็จรูป)
  func calculateFilterArray() {
    let numberOne = [1, 2, 4, 5, 7, 8, 9]
    let numberTwo = [2, 4, 7]
    var resultsOne:[Int] = []
    
    for i in 0...numberOne.count - 1 {
      for j in 0...numberTwo.count - 1 {
        if numberOne[i] == numberTwo[j] {
          resultsOne.append(numberOne[i] )
        }
      }
    }
    print("calculateFilterArray \(resultsOne)")
  }

}

