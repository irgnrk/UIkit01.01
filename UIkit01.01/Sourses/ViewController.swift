import UIKit
//import SnapKit

class ViewController: UIViewController {
    
    //MARK: -> UI elements
 
    private var constantHeight: CGFloat = 0
    private var constantHeightFields: CGFloat = 0
    private let cornerRadius: CGFloat = 15
    private let biggestFontSize: CGFloat = 35
    private let largeFontSize: CGFloat = 25
    private let smallFontSize: CGFloat = 15
    

    private lazy var conteinerForLoginLabel = UIView()
    private lazy var conteinerForLoginAndPassword = UIView()
    private lazy var conteinerForLoginButton = UIView()
    private lazy var conteinerForSpase = UIView()
    private lazy var conteinerForSocialFacebook = UIView()
    private lazy var conteinerForSocialTwitter = UIView()
    private lazy var conteinerForNewAccount = UIView()
 
    private lazy var background: UIImageView = {
          let image = UIImage(named: "background")
          let newImageView = UIImageView(image: image)
          newImageView.translatesAutoresizingMaskIntoConstraints = false
          return newImageView
      }()

    private lazy var labelLogin: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.font = UIFont.systemFont(ofSize: biggestFontSize, weight: .semibold)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var logitTextField: UITextField = {
        let textField = UITextField()
        textField.textContentType = .username
        textField.font = .systemFont(ofSize: 25)
        textField.placeholder = "login"
        textField.layer.cornerRadius = 15
        if let image = UIImage(systemName: "person.crop.circle") {
            textField.setLeftIcon(image)
        }
        textField.textAlignment = .center
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        
        return textField
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.textContentType = .password
        textField.font = .systemFont(ofSize: 30)
        textField.layer.cornerRadius = 15
        if let image = UIImage(systemName: "lock") {
            textField.setLeftIcon(image)
        }
       
        textField.textAlignment = .center
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        
        return textField
    }()
    private lazy var forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forgot your password", for: .normal)
        button.titleLabel?.textAlignment = .center
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.systemOrange, for: .highlighted)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 15
        button.layer.backgroundColor = CGColor(red: 255, green: 255, blue: 255, alpha: 0.1)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.titleLabel?.textAlignment = .center
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.systemOrange, for: .highlighted)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 15
        button.backgroundColor = .orange
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
   
    
    //MARK: -> Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    //MARK: -> Setup
    
    private func setupView() {
        constantHeight = view.frame.width / 18
        constantHeightFields = constantHeight / 2
    }
    
    private func setupHierarchy() {
        view.addSubview(background)
        view.addSubview(forgotPasswordButton)
        view.addSubview(loginButton)
        view.addSubview(labelLogin)
        view.addSubview(logitTextField)
        view.addSubview(passwordTextField)
    }
    
    private func setupLayout() {
        
        NSLayoutConstraint.activate([
            background.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            background.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            labelLogin.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            labelLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logitTextField.topAnchor.constraint(equalTo: labelLogin.bottomAnchor, constant: 5),
            logitTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logitTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            logitTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.topAnchor.constraint(equalTo: logitTextField.bottomAnchor, constant: 5),
            passwordTextField.widthAnchor.constraint(equalTo: logitTextField.widthAnchor),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10),
            loginButton.widthAnchor.constraint(equalTo: logitTextField.widthAnchor),
            forgotPasswordButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            forgotPasswordButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 5),
            forgotPasswordButton.widthAnchor.constraint(equalTo: logitTextField.widthAnchor)
            
            
            
            
            
         
            
            
    
            
        
        ])
        
        
    }
    
    //MARK: -> Actions
}



// MARK: -> Extentions

extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}
