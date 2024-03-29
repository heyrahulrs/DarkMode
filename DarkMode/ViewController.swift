//
//  ViewController.swift
//  DarkMode
//
//  Created by Rahul Sharma on 6/12/19.
//  Copyright © 2019 Rahul Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func loadView() {
        
        view = UIView()
        view.backgroundColor = .systemBackground
        
        let imageView = UIImageView(image: UIImage(named: "iOS13"))
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        
        let myLabel = UILabel()
        myLabel.text = "iOS 13"
        myLabel.textColor = UIColor(named: "MyColor")
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        myLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        view.addSubview(myLabel)
        
        let blurEffect = UIBlurEffect(style: .systemThinMaterial)
        let blurView = UIVisualEffectView()
        blurView.effect = blurEffect
        blurView.translatesAutoresizingMaskIntoConstraints = false
        
        let vibrancyEffect = UIVibrancyEffect(blurEffect: blurEffect, style: .secondaryLabel)
        
        let vibrancyView = UIVisualEffectView(effect: vibrancyEffect)
        vibrancyView.translatesAutoresizingMaskIntoConstraints = false
        blurView.contentView.addSubview(vibrancyView)
        
        let vibrantLabel = UILabel()
        vibrantLabel.translatesAutoresizingMaskIntoConstraints = false
        vibrantLabel.text = "Vibrant Label"
        vibrantLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        vibrancyView.contentView.addSubview(vibrantLabel)
        
        blurView.layer.cornerRadius = 8.0
        blurView.clipsToBounds = true
        
        view.addSubview(blurView)
        
        NSLayoutConstraint.activate([
            
            myLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 36),
            myLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            blurView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            vibrancyView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -148),

            blurView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            blurView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            
            blurView.heightAnchor.constraint(equalToConstant: 128),
            
            vibrancyView.centerXAnchor.constraint(equalTo: blurView.centerXAnchor),
            vibrancyView.centerYAnchor.constraint(equalTo: blurView.centerYAnchor),
            
            vibrancyView.leadingAnchor.constraint(equalTo: blurView.leadingAnchor),
            vibrancyView.trailingAnchor.constraint(equalTo: blurView.trailingAnchor),
            
            vibrancyView.heightAnchor.constraint(equalTo: blurView.heightAnchor),
            
            vibrantLabel.centerXAnchor.constraint(equalTo: vibrancyView.centerXAnchor),
            vibrantLabel.centerYAnchor.constraint(equalTo: vibrancyView.centerYAnchor)
            
        ])
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

}

