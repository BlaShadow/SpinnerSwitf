//
//  LoaderView.swift
//  TestSpinner
//
//  Created by Luis Romero on 26/5/15.
//  Copyright (c) 2015 Luis Romero. All rights reserved.
//
import UIKit

class LoaderView {
    
    var containerWidth = 300
    var containerHeight = 150
    
    var parentView:UIView!
    
    var labelText:String = "Loading....."
    
    var animatedImageView:UIImageView!
    var animationView:UIView!
    var textLabel:UILabel!
    
    init(parent:UIView,label:String){
        self.parentView = parent
        self.labelText = label
    }
    
    init(parent:UIView){
        self.parentView = parent
    }
    
    private func initView(){
        self.animationView = UIView()
        
        animationView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: CGFloat(0.6))
        
        var xPoint = (self.parentView.frame.width / 2 ) - CGFloat(containerWidth / 2)
        var yPoint = (self.parentView.frame.height / 2 ) - CGFloat(containerHeight / 2)
        
        animationView.frame = CGRect(x:xPoint, y:yPoint, width: CGFloat(containerWidth), height: CGFloat(containerHeight) )
        
        animationView.layer.cornerRadius = 20
        
        var images:[UIImage] = []
        
        images.append(UIImage(named: "Spinner Frame 1-50")!)
        images.append(UIImage(named: "Spinner Frame 2-50")!)
        images.append(UIImage(named: "Spinner Frame 3-50")!)
        images.append(UIImage(named: "Spinner Frame 4-50")!)
        images.append(UIImage(named: "Spinner Frame 5-50")!)
        images.append(UIImage(named: "Spinner Frame 6-50")!)
        images.append(UIImage(named: "Spinner Frame 7-50")!)
        images.append(UIImage(named: "Spinner Frame 8-50")!)
        
        var containerImagesWidth = 50
        var containerImagesHeight = 50
        
        var xPointContainer = (containerWidth / 2) - (containerImagesWidth / 2)
        var yPointContainer = (containerHeight / 2) - (containerImagesHeight / 2)
        
        self.animatedImageView = UIImageView(frame: CGRect(x: xPointContainer, y: yPointContainer, width: containerImagesWidth, height: containerImagesHeight))
        
        var animationTime = 0.8
        animatedImageView.animationImages = images
        animatedImageView.animationDuration = NSTimeInterval(animationTime)
        animatedImageView.animationRepeatCount = 1000

        var xPointLabel = 0
        var yPointLabel = (containerHeight / 2) - ( 30 / 2)
        
        self.textLabel = UILabel()
        textLabel.frame = CGRect(x: xPointLabel, y: yPointLabel + 50, width: containerWidth, height: 30)
        textLabel.text = labelText
        textLabel.textAlignment = NSTextAlignment.Center
        textLabel.textColor = UIColor.whiteColor()
        
        animationView.addSubview(textLabel)
        animationView.addSubview(animatedImageView)
    }
    
    func render()->UIView{
        self.initView()
        
        self.animatedImageView.startAnimating()
        
        return self.animationView
    }
}
