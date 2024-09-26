func validParenthesis(word: String) -> Bool{
    var counter:Int = 0 //this value should change as it will count how many ( parenthesis
    for x in word{ //loops through string for parenthesis
        if x == "("{
            counter+=1
        }else if x == ")"{
            if counter == 0{ //if there is a backwards facing parenthesis without a front it is automatically invalid
                return false
            }
            counter-=1 //subtract from the counter to make even if there is a backward parenthesis
        }
    }
    if counter == 0{
        return true
    }
    return false
}
validParenthesis(word: "((()))")
validParenthesis(word: "((())")
validParenthesis(word: "())")
