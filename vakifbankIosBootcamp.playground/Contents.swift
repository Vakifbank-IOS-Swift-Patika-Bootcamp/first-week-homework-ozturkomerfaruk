import Cocoa

print("------------------------------Soru 1------------------------------")
/*
 Palindrome. Verilen Stringin palindrome olup olmadığını kontrol eden bir fonksiyon yazınız.
 */

func Question1 (_ str: inout String) -> Bool {
    // Eğer bir sayı girilecek bu değer - ile başlayacak olursa
    if str.first == "-" {
        str.removeFirst()
    }
    
    // Eğer boş bir şey verilecek olursa
    if str == "" {
        return false
    }
    return str == String(str.reversed())
}

// Sayı da girilebilir
// removeFirst() fonksiyonunu kullanmak istediğim için inout kullanmam gerekti. Mutate'den dolayı. Bu sebeple & - Ampersand kullanıyorum.
var Question1Input = "Omer"
Question1(&Question1Input) ? print("Palindrom") : print("Palindrom değil")

print("------------------------------Soru 2------------------------------")
/*
 Verilen bir array içerisindeki her bir elemanın sayısını veren bir fonksiyon yazınız.
 */

// T tipinde Int, Double, String değerler alabilir.
func Question2<T>(_ arr: inout [T]) -> Dictionary<String, Int> {
    // key, value Dictionary oluşumu.
    var dict: [String:Int] = [String:Int]()
    // Gelen değerleri String'e dönüştürme
    var strArr = arr.map {
        String(describing: $0)
    }
    
    // Her bir element tekrar ediliyorsa value'yi 1 artırma yoksa 0 koyma
    for e in strArr {
        print(e)
        dict[e] = (dict[e] ?? 0) + 1
    }
    return dict
}

var question2v1 = [1,2,2,3,4,5,1,1,2,3,1]
var question2v2 = ["a", "b", "f", "a", "b", "a"]
var question2v3 = [1.1, 2.3, 1.1231, 1.1231, 1.1, 1.1, 4.6, 7.8788]
// inout kullanımı ile yine & konuluyor
print(Question2(&question2v2))

print("------------------------------Soru 3------------------------------")
/*
 "*" Karakterinden piramit oluşturan fonksiyonu yazınız. Parametre olarak kaç katlı olacağı alınsın.
 */
print("Number of Rows: 5")

func Question3(numberOfRows: Int) {
    if numberOfRows < 0 {
        print("It cannot be less than 0!")
    } else {
        /*for i in 0..<numberOfRows {
         for _ in 0...i {
         print("*", terminator: "")
         }
         print("\n")
         }*/
        
        for i in 0...numberOfRows {
            print(String.init(repeating: "*", count: i))
        }
    }
}

Question3(numberOfRows: -5)

print("------------------------------Soru 4------------------------------")
/*
 Yazdığınız piramit fonksiyonun çıktısını ortalı olacak şekilde yazınız. Örn:
 */
print("Number of Rows: 5")

func Question4(numberOfRows: Int) {
    if numberOfRows < 0 {
        print("It cannot be less than 0!")
        
    } else {
        for i in 0...numberOfRows {
            print(String.init(repeating: " ", count: numberOfRows-i) +
                  String.init(repeating: "*", count: 2*i+1))
        }
    }
}

Question4(numberOfRows: 5)
