//
//  ContactParseHelper.swift
//  AppKontak
//
//  Created by macintosh on 20/09/18.
//  Copyright © 2018 Bimo Satriyo. All rights reserved.
//

import Foundation

class ContactParseHelper {
    
    func getParsedContactsList(_ contactsList: [NSDictionary]) -> [ContactModel]? {
        var parsedContactsList = [ContactModel]()
        for item in contactsList {
            let contact = self.getParsedContact(from:item)
            parsedContactsList.append(contact)
        }
        return parsedContactsList
    }
    
    func parseAndUpdateContactDetails(withDetails details: NSDictionary, for contact: ContactModel) {
        contact.firstname = details["first_name"] as? String
        contact.lastname = details["last_name"] as? String
        contact.details?.mobile = details["phone_number"] as? String
        contact.details?.email = details["email"] as? String
    }
    
    func getContactDictionary(_ contact: ContactModel) -> NSMutableDictionary {
        let contactDictionary = NSMutableDictionary()
        contactDictionary["first_name"] = contact.firstname
        contactDictionary["last_name"] = contact.lastname
        contactDictionary["phone_number"] = contact.details?.mobile
        contactDictionary["email"] = contact.details?.email
        contactDictionary["favorite"] = contact.isFavorite
        return contactDictionary
    }
    
    private func getParsedContact(from item: NSDictionary) -> ContactModel {
        let contact = ContactModel()
        contact.id = item["id"] as? Int16
        contact.firstname = item["first_name"] as? String
        contact.lastname = item["last_name"] as? String
        contact.imageurl = item["profile_pic"] as? String
        contact.isFavorite = item["favorite"] as! Bool
        contact.details = DetailsModel()
        contact.details?.url = item["url"] as? String
        // TODO: Get profile photo
        contact.updateProfilePic()
        return contact
    }
    
    
    
}

