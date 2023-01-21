//
//  ViewController.swift
//  ObjectWithCode
//
//  Created by Nazlı on 9.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // Burada tanımlanırsa @objc func ta kullanıbilriz. (Scope kuralı)
    var myLabel = UILabel()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    
        let width = view.frame.size.width
        let height = view.frame.size.height
        
    
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.backgroundColor = .blue
        myLabel.textColor = .white
        myLabel.frame = CGRect(x: width * 0.5 - ((width * 0.8) / 2),
                               y: ((height * 0.5) - (50 / 2)),
                               width: width * 0.8,
                               height: 50)
        view.addSubview(myLabel)
        
        // Oluşturduğumuz label ın orijin noktaları
        // print(myLabel.frame.origin)
        
        
        let myButton = UIButton()
        myButton.setTitle("My Button", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.systemPink, for: UIControl.State.normal)
        myButton.frame = CGRect(x: width * 0.5 - 100, y: height * 0.6, width: 200, height: 100)
        view.addSubview(myButton)
        
        
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControl.Event.touchUpInside)
        // Kullanıcı butona bastığında ne olacağını belirten target yazdık.
        // self: ViewController a referans verdik.
        // action: hangi aksiyonu çağıracağımızı belirttik.
        // for: ne olduğunda bu aksiyon çağırılacak. TouchUpInside: butona tıklanınca
        
    }


    @objc func myAction() {
        myLabel.text = "Successful"
    
    // Tıklandığında Test LAbel i Successful ile değiştir.
        
    }
}
