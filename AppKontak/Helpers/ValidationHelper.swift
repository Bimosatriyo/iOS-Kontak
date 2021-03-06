//
//  ValidationHelper.swift
//  AppKontak
//
//  Created by macintosh on 20/09/18.
//  Copyright © 2018 Bimo Satriyo. All rights reserved.
//

import Foundation

class ValidationHelper {
    
    static func isValidUrl(urlString: String) -> Bool {
        let urlRegEx = "((https|http)://)((\\w|-)+)(([.]|[/])((\\w|-)+))+"
        let urlTest = NSPredicate(format:"SELF MATCHES %@", urlRegEx)
        let result = urlTest.evaluate(with: urlString)
        print(result)
        return result
    }
    
    static func isValidResponse(_ response: URLResponse) -> Bool {
        let status = (response as! HTTPURLResponse).statusCode
        var isValid: Bool = false
        if status == 200 || status == 201 {
            isValid = true
        }
        return isValid
    }
    
}

