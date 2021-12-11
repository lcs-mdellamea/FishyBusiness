//
//  FishFinderView.swift
//  FishyBusiness
//
//  Created by Madison Dellamea on 12/11/21.
//

import SwiftUI

struct FishFinderView: View {
    //MARK: Stored Properties
    
    @State var providedDepth1 = ""
    @State var providedDepth2 = ""
    @State var providedDepth3 = ""
    @State var providedDepth4 = ""
    
    var alarm = false
    
    //MARK: Computed Properties
    
    //depth1
    var depth1: Double? {
        // Tests of the provided input
        // 1. Ensure that we can simply change the input into a double
        // 2. Ensure that the value as a double is more than 0
        
        // With a guard statement, we list the things we want to be true, and provide an action to carry out when those conditions are not met.
        
        guard let depth1 = Double(providedDepth1),
              depth1 > 0
        else {
            // When the tests are failed, we do not have a valid depth
            return nil }
        return depth1
    }
    //depth2
    var depth2: Double? {
        guard let depth2 = Double(providedDepth2),
              depth2 > 0
        else {
            return nil }
        return depth2
    }
    //depth3
    var depth3: Double? {
        guard let depth3 = Double(providedDepth3),
              depth3 > 0
        else {
            return nil }
        return depth3
    }
    //depth4
    var depth4: Double? {
        guard let depth4 = Double(providedDepth4),
              depth4 > 0
        else {
            return nil }
        return depth4
    }
    
    var body: some View {
        ScrollView {
            
            
            
        }
        .navigationTitle("Fishy Business")
    }
}
struct FishFinderView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FishFinderView()
        }
    }
}
