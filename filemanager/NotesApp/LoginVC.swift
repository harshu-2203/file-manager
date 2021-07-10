//
//  LoginVC.swift
//  NotesApp
//
//  Created by MacBook Pro on 08/07/21.
//

import UIKit

class LoginVC: UIViewController {

    private let bgimage: UIImageView = {
           let bgimage = UIImageView()
           bgimage.image = UIImage(named: "blackbg.jpg")
           return bgimage
       }()
       
       private let label :UILabel = {
           let label = UILabel()
           let font : UIFont = UIFont.boldSystemFont(ofSize: 40)
           label.font = .boldSystemFont(ofSize: 30)
           label.text = "LOGIN YOUSELF"
           label.textAlignment = .center
           label.font = font
           label.textColor = .white
           return label
       }()
       
       private let uname : UITextField = {
           
           let textView = UITextField()
           textView.placeholder = "User name"
           textView.textAlignment = .center
           textView.backgroundColor = .black
            textView.textColor = .yellow
           textView.layer.cornerRadius = 80
           return textView
       }()
       
       private let password : UITextField = {
           
           let textView = UITextField()
           textView.placeholder = "Your Password"
           textView.textAlignment = .center
           textView.backgroundColor = .white
           textView.layer.cornerRadius = 80
        textView.isSecureTextEntry = true
           return textView
       }()
       
       private let vcbutton : UIButton = {
           let vc_button = UIButton()
           vc_button.setTitle("Login", for: .normal)
           vc_button.backgroundColor = .black
           vc_button.addTarget(self, action: #selector(redirect), for: .touchUpInside)
           vc_button.layer.cornerRadius = 50
           return vc_button
       } ()
       
       @objc func redirect()
       {
        
        
        if(uname.text == "Aaa" && password.text == "Aaa")
        {
            let vc = NoteVC()
            navigationController?.pushViewController(vc, animated: true)
            UserDefaults.standard.setValue(uname.text, forKey: "uname")
            UserDefaults.standard.setValue("asdfgdewseds", forKey: "session token")
            self.dismiss(animated: true)
        }
        else
        {
            let alert = UIAlertController(title: "Please Enter Correct Credentials", message: "Incorrect Username Or Password", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Close", style: .cancel))
            DispatchQueue.main.async {
                self.present(alert, animated: true) {
                    self.uname.text = ""
                    self.password.text = ""
                    
                }
            }
           
        }
       }
       
       override func viewDidLoad() {
           super.viewDidLoad()
           view.addSubview(bgimage)
           view.addSubview(label)
           view.addSubview(uname)
           view.addSubview(password)
           view.addSubview(vcbutton)
           
      
        
        
           // Do any additional setup after loading the view.
       }
       
       override func viewDidLayoutSubviews() {
           super.viewDidLayoutSubviews()
           bgimage.frame = CGRect(x: 0, y: view.safeAreaInsets.top, width: view.width, height: 600)
           label.frame = CGRect(x: 20, y: 180, width: view.width - 40, height: 40)
           uname.frame = CGRect(x: 20, y: label.bottom + 20, width: view.width - 40, height: 40)
           password.frame = CGRect(x: 20, y: uname.bottom + 20, width: view.width - 40, height: 40)
           vcbutton.frame = CGRect(x: 20, y: password.bottom + 20, width: view.width - 40, height: 40)
           
           
       }
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
