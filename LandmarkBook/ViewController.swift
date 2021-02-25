//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Niyazi BİNGÜL on 25.02.2021.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
                                        //Üstte yazılan komutlar UIViewControllerdan başka yazılan UITableViewDelegate UITableViewDataSource kodların haklarını da kullanabilmemizi sağlar. Bunun için aşağıdaki tableView fonksiyonları yazılmalıdır.
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        //Üstteki iki kodu self (viewController) e eşitlemek gerekir ki alttaki iki func çalışıtırılabilsin.
        
    }
    //Alttaki iki fonksiyonu kullanmak class içinde tanımlanan UITableViewDelegate UITableViewDataSource sınıflarının da kullanılabilir olmasını sağlamaktadır. Bunlar yazılmazsa hata alınır. (cellForRowAt [sırada kullanacağım yazı ya da nesne] ve numberOfRowsInSection [tableView sıra sayısı] yazarak bunları kolaylıkla bulabiliriz.)
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "test"
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
        
        
    }

}

