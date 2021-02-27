//
//  imageViewController.swift
//  LandmarkBook
//
//  Created by Niyazi BİNGÜL on 27.02.2021.
//

import UIKit

class imageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var landmarkLabel: UILabel!
    
    //Burada diğer viewControllerdan buraya geçişte gelmesi gereken değişkenleri tanımlamamız gerekiyor. Yoksa aşağıda bunlarla ilgili işlem yapamayız.
    var selectedLandmarkName = "" //image isimleri değişkeni
    var selectedLandmarkImage = UIImage() //Image ın kendisinin değişkeni
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        landmarkLabel.text = selectedLandmarkName
        imageView.image = selectedLandmarkImage

    }
    

}
