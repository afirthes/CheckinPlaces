//
//  TableViewController.swift
//  CheckinPlaces
//
//  Created by Afir Thes on 24.07.2022.
//

import UIKit

class TableViewController: UITableViewController {
    
//    let restaurantNames = [
//        "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
//        "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
//        "Speak Easy", "Morris Pub", "Вкусные истории",
//        "Классик", "Love&Life", "Шок", "Бочка"
//    ]
    
    let places = [Place(name: "Burger Heroes", location: "Уфа", type: "ресторан", image: "Burger Heroes")]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        let place = places[indexPath.row]
        cell.nameLabel?.text = place.name
        cell.locationLabel?.text = place.location
        cell.typeLabel?.text = place.type
        cell.imageOfPlace?.image = UIImage(named: place.image)
        cell.imageOfPlace?.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace?.clipsToBounds = true
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
}
