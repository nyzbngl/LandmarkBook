//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Niyazi BİNGÜL on 25.02.2021.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
                                        //Üstte yazılan komutlar UIViewControllerdan başka yazılan UITableViewDelegate UITableViewDataSource kodların haklarını da kullanabilmemizi sağlar. Bunun için aşağıdaki tableView fonksiyonları yazılmalıdır.
    
    //Bu değişkenleri viewDidLoad da değilde direkt olarak class ın altında yazarsak heryerden ulaşılabilir hale geleceklerdir.
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        //Üstteki iki kodu self (viewController) e eşitlemek gerekir ki alttaki iki func çalışıtırılabilsin.
        
        
        //Landmark Book Data
        //Alttaki isim ve image ları dizi olarak kaydetmek gerekmektedir. Diziler sıraya göre çalışıtığı için hepsini aynı sırada yapmak gerekmektedir.
        
        landmarkNames.append("Pamukkale")
        landmarkNames.append("AspendosTiyatrosu")
        landmarkNames.append("BodrumKalesi")
        landmarkNames.append("Colosseum")
        landmarkNames.append("DenizliHorozu")
        
        landmarkImages.append(UIImage(named: "Pamukkale")!)
        landmarkImages.append(UIImage(named: "AspendosTiyatrosu")!)
        landmarkImages.append(UIImage(named: "BodrumKalesi")!)
        landmarkImages.append(UIImage(named: "Colosseum")!)
        landmarkImages.append(UIImage(named: "DenizliHorozu")!)
        
        
    }
    //Kullanıcı girilen isimleri silmek istediğinde dizilerdeki isimlerin silinebilmesi için aşağıdaki kod yazılmalıdır.
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            landmarkNames.remove(at: indexPath.row)
            landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
            
    }
    
    //Alttaki iki fonksiyonu kullanmak class içinde tanımlanan UITableViewDelegate UITableViewDataSource sınıflarının da kullanılabilir olmasını sağlamaktadır. Bunlar yazılmazsa hata alınır. (cellForRowAt [sırada kullanacağım yazı ya da nesne] ve numberOfRowsInSection [tableView sıra sayısı] yazarak bunları kolaylıkla bulabiliriz.)
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNames [indexPath.row]
        //landmarkNames [indexPath.row] kodu burada indexe göre sıralanmış isimleri row a girmesini söyler. İsimler ve İmage lar aynı sırada tanımlanmış olmalıdır.
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
        //Üstteki return landmarkNames.count kodu girilen değişken isimlerinin sayısı kadar row olması gerektiğini anlatır.
        
        
    }

}

