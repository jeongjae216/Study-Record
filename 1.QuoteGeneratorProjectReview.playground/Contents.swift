import UIKit

//MARK: -AutoLayout

 //- Hugging Priority
 """
 UILable과 같은 오브젝트에 대해 공간이 남을 때, 어느 것이 더 커질 것이지에 대해 설정해주는 우선순위 값.
 Hugging Priority가 높으면 자신의 크기를 유지, 작으면 크기가 늘어나거나 커진다.
 """
 
 //- Compression Resistance Priority
 """
 UILable과 같은 오브젝트에 대해 공간이 부족할 때, 어느 것이 더 작아질 것이지에 대해 설정해주는 우선순위 값.
 Compression Resistance Priority가 높으면 자신의 크기를 유지, 작으면 크기가 줄어들거나 작아진다.
 """
 

//MARK: -랜덤함수

 //- arc4random() -> UInt32
 """
 0부터 (2^32 - 1) 사이의 무작위 수를 반환.
 """
 "arc4random() 예제"
 let randomNum1: UInt32 = arc4random()
 print(randomNum1)
  
 //- arc4random_uiform(UInt32) -> UInt32
 """
 0부터 (파라미터(UInt32 타입)로 넣은 값 - 1) 사이의 무작위 수를 반환.
 """
 "arc4random_uniform() 예제"
 let randomNum2: UInt32 = arc4random_uniform(10)
 print(randomNum2)
  
 //- drand48() -> Double
 """
 0부터 1.0 사이의 무작위 수를 반환.
 """
 "drand48() 예제"
 let randomNum3: Double = drand48()
 print(randomNum3)

