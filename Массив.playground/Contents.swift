import UIKit

var newArray:[[Int]] = [[10,11,12],[7,8,9],[1,2,3],[4,5,6]]
newArray.sort{$0[0]<$1[0]}
var simple = [1,2,3,4,5,6,7]
simple.append(8)
simple.dropLast(2)
var simpleCount = simple.count
var count = simple[2]+simple[0]
var countAoA = newArray[1][1]+newArray[3][1]
var newSet:[[String]:[Int]?] = [["Samborskyi"]:[5,4],["Samborska"]:[4,5],["Scherba"]:[3,5],["Scherba2"]:[4,1]]
var newSet2:[[String]:[Int]?] = [["Kogut"]:[2,3],["Stasiv"]:[4,4],["Nadrichnyi"]:[3,3],["Loboda"]:[3,1],["Loboda1"]:[5,1]]

    //Функція для розрахунку середнього балу кожного
func midlMark(Dictionary: [[String]:[Int]?])->(){
    for (name,marks) in Dictionary {
    let midl = Double(((marks?[0])!)+((marks?[1])!))/2
    if midl <= 3 {
        print("Середній бал - ", name[0], midl, "Це погано" )
    }else{
        print("Середній бал - ", name[0], midl, "Це гарна оцінка")
    }
  }
}
//Функція для розрахунку загального балу гргупи
func midlOfTheGroup(Dictionary: [[String]:[Int]?])->(){
    let newArray = Dictionary.map{$0.1!}
    let countArrays = newArray.reduce([],+)
    let total = countArrays.reduce(0,+)
    print("Загальний бал групи - ", total)
}

typealias Cheasmans = [String:(alpha:Character,num:Int)?]
var Cheasman:Cheasmans = ["Білий кінь":("b",3),"Чорний кінь":("f",6),"Білий Слон":("b",8),"Чорний слон":(nil)]
//Функція яка приймає словник і перевіряє його значення
func chesAnaliser(Figure:[String:(alpha:Character,num:Int)?])->(){
    for (name,coordinats) in Figure {
        if coordinats != nil{
            let coordinats1 = coordinats!
            print("Координати \(name)",coordinats1.alpha,coordinats1.num )
        }else{
            print(name," - Вбито")
            
        }
    }
}

//Словник з годинами і датами
var setOfHouers:[Double:[Int]?]=[1.01:[11],2.01:[11],3.01:[8],4.01:[8],5.01:[8],6.01:[8],7.01:[12],8.01:[10],9.01:[11],10.01:[12]]
//Функція для розрахунку зп.по різних тарифах.Функція приймає за вхідний параметр словник з датою та кількістю годин
func countOfZp(Set:[Double:[Int]?])->(){
    //Створення масиву масивів із значень словника
    let count = Set.map{$0.1!}
    //Створення масиву із масиву масивів
    let makeArray = count.reduce([],+)
    //Підрахунок загальної кількості годин
    let totalHouers = makeArray.reduce(0,+)
    print("Кількість годин ",totalHouers)
    //Підрахунок зароблених коштів на основі різних тарифів за годину
        let total: [Int] = makeArray.map{
            if $0 <= 8 {
                return $0*140
            }else{
                return $0*120
               }
         }
    //Підрахунок загальної суми зароблених коштів
    let globalTotal = total.reduce(0,+)
    print("Загальна сумма ",globalTotal)
}
    

countOfZp(Set: setOfHouers)
