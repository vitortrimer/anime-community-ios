//
//  TopIncomingPageViewController.swift
//  Anime
//
//  Created by Vitor Trimer on 13/06/22.
//

import Foundation
import UIKit

class TopIncomingPageViewController: UIViewController {
    let pageViewController: UIPageViewController
    var animes = [UIViewController]()
    var currentVC: UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        layout()
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        self.pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal)
        self.currentVC = UIViewController()
        
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: - Layout
extension TopIncomingPageViewController {
    func configure() {
        
    }
    
    func layout() {
        
    }
}
