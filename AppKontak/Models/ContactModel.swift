//
//  ContactModel.swift
//  AppKontak
//
//  Created by macintosh on 22/09/18.
//  Copyright © 2018 Bimo Satriyo. All rights reserved.
//

import UIKit

class ContactModel {
    var id: Int16?
    var firstname: String?
    var lastname: String?
    var imageurl: String?
    var profilePic: UIImage?
    var isFavorite: Bool = false
    var details: DetailsModel?
    
    func updateProfilePic() {
        //    let url = URL(string: "https://contacts-app.s3-ap-southeast-1.amazonaws.com/contacts/profile_pics/000/001/402/original/Screen_Shot_2018-03-29_at_11.43.36.png?1524763798")
        //    var image: UIImage? = nil
        //    let semaphore = DispatchSemaphore(value: 0)
        //    let task = URLSession.shared.dataTask(with: url!) {(data, response, error) in
        //      if error == nil {
        //        if let responseData = data {
        //          image = UIImage(data: responseData)
        //        }
        //      }
        //      semaphore.signal()
        //    }
        //    task.resume()
        //    _ = semaphore.wait(timeout: .distantFuture)
    }
}

