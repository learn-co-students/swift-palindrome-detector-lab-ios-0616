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
        
        let stringIsPalindromeVar1 = stringIsPalindrome("racecar")
        print("Testing(1) if 'racecar' is \(stringIsPalindromeVar1) palindrome.")
        
        let stringIsPalindromeVar2 = stringIsPalindrome("racecars")
        print("Testing(2) if 'racecars' is \(stringIsPalindromeVar2) palindrome.")
        
        let stringIsPalindromeVar3 = stringIsPalindrome("Kanakanak")
        print("Testing(3) if 'Kanakanak' with mixed upper and lowercase letters is \(stringIsPalindromeVar3) palindrome.")
        
        let stringIsPalindromeVar4 = stringIsPalindrome("never odd or even")
        print("Testing(4) if 'never odd or even' string contaning spaces is \(stringIsPalindromeVar4) palindrome.")
        
        let stringIsPalindromeVar5 = stringIsPalindrome("this is not a palindrome")
        print("Testing(5) if 'this is not a palindrome' string contaning spaces is \(stringIsPalindromeVar5) palindrome.")
        
        var stringByReversing =  stringByReversingString("racecars")
        print("The reversed 'racecars' string is '\(stringByReversing)'.")
        
        stringByReversing =  stringByReversingString("racecar")
        print("The reversed 'racecar' string is '\(stringByReversing)'.")
        
        return false
    }
    
    
    func stringByReversingString(string: String) -> String {
        
        let reversedString = String(string.characters.reverse())
        print(" '\(reversedString)' is a string we got by reversing string '\(string)'.")
        return reversedString
    }
    
    func stringIsPalindrome(string: String) -> Bool {
        
        let reversedString = String(string.characters.reverse())
        print(reversedString)
        
        let reversedWhitespaceRemovedString = string.stringByReplacingOccurrencesOfString(" ", withString: "")
        print("String with trimmed whitespace '\(reversedWhitespaceRemovedString)'.")
        
        if reversedWhitespaceRemovedString.lowercaseString != string.lowercaseString {
            return false
        }
        
        return true
    }
    
}

