import UIKit

var str = "Hello, playground" // Değişken tanımlama
str = "Hello, World"
let constStr = str // Sabit tanımlama

var nextYear: Int
var bodyTemp: Float
var hasPet: Bool

var arrayOfInts: [Int] // Array tanımlama -> Array içerisinde aynı türden bir dizi barındırır
var dictionaryOfCapitalsByCountry: [String: String] // Dictionary(Hash) tanımlama -> Dictionary Key: Value
var winningLotteryNumbers: Set<Int> // Set tanımlama -> Set array ile aynı mantık ama içerisinde birden fazla aynı eleman bulunduramaz ve rastgele gelir

let number = 42 // Swift type inference bir dil olduğu için tür belirtmemize gerek yok kendisi otomatik tanımlıyor yandaki örnekteki değişkenin tipini öğrenmek için değişkene "option + click" ile ulaşabiliriz.

let fmStation = 91.1

var countingUp = ["one", "two"] // Arrayde index numaraları 0 dan başlar yani 0 = one , 1 = two
var nameByParkingSpace = [13: "Ahmet", 56: "Fatma"]

countingUp[1] // çıktısı two

let emptyString = String() //çıktısı ""
let emptyArrayOfInts = [Int]() //çıktısı []						// Eğer boş bir değişken oluşturulacaksa tipin sonuna "()" konulur
let emptySetOfFloats = Set<Float>() //çıktısı Set([])

let defaultNumber = Int() // Boş Int oluşturduğumuzda çıktısı her zaman 0 olur
let defaultBool = Bool() // Boş Boolean oluşturduğumuzda çıktısı her zaman false olur


// içerisine herhangi bir parametre almadan direkt size sonuç gösteren yapılara değer(property) deniyor
countingUp.count // mesela yan taraftaki örnekte ".count" propertysi direkt olarak çıktısı 2 olarak verir

var anOptionalFloat: Float? // yandaki örnekte ? bu değişkenin içerisinde Float değeri olabilir ya da nil(hiçbir şey) olmayabilir. Yani kısaca ? bu değişkende değer olabilir de olmayabilir de diyor

var reading1: Float?
var reading2: Float?
var reading3: Float?

reading1 = 9.8
reading2 = 9.4
reading3 = 9.5

let avgReading = (reading1! + reading2! + reading3!) / 3 // ! koyduğumuz zaman diyoruz ki bu değişken kesinlikle bir değer taşıyor ve bu işleme unwrapping deniyor
// Ama sektörde genellikle ! kullanmamaya dikkat edilir çünkü kesin değer var dediğimiz değişkende değer yoksa program crash verir peki o zaman nasıl yapacağız derseniz işte burada devreye if let kavramı giriyor

if let r1 = reading1, let r2 = reading2, let r3 = reading3 {  // reading1 içerisinde bir değer varsa r1'e eşitliyor(aynısı r2 ve r3 içinde geçerli) yoksa else bloğu çalışıyor. Mesela r1'i eşitledi r2'ye geldi ama r2'de değer yok o zaman r3'e bakmadan else bloğunu çalıştırıyor
	(r1 + r2 + r3) / 3
} else {
	print("Error")
}

// isimlerin r1,r2,r3 olmasına gerek yok aynı da olabilir mesela  							if let reading1 = reading1, let reading2 = reading2, let reading3 = reading3                                                                                                              					(reading1 + reading2 + reading3) / 3                                                          şeklinde de olabilir zaten r1,r2,r3 dediğimiz değişken isimleri localde çalışacaktır.


for i in 0..<5 {      // 1'den 5'e kadar 5 dahil değil 0 1 2 3 4 yazdıracak
	print(i)
}

for string in countingUp {      // aynı şekilde bir array'i de döngüye sokabiliriz
	print(string)
}

for (index, string) in countingUp.enumerated() {
print("\(index): \(string)")
}

for (key, value) in nameByParkingSpace {
	print("\(key): \(value)")
}



enum PieType {      // birden fazla kesin tanımlama yapabileceğimiz değerler için enum kullanabiliriz mesela güneş sistemindeki gezegenler (venüs,mars,dünya vb...) ya da yönler de olur (kuzey,güney,doğu,batı)
	case apple
	case apricot
	case peach
	}

let favoritePie = PieType.peach  // Yukarıda enum tanımladığımız için artık PieType aynı Int,String gibi bir türe dönüştü

let name: String
                                                
switch favoritePie {            // Switch case yapısı ile if else yapısı aslında aynı işlevi görmektedir
case .apple:
	name = "Apple Pie"
case .apricot:
	name = "Apricot Pie"
case .peach:
	name = "Peach Pie"
}


let macOSVersion: Int = 17
switch macOSVersion {
case 0...8:
	print("A big cat")
case 9:
	print ("Mavericks")
case 10:
	print ("Yosemite")
default:
	print("Wow, new Mac version")
}

/*
																		Class ile Struct arasındaki farklar
																 Class                       				Struct
															* Reference Type              				* Value Type
															* Inheritence(Kalıtım) Var    				* Inheritence(Kalıtım) Yok
															* Üzerine class alabiliyor    				* Üzerine sadece protocol alabiliyor
															* Değişiklik yapınca memoryde değişiyor     * Değişiklik yapınca memoryde kopyalanıyor
 */


class ClassName {
	
	var pieCount: Int
	
}

struct StructName {
	
	var pieCount: Int
	
}
