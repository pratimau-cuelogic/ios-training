//
//  ProductDetailViewController.swift
//  ShopApp
//
//  Created by Pratima Umbardand on 14/06/16.
//  Copyright © 2016 Pratima Umbardand. All rights reserved.
//

import UIKit

class ProductDetailViewController: UIViewController {

    @IBOutlet weak var tempView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var exitButton: UIButton!
    
    weak var delegate: ProductDetailViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayer()
        setupProductDetailView()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        startViewAnimation()
    }
    
    override func viewWillDisappear(animated: Bool) {
        tempView.layer.removeAllAnimations()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    func setupProductDetailView() {
        titleLabel.text = delegate?.getProductTitle()
    }
    
    // MARK: - IBActions

    @IBAction func onExitClicked(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func onViewTapped(sender: AnyObject) {
        tempView.layer.shadowOpacity = tempView.layer.shadowOpacity == 0.7 ? 0.0 : 0.7

    }
    
    // MARK: - Animation
    
    func setupLayer() {
        
        tempView.layer.borderColor = UIColor.orangeColor().CGColor
        tempView.layer.cornerRadius = 0
        tempView.layer.shadowOpacity = 0.7
        tempView.layer.shadowRadius = 5.0
        tempView.layer.borderWidth = 10.0
        tempView.layer.borderColor = UIColor.blueColor().CGColor
        
    }
    
    func startViewAnimation() {
        
        UIView.animateWithDuration(1, delay: 0.0, options: [.CurveEaseIn, .Autoreverse, .Repeat], animations: {
            self.titleLabel.center.x -= 50
            self.tempView.transform = CGAffineTransformMakeScale(0.5, 0.5)
            }, completion: nil)
        
        let cornerAnim = CABasicAnimation(keyPath: "cornerRadius")
        cornerAnim.fromValue = 0.0
        cornerAnim.toValue = 75.0
        cornerAnim.duration = 1
        cornerAnim.repeatCount = .infinity
        cornerAnim.autoreverses = true
        tempView.layer.addAnimation(cornerAnim, forKey: "cornerRadius")
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
