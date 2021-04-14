//
//  Extensions.swift
//  pokeApp
//
//  Created by Brian Baragar on 16/03/21.
//

import UIKit
extension UIView{
    func roundedView(){
        layer.cornerRadius = 10
        layer.masksToBounds = true
    }
}

//MARK:- Image
extension UIImageView{
    func imageFromServerURL(urlString: String, placeHolderImage: UIImage){
        if self.image == nil {
            self.image = placeHolderImage
        }
        URLSession.shared.dataTask(with: URL(string: urlString)!) { (data, response, error) in
            if error != nil {
                return
            }
            if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode == 200{
                DispatchQueue.main.async {
                    guard let data = data else{return}
                    let image = UIImage(data: data)
                    self.image = image
                }
            }
            return
        }.resume()
    }
}
