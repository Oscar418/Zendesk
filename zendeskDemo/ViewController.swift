//
//  ViewController.swift
//  zendeskDemo
//
//  Created by Oscar on 2021/02/03.
//

import UIKit
import ZendeskCoreSDK
import SupportSDK

class ViewController: UIViewController {
    
    var sampleName = "Oscar"
    var sampleLastName = "Nengovhela"
    var smapleEmail = "oscar@onecart.co.za"

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpZendeskCredentials()
    }
}

extension ViewController {
    func setUpZendeskCredentials() {
        let ident = Identity.createAnonymous(name: "\(sampleName) \(sampleLastName)", email: smapleEmail)
        Zendesk.instance?.setIdentity(ident)
    }
}

extension ViewController {
    @IBAction func openZendesk(_ sender: Any) {
        let helpCenter = HelpCenterUi.buildHelpCenterOverviewUi()
        self.navigationController?.pushViewController(helpCenter, animated: true)
    }
}
