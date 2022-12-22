import UIKit
//import SnapKit

class ViewController: UIViewController {
    
    //MARK: -> UI elements
    
    private lazy var labelLOgin: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.font = UIFont.systemFont(ofSize: 24, weight: .heavy)
        label.textColor = .white
        return label
    }()
    
    private lazy var background: UIImageView = {
        let imageView = UIImageView()
        let image = UIImage(named: "background")
        return imageView
    }()
    
    
    //MARK: -> Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    //MARK: -> Setup
    
    private func setupView() {
        
    }
    
    private func setupHierarchy() {
        
    }
    
    private func setupLayout() {
        
    }
    
    //MARK: -> Actions
}

