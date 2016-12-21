//
//  buyViewController.swift
//  NewPolice
//
//  Created by Mor Di on 08.07.16.
//  Copyright © 2016 Mor Di. All rights reserved.
//

import UIKit
import StoreKit

class buyViewController: UIViewController, SKProductsRequestDelegate, SKPaymentTransactionObserver {
    
    @IBOutlet weak var lblOne: UILabel!
    
    @IBOutlet weak var lblTwo: UILabel!
 
    
    @IBOutlet weak var buyKupapButton: UIButton!
    
    @IBOutlet weak var restorButtonOutlet: UIButton!
    
    var listOfProducts = [SKProduct]()
    var productToPuchers = SKProduct()
    
    func addKUPAP() {
        
        let key = "1"
        NSUserDefaults.standardUserDefaults().setObject(key, forKey: "unlockKupap")
        NSUserDefaults.standardUserDefaults().synchronize()
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblOne.text = "Преміум доступ"
        lblTwo.text = "Відновлення покупок"
        

        if SKPaymentQueue.canMakePayments() {
            print("Покупки доступны")
            
            let productID: Set<String> = ["com.newpolice.buykupap"]
            let request = SKProductsRequest(productIdentifiers: productID)
            request.delegate = self
            request.start()
            
        } else {
            print("Покупки не доступны")
        }
        
        buyKupapButton.enabled = false

    }
    

    func buyProduct() {
        print("buy " + productToPuchers.productIdentifier)
        
        let pay = SKPayment(product: productToPuchers)
        SKPaymentQueue.defaultQueue().addTransactionObserver(self)
        SKPaymentQueue.defaultQueue().addPayment(pay)
    }
    
    
    func productsRequest(request: SKProductsRequest, didReceiveResponse response: SKProductsResponse) {
        print("Product request phase")
        
        let myProduct = response.products
        
        for product in myProduct {
            print("Product added")
            print("Product id: \(product.productIdentifier)")
            print("\(product.localizedTitle)")
            print("\(product.localizedDescription)")
            
            buyKupapButton.enabled = true
            
            listOfProducts.append(product)
        }
    }

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    @IBAction func buyKupapButtonAction(sender: UIButton) {
        
        for product in listOfProducts {
            let productID = product.productIdentifier
            if productID == "com.newpolice.buykupap" {
                productToPuchers = product
                
                buyProduct()
                break
            }
        }
        
    }
    
    
    
    
    
    @IBAction func restorButtonAction(sender: UIButton) {
        
        SKPaymentQueue.defaultQueue().addTransactionObserver(self)
        SKPaymentQueue.defaultQueue().restoreCompletedTransactions()
        
    }
    
    
    func paymentQueue(queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        
        for transaction in transactions {
            print("Error: \(transaction.error)")
            
            switch transaction.transactionState {
            case .Purchased:
                print("Success")
                
                print(productToPuchers.productIdentifier)
                
                let prodID = productToPuchers.productIdentifier
                
                switch prodID {
                case "com.newpolice.buykupap":
                    print("Unlocked")
                    addKUPAP()
                    break
                    
                default:
                    break
                }
                
                queue.finishTransaction(transaction)
                break
                
            case .Failed:
                print("Transaction error")
                
            default:
                print("default case")
                break
            }
            
        }
        
    }
    
    
    func paymentQueueRestoreCompletedTransactionsFinished(queue: SKPaymentQueue) {
        for transaction in queue.transactions {
            let prodID = transaction.payment.productIdentifier as String
            
            switch prodID {
            case "com.newpolice.buykupap":
                print ("Segue to KUPAP")
                addKUPAP()
                break
                
            default:
                break
            }
        }
        
    }
    
    
    func paymentQueue(queue: SKPaymentQueue, removedTransactions transactions: [SKPaymentTransaction]) {
        print("delete transaction from queue")
    }
    
    
    
}
