//
//  PlaceModel.swift
//  CheckinPlaces
//
//  Created by Afir Thes on 05.08.2022.
//

import RealmSwift

class Place: Object {
    
    let restaurantNames = [
        "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
        "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
        "Speak Easy", "Morris Pub", "Вкусные истории",
        "Классик", "Love&Life", "Шок", "Бочка"
    ]
    

    func savePlaces() {
        for place in restaurantNames {
            let image = UIImage(named: place)
            guard let imageData = image?.pngData() else { return }
            let newPlace = Place()
            newPlace.name = place
            newPlace.location = "Ufa"
            newPlace.type = "Restourant"
            newPlace.imageData = imageData
            
            StorageManager.saveObject(newPlace)
        }
    }
    
    @Persisted var name: String = ""
    @Persisted var location: String?
    @Persisted var type: String?
    @Persisted var imageData: Data?
}
