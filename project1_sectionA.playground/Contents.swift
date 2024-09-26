func isPrime(_ number: Int) -> Bool {
    // A prime number must be greater than 1
    if number <= 1 {
        return false
    } else if (number <= 3){ //numbers 2 and 3 are prime
        return true
    }
    
    // Check for factors from 2 to the square root of the number
    for i in 2...Int(Double(number).squareRoot()) {//excludes 1
        if number % i == 0 { //takes the factor that's not 1 and calls modulus to find other factors if it returns 0
            return false
        }
    }
    
    return true
}
isPrime(1)
isPrime(2)
isPrime(11)
isPrime(10)
