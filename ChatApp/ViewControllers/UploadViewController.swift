//
//  UploadViewController.swift
//  ChatApp
//
//  Created by Adrian Inculet on 09.10.2025.
//

import UIKit

class UploadViewController: UIViewController {
    
    @IBOutlet weak var uploadAvatarLabel: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var cancelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uploadAvatarLabel.textColor = .white
        uploadAvatarLabel.font = Font.body
        cancelButton.setTitleColor(.white, for: .normal)
        cancelButton.titleLabel?.font = Font.body
        progressView.tintColor = UIColor.white
        progressView.trackTintColor = UIColor.lightGray
        view.backgroundColor = UIColor.white.withAlphaComponent(0)
        let blurEffect = UIBlurEffect(style: .dark)
        let visualEffectView = UIVisualEffectView(effect: blurEffect)
        visualEffectView.frame = view.bounds
        view.addSubview(visualEffectView)
        view.sendSubviewToBack(visualEffectView)
        progressView.setProgress(0, animated: false)
    }

}
