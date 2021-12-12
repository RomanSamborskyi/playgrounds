import UIKit
//String це колекція,тому доступні багато властивостей притаманних колеціям
let str = "hello"
str.count
//Кожен елемент такої колекції це значення типу Character, тобто окремий символ який може бути представлений з допомогою юнікод скляру
//Значення типу String це впорядкована колекція,елементи в ній розташовані в послідовності закладеній розробником

let char : Character = "\u{E9}"
char

//Графем кластер - це поєднання юнікод склярів(або кодових точок), при візуальному порівнянні виглядаючи як один символ

let name = "e\u{301}lastic"
let index = name.startIndex

let firstChar = name[index]
let indexLastChar = name.endIndex
let lastCharIndex = name.index(before: indexLastChar)
name[lastCharIndex]
let secondCharIndex = name.index(after: name.startIndex)
name[secondCharIndex]
let fourCharIndex = name.index(name.startIndex, offsetBy:3)
name[fourCharIndex]

//Substring

let abc = "abcdefghijklmnopqrstuvwxyz"

let firstCharInd = abc.startIndex
let fourCharInd = abc.index(firstCharInd, offsetBy: 3)
let subAbc = abc[firstCharInd...fourCharInd]

let subAdcstr = abc[fourCharIndex...]
subAdcstr

