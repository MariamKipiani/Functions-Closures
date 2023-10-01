import UIKit

//Task1

func factorial(_ n: Int) -> Int {
    if n == 0 || n == 1 {
        return 1
    }
    var result = 1
    for i in 2...n {
        result *= i
    }
    return result
}

let result = factorial(5)
print(result)

print("-----------------------------------------------------------------------")


//Task2

func generateFibonacci(n: Int) -> [Int] {
    var fibonacciNumbers = [Int]()
    if n <= 0 {
        return fibonacciNumbers
    }
    
    var a = 0
    var b = 1
    fibonacciNumbers.append(a)
    
    for _ in 1..<n {
        let next = a + b
        fibonacciNumbers.append(next)
        a = b
        b = next
    }
    
    return fibonacciNumbers
}

let fibonacciSequence = generateFibonacci(n: 20)
print(fibonacciSequence)

print("-----------------------------------------------------------------------")


//Task3

func isPalindrome(_ str: String) -> Bool {
    var input = str.lowercased().replacingOccurrences(of: " ", with: "")
    var reversed = String(input.reversed())
    return input == reversed
}


var palindrome1 = "racecar"
var palindrome2 = "A man a plan a canal Panama"
var notPalindrome = "cats"

print(isPalindrome(palindrome1))
print(isPalindrome(palindrome2))
print(isPalindrome(notPalindrome))

print("-----------------------------------------------------------------------")

//Task3 (მზა ფუნქციის გამოყენებით)

func isPalindrome1(_ str: String) -> Bool {
    let input = str.lowercased().replacingOccurrences(of: " ", with: "")
    return input == String(input.reversed())
}

let palindrome3 = "racecar"
let palindrome4 = "A man a plan a canal Panama"
let notPalindrome1 = "cats"

print(isPalindrome(palindrome1))
print(isPalindrome(palindrome2))
print(isPalindrome(notPalindrome))

print("-----------------------------------------------------------------------")

//Task4

func printAndReturnSquaredValues(_ array: [Int]) -> [Int] {
    var squaredValues: [Int] = []
    
    for number in array {
        let squared = number * number
        print("The square of \(number) is \(squared)")
        squaredValues.append(squared)
    }
    
    return squaredValues
}

let numbers = [1, 2, 3, 4, 5]
let squaredNumbers = printAndReturnSquaredValues(numbers)

print("Squared values: \(squaredNumbers)")



print("-----------------------------------------------------------------------")


//Task5

func countWords(_ input: String) -> [String: Int] {
    
    let cleanedInput = input.lowercased().components(separatedBy: CharacterSet.letters.inverted).joined(separator: " ")
    
    
    let words = cleanedInput.components(separatedBy: " ")
    var wordCount = [String: Int]()
    
    for word in words {
        if !word.isEmpty {
            if let count = wordCount[word] {
                wordCount[word] = count + 1
            } else {
                wordCount[word] = 1
            }
        }
    }
    
    return wordCount
}

let inputText = "TBC x USAID, tbc it academy, we are in TBC academy."
let wordCounts = countWords(inputText)
print(wordCounts)

print("-----------------------------------------------------------------------")


//Task6

let binary: (Int) -> String = { number in
    var binaryString = ""
    var num = number
    while num > 0 {
        let bit = num % 2
        binaryString = String(bit) + binaryString
        num /= 2
    }
    return binaryString
}

let decimalNumber = 98
let orobiti = binary(decimalNumber)
print("ათიბით სისტემაში რიცხვი \(decimalNumber)-ის ორობითი ჩანაწერია: \(orobiti)")

print("-----------------------------------------------------------------------")


//Task7

let numbersArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

let filterOddNumbers: ([Int]) -> [Int] = { numbers in
    return numbers.filter { $0 % 2 == 0 }
}

let evenNumbers = filterOddNumbers(numbersArray)
print(evenNumbers)
print("-----------------------------------------------------------------------")

//Task8


let numbersMasivi = [1, 2, 3, 4, 5]

let performActionOnEachElement: ([Int]) -> [Int] = { inputArray in
    var resultArray = [Int]()
    
    for number in inputArray {
       
        let modifiedNumber = number * 10
        resultArray.append(modifiedNumber)
    }
    
    return resultArray
}

let modifiedNumbers = performActionOnEachElement(numbersMasivi)
print(modifiedNumbers)

print("-----------------------------------------------------------------------")



//Task10

func filterAndConvertToEvenNumbers(_ strings: [String]) -> [Int] {
    let ricxvebi = strings.compactMap { Int($0) }
    let evenNumbers0 = ricxvebi.filter { $0 % 2 == 0 }
    return evenNumbers0
}

let stringArray = ["1", "2", "3", "4", "5", "6"]
let evenNumbersArray = filterAndConvertToEvenNumbers(stringArray)

print(evenNumbersArray)
print("-----------------------------------------------------------------------")


//Task9

import Foundation



func printSumWithDelay(_ array: [Int], completion: @escaping (Int) -> Void) {
    DispatchQueue.global().asyncAfter(deadline: .now() + 3) {
        let sum = array.reduce(0, +)
        completion(sum)
    }
}

let numbers100 = [1, 2, 3, 4, 5]

printSumWithDelay(numbers100) { sum in
    print("Sum of the array: \(sum)")
}

RunLoop.main.run()

//ეს საფუძვლიანად მაინც ვერ გავიგე, ბევრი ვეჩალიჩე და რესერჩის საფუძველზე მგონი მუშაობს მარა არ ვიცი რააა, დავამუღამებ :)
print("-----------------------------------------------------------------------")

//p.s Task10ს და Taks9ს ადგილები შევუცვალე, რადგან მეცხრეს მერე აღარაფერს პრინტავდა, ვიცი ჩითერობაა, მაგრამ ვერ მივხვდი რას ვაშავებდი და....



//p.p.s იმედია სწორედ გავიგე დავალებები, ცოტა ბუნდოვანია მაინც ფუნქციების თემა, მაგრამ პრაქტიკაში ვისწავლი. (ამ თემაზე რამე ლიტერატურა ან ნოუთები თუ გაქვს გადავხედავდი სიამოვნებით)
