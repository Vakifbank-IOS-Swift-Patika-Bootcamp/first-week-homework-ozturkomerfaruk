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
