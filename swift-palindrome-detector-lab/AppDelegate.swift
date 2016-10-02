//
//  AppDelegate.swift
//  swift-palindrome-detector-lab
//
//  Created by Flatiron School on 9/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        var stringIsPalindromeVar = stringIsPalindrome("racecar")
        print("Testing(1) if  * \("racecar") * is a \(stringIsPalindromeVar) palindrome.")
        
        stringIsPalindromeVar = stringIsPalindrome("racecars")
        print("Testing(2) if * \("racecars") * is a \(stringIsPalindromeVar) palindrome.")
        
        stringIsPalindromeVar = stringIsPalindrome("Kanakanak")
        print("Testing(3) if * \("Kanakanak") * with mixed upper and lowercase letters is \(stringIsPalindromeVar) palindrome.")
        
        stringIsPalindromeVar = stringIsPalindrome("never odd or even")
        print("Testing(4) if * \("never odd or even") * string contaning spaces is \(stringIsPalindromeVar) palindrome.")
        
        stringIsPalindromeVar = stringIsPalindrome("this is not a palindrome")
        print("Testing(5) if * \("this is not a palindrome") * string contaning spaces is \(stringIsPalindromeVar) palindrome.")
        
        
        var stringByReversing =  stringByReversingString("racecars")
        print("The reversed * \("racecars") * string is '\(stringByReversing)'.")
        
        stringByReversing =  stringByReversingString("racecar")
        print("The reversed * \("racecar") * string is '\(stringByReversing)'.")
        
        var removedSpaceAndPunctuation = stringIsPalindrome("Flee to me, remote elf?")
        //print(removeWhightspaceAndPunctuation("Sentence * \("Flee to me, remote elf.") * after whightspace and punctuation removed:\(removedSpaceAndPunctuation)"))
        
        removedSpaceAndPunctuation = stringIsPalindrome("Norma is as selfless as I am, Ron.")
        //print(removeWhightspaceAndPunctuation("Sentence: * \("Norma is as selfless as I am, Ron.") * after whightspace and punctuation removed:\(removedSpaceAndPunctuation)"))
        
        removedSpaceAndPunctuation = stringIsPalindrome("No sir! Away! A papaya war is on.")
        //print(removeWhightspaceAndPunctuation("Sentence: * \("No sir! Away! A papaya war is on.") * after whightspace and punctuation removed:\(removedSpaceAndPunctuation)"))
        
        return false
    }
    
    
    
    func stringIsPalindrome(string: String) -> Bool {
        let punctuationOffString = removeWhightspaceAndPunctuation(string)
        let stringToCheck = stringByReversingString(punctuationOffString)
        
        if stringToCheck == punctuationOffString {
            print("true")
        return true
        } else {
            print("false")
            return false
        }
    }
    
    
    
    func stringByReversingString(string: String) -> String {
        
        var reversedString = ""
        for character in string.lowercaseString.characters {
            reversedString.insert(character, atIndex: reversedString.startIndex)
        }
        print("'\(reversedString)' is a string we got by reversing string '\(string)'.")
        return reversedString
    }
    
    
    
    func removeWhightspaceAndPunctuation(string: String) -> String {
        let punctuationArray = [" " ,"." ,"," ,":" , "!", "?"]
        var reversedWhitespaceRemovedString = string.lowercaseString
        for i in 0...(punctuationArray.count) - 1 {
            reversedWhitespaceRemovedString = reversedWhitespaceRemovedString.stringByReplacingOccurrencesOfString(punctuationArray[i], withString:"")
        }
        print("Sentence: '\(string)' with removed punctuation: '\(reversedWhitespaceRemovedString)'")
        return reversedWhitespaceRemovedString
    }
}
