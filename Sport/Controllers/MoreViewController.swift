//
//  MoreViewController.swift
//  Sport
//
//  Created by Ivan on 13.01.2022.
//

import UIKit
import MessageUI

class MoreViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    private let contentView: UIView = {
        let view = UIButton()
        view.backgroundColor = .white
        return view
    }()
    
    private let webButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightGray
        button.setTitle("Website", for: .normal)
        button.setImage(UIImage(systemName: "globe.europe.africa"), for: .normal)
        button.tintColor = UIColor.systemBlue
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
        button.layer.sublayerTransform = CATransform3DMakeTranslation(-150, 0, 0)
        button.setTitleColor(.black, for: .normal)
        
        return button
    }()
    
    private let facebookButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightGray
        button.setTitle("Facebook", for: .normal)
        button.setImage(UIImage(systemName: "info.circle"), for: .normal)
        button.tintColor = UIColor.systemRed
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 21, bottom: 0, right: 0)
        button.layer.sublayerTransform = CATransform3DMakeTranslation(-143, 0, 0)
        button.setTitleColor(.black, for: .normal)
        
        return button
    }()
    
    private let instagramButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightGray
        button.setTitle("Instagram", for: .normal)
        button.setImage(UIImage(systemName: "info.circle"), for: .normal)
        button.tintColor = UIColor.systemRed
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
        button.layer.sublayerTransform = CATransform3DMakeTranslation(-142, 0, 0)
        button.setTitleColor(.black, for: .normal)
        
        return button
    }()
    
    private let telegramButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightGray
        button.setTitle("Telegram", for: .normal)
        button.setImage(UIImage(systemName: "info.circle"), for: .normal)
        button.tintColor = UIColor.systemRed
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
        button.layer.sublayerTransform = CATransform3DMakeTranslation(-145, 0, 0)
        button.setTitleColor(.black, for: .normal)
        
        return button
    }()
    
    
    private let helpButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightGray
        button.setTitle("Help us", for: .normal)
        button.setImage(UIImage(systemName: "questionmark.circle"), for: .normal)
        button.tintColor = UIColor.red
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .medium)
        button.layer.cornerRadius = 16
        button.clipsToBounds = true
        button.titleLabel?.textAlignment = .center
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
        button.layer.sublayerTransform = CATransform3DMakeTranslation(-20, 0, 0)
        button.setTitleColor(.black, for: .normal)
        
        return button
    }()
    
    private let pnoneButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightGray
        button.setTitle("Call us", for: .normal)
        button.setImage(UIImage(systemName: "phone.fill"), for: .normal)
        button.tintColor = UIColor.systemBlue
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
        button.layer.sublayerTransform = CATransform3DMakeTranslation(-153, 0, 0)
        button.setTitleColor(.black, for: .normal)
        
        return button
    }()
    
    private let mailButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightGray
        button.setTitle("Write us", for: .normal)
        button.setImage(UIImage(systemName: "envelope.fill"), for: .normal)
        button.tintColor = UIColor.systemBlue
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
        button.layer.sublayerTransform = CATransform3DMakeTranslation(-148, 0, 0)
        button.setTitleColor(.black, for: .normal)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemPink
        
        let barAppearance = UINavigationBarAppearance()
        barAppearance.backgroundColor = .systemBackground
        navigationItem.standardAppearance = barAppearance
        navigationItem.scrollEdgeAppearance = barAppearance
        
        webButton.addTarget(self, action: #selector(didTapWeb), for: .touchUpInside)
        facebookButton.addTarget(self, action: #selector(didTapFacebook), for: .touchUpInside)
        instagramButton.addTarget(self, action: #selector(didTapInstagram), for: .touchUpInside)
        telegramButton.addTarget(self, action: #selector(didTapTelegram), for: .touchUpInside)
        helpButton.addTarget(self, action: #selector(didTapHelp), for: .touchUpInside)
        
        // Not work
        pnoneButton.addTarget(self, action: #selector(didTapPhone), for: .touchUpInside)
        mailButton.addTarget(self, action: #selector(didTapMail), for: .touchUpInside)
        addSubviews()
        
    }
    
    
    private  func addSubviews() {
        
        view.addSubview(contentView)
        contentView.addSubview(webButton)
        contentView.addSubview(facebookButton)
        contentView.addSubview(instagramButton)
        contentView.addSubview(telegramButton)
        view.addSubview(helpButton)
        
        contentView.addSubview(pnoneButton)
        contentView.addSubview(mailButton)
    }
    
    override func viewDidLayoutSubviews() {
        
        contentView.frame = CGRect(x: 0, y: view.safeAreaInsets.top + 30, width: view.width, height: view.width/1.8)
        webButton.frame = CGRect(x: 0, y: contentView.safeAreaInsets.top + 10, width: view.width, height: 30)
        facebookButton.frame = CGRect(x: 0, y: webButton.bottom + 5, width: view.width, height: 30)
        instagramButton.frame = CGRect(x: 0, y: facebookButton.bottom + 5, width: view.width, height: 30)
        telegramButton.frame = CGRect(x: 0, y: instagramButton.bottom + 5, width: view.width, height: 30)
        helpButton.frame = CGRect(x: 20, y: contentView.bottom + 30, width: view.width - 40, height: 50)
        
        
        mailButton.frame = CGRect(x: 0, y: telegramButton.bottom + 5, width: view.width, height: 30)
        pnoneButton.frame = CGRect(x: 0, y: mailButton.bottom + 5, width: view.width, height: 30)
        
    }
    
    @objc func didTapWeb() {
        UIApplication.shared.open(URL(string: "https://dev-sportcalendar.netlify.app")! as URL, options: [:], completionHandler: nil)
    }
    
    @objc func didTapFacebook() {
        //TODO: change url to actual
        UIApplication.shared.open(URL(string: "https://dev-sportcalendar.netlify.app")! as URL, options: [:], completionHandler: nil)
    }
    @objc func didTapInstagram() {
        //TODO: change url to actual
        UIApplication.shared.open(URL(string: "https://dev-sportcalendar.netlify.app")! as URL, options: [:], completionHandler: nil)
    }
    @objc func didTapTelegram() {
        //TODO: change url to actual
        UIApplication.shared.open(URL(string: "https://dev-sportcalendar.netlify.app")! as URL, options: [:], completionHandler: nil)
    }
    @objc func didTapHelp() {
        //TODO: change url to actual
        UIApplication.shared.open(URL(string: "https://dev-sportcalendar.netlify.app")! as URL, options: [:], completionHandler: nil)
    }
    //MARK: Phone button work correct if simulation run on device
    @objc func didTapPhone() {
        //TODO: change number to actual
        let phoneNumber = "42394328590340"
        guard let number = URL(string:"tel://\(phoneNumber)") else {
            return
        }
        UIApplication.shared.open(URL(string: "\(number)")! as URL, options: [:], completionHandler: nil)
    }
    //MARK: Email button work correct if simulation run on device
    @objc func didTapMail() {
        // Modify following variables with your text / recipient
        //TODO: change email and text to actual
        let recipientEmail = "test@email.com"
        let subject = "Multi client email support"
        let body = "This code supports sending email via multiple different email apps on iOS! :)"
        
        // Show default mail composer
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients([recipientEmail])
            mail.setSubject(subject)
            mail.setMessageBody(body, isHTML: false)
            
            present(mail, animated: true)
            
            // Show third party email composer if default Mail app is not present
        } else if let emailUrl = createEmailUrl(to: recipientEmail, subject: subject, body: body) {
            UIApplication.shared.open(emailUrl)
        }
    }
    
    private func createEmailUrl(to: String, subject: String, body: String) -> URL? {
        let subjectEncoded = subject.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        let bodyEncoded = body.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        
        let gmailUrl = URL(string: "googlegmail://co?to=\(to)&subject=\(subjectEncoded)&body=\(bodyEncoded)")
        let outlookUrl = URL(string: "ms-outlook://compose?to=\(to)&subject=\(subjectEncoded)")
        let yahooMail = URL(string: "ymail://mail/compose?to=\(to)&subject=\(subjectEncoded)&body=\(bodyEncoded)")
        let sparkUrl = URL(string: "readdle-spark://compose?recipient=\(to)&subject=\(subjectEncoded)&body=\(bodyEncoded)")
        let defaultUrl = URL(string: "mailto:\(to)?subject=\(subjectEncoded)&body=\(bodyEncoded)")
        
        if let gmailUrl = gmailUrl, UIApplication.shared.canOpenURL(gmailUrl) {
            return gmailUrl
        } else if let outlookUrl = outlookUrl, UIApplication.shared.canOpenURL(outlookUrl) {
            return outlookUrl
        } else if let yahooMail = yahooMail, UIApplication.shared.canOpenURL(yahooMail) {
            return yahooMail
        } else if let sparkUrl = sparkUrl, UIApplication.shared.canOpenURL(sparkUrl) {
            return sparkUrl
        }
        
        return defaultUrl
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
    }
    
    
}
