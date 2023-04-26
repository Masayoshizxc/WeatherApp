//
//  ViewController.swift
//  Weather
//
//  Created by Adilet on 13/4/23.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var box : UIView = {
        let v = UIView()
        v.backgroundColor = .purple
        v.frame = CGRect(x: 100, y: 400, width: 200, height: 200)
        return v
    }()
    
    private lazy var searchField: UITextField = {
        let t = UITextField()
        t.leftViewMode = .always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 26.74))
        let image = UIImage(named: "search")
        imageView.image = image
        imageView.contentMode = .center
        
        t.leftView = imageView
        t.layer.cornerRadius = 30
        t.backgroundColor = .white
        t.placeholder = "Enter location"
        t.textColor = UIColor(red: 153/255, green: 229/255, blue: 231/255, alpha: 1)
        t.leftView?.center
        return t
    }()
    private lazy var figures: UIView = {
        let v = UIView()
        v.layer.cornerRadius = 39
//        v.layer.opacity = 0.6
        v.alpha = 0.9
        v.backgroundColor = UIColor(red: 130/255, green: 200/255, blue: 200/255, alpha: 1)
        return v
    }()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
        setUpSubviews()
        setUpConstraints()
        
    }
    
    func assignbackground(){
            view.backgroundColor = UIColor(red: 153/255, green: 229/255, blue: 231/255, alpha: 1)
            let background = UIImage(named: "background")

            var imageView : UIImageView!
            imageView = UIImageView(frame: view.bounds)
            imageView.contentMode =  UIView.ContentMode.scaleAspectFill
            imageView.clipsToBounds = true
            imageView.image = background
            imageView.center = view.center
            imageView.layer.opacity = 0.3
//            imageView.alpha = 0.3
            view.addSubview(imageView)
            self.view.sendSubviewToBack(imageView)
        }
    

}
extension ViewController {
    func setUpSubviews() {
        view.addSubview(figures)
        view.addSubview(searchField)
        
    }
    func setUpConstraints() {
        searchField.snp.makeConstraints{make in
            make.width.equalTo(362)
            make.height.equalTo(52)
            make.centerX.equalToSuperview()
            make.top.equalTo(63)
        }
        figures.snp.makeConstraints{make in
            make.width.equalTo(362)
            make.height.equalTo(318)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(300)
        }
        
    }
}
