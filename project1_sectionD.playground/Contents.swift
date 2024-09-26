import Foundation
print("Please choose between rock paper and scissors!")
guard let userChoice = readLine() else{//ensures there is user input
    print("no input")
    exit(1)
}
var cpuChoice = Int.random(in:1...3)//cpu choice is a random int which represents the rock paper scissors
switch cpuChoice{//switch statements and if/else statements to represent different cases
    case 1:
        if userChoice == "rock"{
            print("It's a tie!")
        }else if userChoice == "scissors"{
            print("Computer wins!")
        }else if userChoice == "paper"{
            print("You win!")
        }else{
            print("invalid input :(")
        }
    case 2:
        if userChoice == "paper"{
            print("It's a tie!")
        }else if userChoice == "rock"{
            print("Computer wins!")
        }else if userChoice == "scissors"{
            print("You win!")
        }else{
            print("invalid input :(")
        }
    case 3:
        if userChoice == "scissors"{
            print("It's a tie!")
        }else if userChoice == "paper"{
            print("Computer wins!")
        }else if userChoice == "rock"{
            print("You win!")
        }else{
            print("invalid input :(")
        }
    default:
        print("invalid cpu choice")
}



