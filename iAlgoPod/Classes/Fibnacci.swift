import Foundation


public struct Algo {
    public func fibonacci(_ n: Int) -> [Int] {
        var result = [0, 1]
        guard n > 1 else { return result.prefix(n).map { $0 } }
        (2...n).forEach { i in
            result.append(result[i-1] + result[i-2])
        }
        return result
    }
}

@objcMembers
public class AlgoNS: NSObject {
    public override init() {
        
    }
    
    public func fibonacci(_ n: Int) -> Int {
        if n <= 1 {
            return n
        }
        return fibonacci(n - 1) + fibonacci(n - 2)
    }

    public func fibonacciSequence(upTo n: Int) -> [Int] {
        var result = [Int]()
        (0...n).forEach { i in
            result.append(fibonacci(i))
        }
        return result
    }
}
