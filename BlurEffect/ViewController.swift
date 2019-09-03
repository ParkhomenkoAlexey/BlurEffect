//
//  ViewController.swift
//  BlurEffect
//
//  Created by Алексей Пархоменко on 03/09/2019.
//  Copyright © 2019 Алексей Пархоменко. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let imageView: UIImageView = {
       let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "09")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let blurView: UIVisualEffectView = {
       let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let vibrancyView: UIVisualEffectView = {
       let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "SwiftBook.ru"
        label.textColor = .systemBackground
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 30)
        return label
    }()

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupImageView()
        let blurEffect = UIBlurEffect(style: .systemMaterial)
        view.addSubview(blurView)
        blurView.effect = blurEffect
        setupBlurView()
        
        let vibrancyEffect = UIVibrancyEffect(blurEffect: blurEffect, style: .secondaryLabel)
        vibrancyView.effect = vibrancyEffect
        blurView.contentView.addSubview(vibrancyView)
        setupVibrancyView()
        
        
        vibrancyView.contentView.addSubview(label)
        setupLabel()
        
    }
    
    fileprivate func setupLabel() {
        label.centerXAnchor.constraint(equalTo: blurView.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: blurView.centerYAnchor).isActive = true
    }
    
    fileprivate func setupVibrancyView() {
        vibrancyView.centerXAnchor.constraint(equalTo: blurView.centerXAnchor).isActive = true
        vibrancyView.centerYAnchor.constraint(equalTo: blurView.centerYAnchor).isActive = true
        vibrancyView.heightAnchor.constraint(equalToConstant: 400).isActive = true
        vibrancyView.widthAnchor.constraint(equalToConstant: 300).isActive = true
    }
    
    fileprivate func setupBlurView() {
        blurView.centerXAnchor.constraint(equalTo: imageView.centerXAnchor).isActive = true
        blurView.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
        blurView.heightAnchor.constraint(equalToConstant: 400).isActive = true
        blurView.widthAnchor.constraint(equalToConstant: 300).isActive = true
    }
    
    
    fileprivate func setupImageView() {
        view.addSubview(imageView)
        imageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }


}

