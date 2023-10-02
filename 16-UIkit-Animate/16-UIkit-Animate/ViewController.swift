//
//  ViewController.swift
//  16-UIkit-Animate
//
//  Created by Jonathan Casillas on 02/10/23.
//

import UIKit

class ViewController: UIViewController {
    
   // @IBOutlet weak var centerYConstrain: NSLayoutConstraint!
    @IBOutlet weak var myView: UIView!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        myView.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        myView.alpha = 0.0
        myView.center = view.center
        
        UIView.animate(withDuration: 2) {
            self.myView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
            self.myView.center = self.view.center
            self.myView.alpha = 1.0
            self.myView.layer.cornerRadius = 50
        }
        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 1){
//                    self.animateConstrain()
//        }
        
    }
    
//    func animateConstrain(){
//        UIView.animate(withDuration: 2) {
//            self.centerYConstrain?.constant = -200
//            self.view.layoutIfNeeded()
//        }
//    }
    
    
// Sin el StoyBoard
    
    
//    let myView: UIView = {
//       let view = UIView()
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.backgroundColor = .systemOrange
//
//        return view
//    }()
//
//    var centerYConstrain: NSLayoutConstraint?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.addSubview(myView)
//
//        centerYConstrain = myView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
//
//        NSLayoutConstraint.activate([
//            myView.heightAnchor.constraint(equalToConstant: 200),
//            myView.widthAnchor.constraint(equalToConstant: 200),
//            myView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            centerYConstrain!,
//        ])
//
//        DispatchQueue.main.asyncAfter(deadline: .now() + 1){
//            self.animateConstrain()
//        }
        
 // Animaciones sin constrains
//        myView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
//        myView.center = self.view.center
        //self.myView.alpha = 0.0
        
//        UIView.animate(withDuration: 2) {
//            self.myView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
//            self.myView.center = self.view.center
//            self.myView.alpha = 1.0
//            self.myView.layer.cornerRadius = 50
//        }
        
//        UIView.animate(withDuration: 2,
//            delay: 2,
//            usingSpringWithDamping: 0.1,
//            initialSpringVelocity: 1,
//            options: .curveEaseInOut) {
//            self.myView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
//            self.myView.center = self.view.center
//            self.myView.layer.cornerRadius = 50
//        } completion: { isFinish in
//            print("Did Finish \(isFinish)")
//        }

        
        
//    }
//
    



}

