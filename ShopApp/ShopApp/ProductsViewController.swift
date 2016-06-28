//
//  ProductsViewController.swift
//  ShopApp
//
//  Created by Pratima Umbardand on 14/06/16.
//  Copyright © 2016 Pratima Umbardand. All rights reserved.
//

import UIKit

private let reuseIdentifier = "ProductsCell"

class ProductsViewController: UICollectionViewController, ProductDetailViewDelegate {
    
    var productsList = [Product(name: "Product 1", price: 2000), Product(name: "Product 2", price: 2000)
                        ,Product(name: "Product 3", price: 2000), Product(name: "Product 4", price: 2000)
                        , Product(name: "Product 5", price: 2000), Product(name: "Product 6", price: 2000)
                        , Product(name: "Product 7", price: 2000), Product(name: "Product 8", price: 2000)
                        , Product(name: "Product 9", price: 2000), Product(name: "Product 10", price: 2000)]

    var selectedIndex = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(animated: Bool) {
        self.tabBarController?.navigationItem.title = "Products"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
     MARK: - Navigation

     In a storyboard-based application, you will often want to do a little preparation before navigation
    
    */
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
         //Get the new view controller using [segue destinationViewController].
         //Pass the selected object to the new view controller.
        
        let viewController = segue.destinationViewController as? ProductDetailViewController
        viewController?.delegate = self
        
        let product = self.productsList[selectedIndex]
        viewController?.product = product
    }

    // MARK: ProductDetailViewDelegate
    
    func getProductTitle() -> String {
        return "Product Title"
    }
    
    
    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productsList.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath)
    
        // Configure the cell
        let productCell = cell as? ProductCell
        let product = productsList[indexPath.row]
        productCell?.productName.text = product.productName
        productCell?.productPrice.text = String(product.productPrice)
        
        return cell
    }
    
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        selectedIndex = indexPath.row
        return true
    }

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}
