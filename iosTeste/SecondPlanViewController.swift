//
//  SecondPlanViewController.swift
//  iosTeste
//
//  Created by Gabriel Luís Silva Pereira on 07/09/22.
//

import UIKit

class SecondPlanViewController: UIViewController {
    private var initialTime: Double = 0
    private var finalTime: Double = 0
    @IBOutlet weak var textLabel: UILabel!
    private var processingTime: Double? = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculator()
    }
    
    func viewWillDisappear() {
        calculator()
    }
    
    private func calculator() {
        initialTime = Date().timeIntervalSinceReferenceDate
        var numberIteration:CLongLong=10000
        for i in 0...numberIteration {
            var cosseno = cos(Double(i));
            var seno = sin(cosseno);
            var tangente = tan(seno);
        }
        finalTime = Date().timeIntervalSinceReferenceDate
        processingTime = (finalTime - initialTime)
        textLabel?.text = String(format: "Tempo de processamento: %.5f milissegundos!", processingTime! * 1000)
        
    }

}
