import UIKit

class ViewController: UIViewController {
    
    //MARK: -> UI elements
    
    private var constantHeight: CGFloat = 0
    private var constantHeightFields: CGFloat = 0
    private var constantWidthField: CGFloat = 0
    private var cornerRadius: CGFloat = 18
    private let biggestFontSize: CGFloat = 30
    private let largeFontSize: CGFloat = 20
    private let smallFontSize: CGFloat = 15
    
    var newView = {
        let newView = UIView()
        newView.translatesAutoresizingMaskIntoConstraints = false
        return newView
    }
    
    private lazy var conteinerForLoginLabel: UIView = newView()
    private lazy var conteinerForLoginAndPassword: UIView = newView()
    private lazy var conteinerForLoginButton: UIView = newView()
    private lazy var conteinerForSpase: UIView = newView()
    private lazy var conteinerForSocialFacebook: UIView = newView()
    private lazy var conteinerForSocialTwitter: UIView = newView()
    private lazy var conteinerForNewAccount: UIView = newView()
    
    private lazy var background: UIImageView = {
        let image = UIImage(named: "background")
        let newImageView = UIImageView(image: image)
        newImageView.translatesAutoresizingMaskIntoConstraints = false
        return newImageView
    } ()
    
    private lazy var labelLogin: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.font = UIFont.systemFont(ofSize: biggestFontSize, weight: .semibold)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    private lazy var logitTextField: UITextField = {
        let textField = UITextField()
        textField.textContentType = .username
        textField.font = .systemFont(ofSize: largeFontSize)
        textField.placeholder = "   login"
        textField.layer.cornerRadius = cornerRadius
        if let image = UIImage(systemName: "person.crop.circle") {
            textField.setLeftIcon(image)
        }
        textField.textAlignment = .left
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        return textField
    } ()
    
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.textContentType = .password
        textField.placeholder = "   password"
        textField.font = .systemFont(ofSize: largeFontSize)
        textField.layer.cornerRadius = cornerRadius
        if let image = UIImage(systemName: "lock") {
            textField.setLeftIcon(image)
        }
        textField.textAlignment = .left
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        return textField
    } ()
    
    private lazy var forgotPasswordButton: UIButton = {
        let button = UIButton().getShadowedButton()
        button.setTitle("Forgot your password?", for: .normal)
        button.titleLabel?.textAlignment = .center
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.systemOrange, for: .highlighted)
        button.titleLabel?.font = .boldSystemFont(ofSize: smallFontSize)
        button.layer.cornerRadius = cornerRadius
        button.layer.backgroundColor = CGColor(red: 255, green: 255, blue: 255, alpha: 0.1)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    } ()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton().getShadowedButton()
        button.setTitle("Login", for: .normal)
        button.titleLabel?.textAlignment = .center
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.systemOrange, for: .highlighted)
        button.titleLabel?.font = .boldSystemFont(ofSize: largeFontSize)
        button.layer.cornerRadius = cornerRadius
        button.backgroundColor = .orange
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    } ()
    
    private lazy var connectLabel: UILabel = {
        let label = UILabel()
        label.text = "------ or connect with ------"
        label.font = UIFont.systemFont(ofSize: smallFontSize, weight: .light)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    private lazy var socialFacebookButton: UIButton = {
        let button = UIButton().getShadowedButton()
        button.setTitle("Facebook", for: .normal)
        button.titleLabel?.textAlignment = .center
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.systemOrange, for: .highlighted)
        button.titleLabel?.font = .boldSystemFont(ofSize: smallFontSize)
        button.layer.cornerRadius = cornerRadius
        button.backgroundColor = .systemBlue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    } ()
    
    private lazy var socialTwitterButton: UIButton = {
        let button = UIButton().getShadowedButton()
        button.setTitle("Twitter", for: .normal)
        button.titleLabel?.textAlignment = .center
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.systemOrange, for: .highlighted)
        button.titleLabel?.font = .boldSystemFont(ofSize: smallFontSize)
        button.layer.cornerRadius = cornerRadius
        button.backgroundColor = .blue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    } ()
    
    private lazy var twitterImageView: UIImageView = {
        let iconImageView = UIImageView()
        let image = UIImage(named: "twiticon")
        iconImageView.image = image
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        return iconImageView
    } ()
    
    private lazy var facebookImageView: UIImageView = {
        let iconImageView = UIImageView()
        let image = UIImage(named: "facebookicon")
        iconImageView.image = image
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        return iconImageView
    } ()
    
    private lazy var addAccountView: UIView = {
        let conteinerView = UIView()
        conteinerView.backgroundColor = .white
        conteinerView.translatesAutoresizingMaskIntoConstraints = false
        conteinerView.layer.cornerRadius = cornerRadius
        conteinerView.layer.backgroundColor = CGColor(red: 255, green: 255, blue: 255, alpha: 0.1)
        return conteinerView
    } ()
    
    private lazy var addAccountLabel: UILabel = {
        let label = UILabel()
        label.text = "Dont have account?"
        label.font = .systemFont(ofSize: smallFontSize)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    } ()
    
    private lazy var addAccountButton: UIButton = {
        let button = UIButton().getShadowedButton()
        button.setTitle("Sign up", for: .normal)
        button.titleLabel?.textAlignment = .center
        button.setTitleColor(.systemOrange, for: .normal)
        button.setTitleColor(.systemRed, for: .highlighted)
        button.titleLabel?.font = .systemFont(ofSize: smallFontSize)
        button.layer.cornerRadius = cornerRadius
        button.backgroundColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    } ()
    
    //MARK: -> Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    //MARK: -> Setup
    
    private func setupView() {
        constantHeight = view.frame.height / 18
        constantHeightFields = constantHeight / 2
        constantWidthField = view.frame.width * 0.7
        cornerRadius = constantHeightFields
    }
    
    private func setupHierarchy() {
        view.addSubview(background)
        view.addSubview(conteinerForLoginLabel)
        view.addSubview(conteinerForLoginAndPassword)
        view.addSubview(conteinerForLoginButton)
        view.addSubview(conteinerForSpase)
        view.addSubview(conteinerForSocialFacebook)
        view.addSubview(conteinerForSocialTwitter)
        view.addSubview(conteinerForNewAccount)
        conteinerForLoginLabel.addSubview(labelLogin)
        conteinerForLoginAndPassword.addSubview(logitTextField)
        conteinerForLoginAndPassword.addSubview(passwordTextField)
        conteinerForLoginButton.addSubview(loginButton)
        conteinerForLoginButton.addSubview(forgotPasswordButton)
        conteinerForSpase.addSubview(connectLabel)
        conteinerForSocialFacebook.addSubview(socialFacebookButton)
        conteinerForSocialTwitter.addSubview(socialTwitterButton)
        socialTwitterButton.addSubview(twitterImageView)
        socialFacebookButton.addSubview(facebookImageView)
        conteinerForNewAccount.addSubview(addAccountView)
        addAccountView.addSubview(addAccountLabel)
        addAccountView.addSubview(addAccountButton)
    }
    
    private func setupLayout() {
        
        NSLayoutConstraint.activate([
            background.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            background.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            conteinerForLoginLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: constantHeight),
            conteinerForLoginLabel.heightAnchor.constraint(equalToConstant: constantHeight * 2),
            conteinerForLoginLabel.widthAnchor.constraint(equalTo: view.widthAnchor),
            labelLogin.centerXAnchor.constraint(equalTo: conteinerForLoginLabel.centerXAnchor),
            labelLogin.centerYAnchor.constraint(equalTo: conteinerForLoginLabel.centerYAnchor),
            conteinerForLoginAndPassword.topAnchor.constraint(equalTo: conteinerForLoginLabel.bottomAnchor),
            conteinerForLoginAndPassword.widthAnchor.constraint(equalTo: view.widthAnchor),
            conteinerForLoginAndPassword.heightAnchor.constraint(equalToConstant: constantHeight * 3),
            logitTextField.topAnchor.constraint(equalTo: conteinerForLoginAndPassword.topAnchor),
            logitTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logitTextField.widthAnchor.constraint(equalToConstant: constantWidthField),
            logitTextField.heightAnchor.constraint(equalToConstant: constantHeight),
            passwordTextField.bottomAnchor.constraint(equalTo: conteinerForLoginAndPassword.bottomAnchor, constant: -constantHeightFields),
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.widthAnchor.constraint(equalToConstant: constantWidthField),
            passwordTextField.heightAnchor.constraint(equalToConstant: constantHeight),
            conteinerForLoginButton.topAnchor.constraint(equalTo: conteinerForLoginAndPassword.bottomAnchor),
            conteinerForLoginButton.widthAnchor.constraint(equalTo: view.widthAnchor),
            conteinerForLoginButton.heightAnchor.constraint(equalToConstant: constantHeight * 3),
            loginButton.topAnchor.constraint(equalTo: conteinerForLoginButton.topAnchor, constant: constantHeightFields),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.widthAnchor.constraint(equalToConstant: constantWidthField),
            loginButton.heightAnchor.constraint(equalToConstant: constantHeight),
            forgotPasswordButton.bottomAnchor.constraint(equalTo: conteinerForLoginButton.bottomAnchor),
            forgotPasswordButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            forgotPasswordButton.widthAnchor.constraint(equalToConstant: constantWidthField),
            forgotPasswordButton.heightAnchor.constraint(equalToConstant: constantHeight),
            conteinerForSpase.topAnchor.constraint(equalTo: conteinerForLoginButton.bottomAnchor),
            conteinerForSpase.widthAnchor.constraint(equalTo: view.widthAnchor),
            conteinerForSpase.heightAnchor.constraint(equalToConstant: constantHeight * 5),
            connectLabel.bottomAnchor.constraint(equalTo: conteinerForSpase.bottomAnchor, constant: -constantHeightFields),
            connectLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            conteinerForSocialFacebook.topAnchor.constraint(equalTo: conteinerForSpase.bottomAnchor, constant: -constantHeightFields),
            conteinerForSocialTwitter.topAnchor.constraint(equalTo: conteinerForSpase.bottomAnchor, constant: -constantHeightFields),
            conteinerForSocialFacebook.heightAnchor.constraint(equalToConstant: constantHeight * 2),
            conteinerForSocialTwitter.heightAnchor.constraint(equalToConstant: constantHeight * 2),
            conteinerForSocialFacebook.leftAnchor.constraint(equalTo: view.leftAnchor),
            conteinerForSocialFacebook.rightAnchor.constraint(equalTo: conteinerForSocialTwitter.leftAnchor),
            conteinerForSocialTwitter.rightAnchor.constraint(equalTo: view.rightAnchor),
            conteinerForSocialFacebook.widthAnchor.constraint(equalTo: conteinerForSocialTwitter.widthAnchor),
            socialFacebookButton.widthAnchor.constraint(equalToConstant: constantWidthField/1.7),
            socialTwitterButton.widthAnchor.constraint(equalToConstant: constantWidthField/1.7),
            socialFacebookButton.centerXAnchor.constraint(equalTo: conteinerForSocialFacebook.centerXAnchor),
            socialFacebookButton.centerYAnchor.constraint(equalTo: conteinerForSocialFacebook.centerYAnchor),
            socialTwitterButton.centerXAnchor.constraint(equalTo: conteinerForSocialTwitter.centerXAnchor),
            socialTwitterButton.centerYAnchor.constraint(equalTo: conteinerForSocialTwitter.centerYAnchor),
            socialTwitterButton.heightAnchor.constraint(equalToConstant: constantHeight),
            socialFacebookButton.heightAnchor.constraint(equalToConstant: constantHeight),
            facebookImageView.heightAnchor.constraint(equalToConstant: constantHeight * 0.5),
            facebookImageView.widthAnchor.constraint(equalToConstant: constantHeight * 0.5),
            facebookImageView.leftAnchor.constraint(equalTo: socialFacebookButton.leftAnchor, constant: constantHeight * 0.3),
            facebookImageView.centerYAnchor.constraint(equalTo: socialFacebookButton.centerYAnchor),
            twitterImageView.heightAnchor.constraint(equalToConstant: constantHeight * 0.5),
            twitterImageView.widthAnchor.constraint(equalToConstant: constantHeight * 0.5),
            twitterImageView.leftAnchor.constraint(equalTo: socialTwitterButton.leftAnchor, constant: constantHeight * 0.3),
            twitterImageView.centerYAnchor.constraint(equalTo: socialTwitterButton.centerYAnchor),
            conteinerForNewAccount.topAnchor.constraint(equalTo: conteinerForSocialFacebook.bottomAnchor),
            conteinerForNewAccount.widthAnchor.constraint(equalTo: view.widthAnchor),
            conteinerForNewAccount.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            addAccountView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            addAccountView.topAnchor.constraint(equalTo: conteinerForNewAccount.topAnchor),
            addAccountView.heightAnchor.constraint(equalToConstant: constantHeight),
            addAccountView.widthAnchor.constraint(equalToConstant: constantWidthField),
            addAccountLabel.leftAnchor.constraint(equalTo: addAccountView.leftAnchor, constant: constantHeight * 0.5),
            addAccountLabel.centerYAnchor.constraint(equalTo: addAccountView.centerYAnchor),
            addAccountLabel.heightAnchor.constraint(equalTo: addAccountView.heightAnchor),
            addAccountButton.rightAnchor.constraint(equalTo: addAccountView.rightAnchor),
            addAccountButton.centerYAnchor.constraint(equalTo: addAccountView.centerYAnchor),
            addAccountButton.heightAnchor.constraint(equalTo: addAccountView.heightAnchor),
            addAccountButton.widthAnchor.constraint(equalToConstant: constantHeight * 2)
        ])
    }
    
    //MARK: -> Actions
    // place for apdate
    
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

extension UIButton {
    func getShadowedButton() -> UIButton {
        let button = UIButton()
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        return button
    }
}

