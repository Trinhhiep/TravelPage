//
//  UISlide.swift
//  Slide
//
//  Created by Admin on 28/05/2021.
//

import Foundation
import UIKit
class UICustomSlide : UIView {
    var scrollView : UIScrollView?
    var datasource : UICustomSlideDatasource?
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUp()
    }
    
    func setUp()  {
        scrollView = UIScrollView(frame: CGRect(origin: self.bounds.origin, size: self.bounds.size))
        scrollView!.isPagingEnabled = true
        guard let images = datasource?.customSlide() else {
            return
        }
        for i in 0..<images.count {
            let offset = i == 0 ? 0 : (CGFloat(i) * self.bounds.width)
//            let imageView = UIImageView(frame: CGRect(x: offset, y: 0, width: self.bounds.width, height: self.bounds.height))
            let imageView = UIImageView(image: images[i])
            imageView.clipsToBounds = true
            imageView.contentMode = .scaleAspectFill
            scrollView!.addSubview(imageView)
        }
        scrollView!.contentSize = CGSize(width: CGFloat(images.count) * self.bounds.width, height: self.bounds.height)
        // add the scrollview to your container
        self.addSubview(scrollView!)
    }
    
    
}
protocol UICustomSlideDatasource : class {
    func customSlide( ) -> [UIImage]
}
