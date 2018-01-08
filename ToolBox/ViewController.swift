//
//  ViewController.swift
//  ToolBox
//
//  Created by Jake Berberich on 1/6/18.
//  Copyright © 2018 Jake Berberich. All rights reserved.
//   https://www.youtube.com/watch?v=86yf34Y24Uc
import UIKit

class ViewController: UIViewController {
    var upper: Float = 235
    var lower: Float = 220
    var startingWeight: Float = 229
    var sliderValue: Float = 229
    var displayValue: Double = 0
    var delta: Float = 0
    var change: Double = 0
    var segueFilter: String = "none"
    
    enum FilterValues: String {
        case Wild = "Wild"
        case House = "House"
        case Zoo = "Zoo"
    }
    
    @IBOutlet weak var filterSlider: UISegmentedControl!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var arrayFilter: UIButton!
    @IBOutlet weak var currentWeight: UILabel!
    @IBOutlet weak var initalValueLabel: UILabel!
    @IBOutlet weak var weightChangeLabel: UILabel!
    @IBOutlet weak var filterPickedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initalValueLabel.text = String(startingWeight)
        weightSlider.value = startingWeight
      weightSlider.minimumValue = lower
        weightSlider.maximumValue = upper
        filterPickedLabel.text = FilterValues.Wild.rawValue
    }
    
    @IBAction func filterTheArray(_ sender: Any) {
        print("filter me")
      
    }
    
    @IBAction func modifyWeight(_ sender: Any) {
    currentWeight.text = String(roundf(weightSlider.value))
        currentWeight.text = String(format: "%.2f", weightSlider.value)
    // currentWeight.text = String(Int(weightSlider.value))
        
        delta = (weightSlider.value - startingWeight)
        weightChangeLabel.text = String(format: "%.2f", delta)
    }
    
    @IBAction func selectedFilterValue(_ sender: Any) {
        switch filterSlider.selectedSegmentIndex {
        case 0:
            segueFilter = FilterValues.Wild.rawValue
        case 1:
            segueFilter = FilterValues.House.rawValue
        case 2:
            segueFilter = FilterValues.Zoo.rawValue
        default:
            segueFilter = FilterValues.Wild.rawValue
        }
        filterPickedLabel.text = segueFilter
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ContainerTableVC
        if  segue.identifier  == "filterSegue" {
            destinationVC.segueFilter = segueFilter
            
        }
    }
}
