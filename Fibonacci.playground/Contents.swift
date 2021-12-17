import UIKit

///Prints Fibonacci numbers from between parameter
/// - Parameters:
/// - between: What range should it be.
private func fibonacci(between: (Int, Int)) {
    var prevValue = 0
    var fibonacci = 1

    while true {
        fibonacci += prevValue
        prevValue = fibonacci - prevValue
        if fibonacci > between.1 {
            break
        }
        if fibonacci >= between.0 {
            print(fibonacci)
        }
    }
}

fibonacci(between: (750, 1000))

///Return Fibonacci numbers from between parameter
/// - Parameters:
/// - between: What range should it be.
private func fibonacciHighOrderSolution(between: (Int, Int)) -> [Int] {

    var fibonacciArray = [0, 1]

    //Adds the sum of the last two indexes to the fibonacciArray index
    repeat {
        fibonacciArray.append(fibonacciArray.suffix(2).reduce(0, +))
    } while fibonacciArray.last ?? 0 < between.1

    return fibonacciArray.filter({ $0 > between.0 && $0 < between.1 })
}
print(fibonacciHighOrderSolution(between: (750, 1000)))
