//
//  DatabaseManager.swift
//  Sport
//
//  Created by Ivan on 14.01.2022.
//

import Foundation
import FirebaseFirestore

final class DatabaseManager {
    static let shared = DatabaseManager()
    
    private let database = Firestore.firestore()
    
    private init() {
        
    }
    
    public func insert(
        user: User,
        completion: @escaping(Bool) -> Void
    ){
        let documentId = user.email
            .replacingOccurrences(of: ".", with: "_")
            .replacingOccurrences(of: "@", with: "_")
        let data = [
            "email": user.email,
            "name": user.name
        ]
        database
            .collection("users")
            .document(documentId)
            .setData(data) { error in
                completion(error == nil)
            }
    }
    
    public func getUser(email: String,
                        completion: @escaping (User?) -> Void) {
        let documentId = email
            .replacingOccurrences(of: ".", with: "_")
            .replacingOccurrences(of: "@", with: "_")
        database
            .collection("users")
            .document(documentId)
            .getDocument { snapshot, error in
                guard let data = snapshot?.data() as? [String:String],
                      let name = data["name"],
                      error == nil else {
                          return
                      }
                
                let ref = data["profile_photo"]
                
                let user = User(name: name, email: email, profilePictureRef: ref)
                completion(user)
            }
    }
    
    public func updateProfilePhoto(email: String, completion: @escaping(Bool) -> Void) {
        let path = email.replacingOccurrences(of: "@", with: "_")
            .replacingOccurrences(of: ".", with: "_")
        
        let photoReference = "profile_pictures/\(path)/photo.png"
        let dbRef =  database
            .collection("users")
            .document(path)
        
        dbRef.getDocument { snapshot, error in
            guard var data = snapshot?.data(), error == nil else {
                return
            }
            data["profile_photo"] = photoReference
            dbRef.setData(data) { error in
                completion(error == nil)
            }
        }
    }
    
}
