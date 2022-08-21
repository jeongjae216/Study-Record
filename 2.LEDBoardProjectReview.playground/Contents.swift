import UIKit

//MARK: -prepare(for segue: UIStoryboardSegue, sender: Any?)

 """
 ViewController 간에 데이터를 주고받기 위한 메소드이다.
 VIewController1 과 ViewController2가 있고,
 ViewController1 에서 ViewController2 로 데이터를 전달할 때,
 prepare method를 이용하여 전달한다.
 """
 
 "예제"
 class ViewController1: UIViewController {
     let text: String = "데이터"
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if let viewcontroller2 = segue.destination as? ViewController2 {
             viewcontroller2.recievedtext = self.text
         }
     }
 }
 class ViewController2: UIViewController {
     var recievedtext: String?
 }
 

//MARK: -삼항연산자

 """
 경우의 수가 두가지인 경우 if else 구문 대신에 삼항연산자를 통해 간단하게 표현이 가능하다.
 """

 "예제"
 let myAge: Int = 26
 let yourAge: Int = 30

 myAge < yourAge ? print("당신은 나보다 나이가 많습니다") : print("당신은 나보다 어립니다")
//삼항연산자의 앞에는 타입이 Bool인 표현식이 오고, ? 뒤에 코드에서는 콜론(:) 앞 부분은 표현식이 참일 때, 뒷 부분은 거짓일 때 실행되는 코드가 온다.
  

//MARK: -Nil Coalesing Operator

"""
nil 병합연산자라고도 불리우며, 옵셔널에 대한 언래핑을 더욱 쉽고 간단하게 할 수 있게 해준다.
"""

"예제"
let name: String? = "JeongJae"

print("Hello, " + (name ?? "What's your name?"))
//name의 값이 nil일 아닐 때 프린트 값은 "Hello, JeongJae"가 출력 되고, name의 값이 nil일 경우엔 ??연산자 뒤에 있는 "Hello, What's your name?"이 출력된다.
