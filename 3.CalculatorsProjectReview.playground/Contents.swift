import UIKit

//MARK: - 프로퍼티 옵저버(willSet, didSet)

"""
프로퍼티 옵저버란 프로퍼티 값의 변화를 모니터링 해주는 역할을 한다.
"""

//- didSet
"메소드와 프로퍼티 값이 변경된 직후에 호출되는 메소드."

//- willSet
"값이 변경되기 직전에 호출되는 메소드."

"예제"
class People {
    var nickName: String = "정재" {
        
        willSet(newName) {
            print("\(nickName)에서 \(newName)로 변경 될 예정입니다.")
        }
        didSet(oldName) {
            print("\(oldName)에서 \(nickName)로 변경되었습니다.")
        }
        
    }
}
let myName: People = .init()
myName.nickName = "JeongJae"


//MARK: - @IBInspectable, @IBDesignable

//- @IBInspectable
"코드와 스토리보드의 인스펙터 영역을 이어주는 기능을 해준다."

//- @IBDesignable
"스토리보드에서 생성한 객체와 소스코드를 연결하여 해당 객체의 현재 속성을 스토리보드에 실시간으로 반영하여 보여준다."


//MARK: - truncatingRemainder(dividingBy:)
"""
원래 나머지 값을 구하기 위해서는 %연산자를 이용하여 구하지만,
%연산자는 Int타입끼리만 연산이 가능하기 때문에,
Double이나 Float 타입의 나머지 값을 구하기 위해서는
truncatingRemainder(dividingBy:) 메소드를 이용한다.
"""

"예제"
let Num: Double = 20.0

Num.truncatingRemainder(dividingBy: 3)
//Num % 3은 Num의 타입이 Double이기 때문에 컴파일 오류가 발생.


