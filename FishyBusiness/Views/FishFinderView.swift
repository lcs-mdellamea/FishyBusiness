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
    
    //MARK: Computed Properties
    
    //depth1 guard
    var depth1: Double? {
        // Tests of the provided input
        // 1. Ensure that we can simply change the input into a double
        // 2. Ensure that the value as a double is more than 0
        
        // With a guard statement, we list the things we want to be true, and provide an action to carry out when those conditions are not met.
        
        guard let depth1 = Double(providedDepth1),
              depth1 > 0
        else {
            // When the tests are failed, we do not have a valid depth
            return nil
        }
        return depth1
    }
    
    //depth2 guard
    var depth2: Double? {
        guard let depth2 = Double(providedDepth2),
              depth2 > 0
        else {
            return nil
        }
        return depth2
    }
    
    //depth3 guard
    var depth3: Double? {
        guard let depth3 = Double(providedDepth3),
              depth3 > 0
        else {
            return nil
        }
        return depth3
    }
    
    //depth4 guard
    var depth4: Double? {
        guard let depth4 = Double(providedDepth4),
              depth4 > 0
        else {
            return nil
        }
        return depth4
    }

    // The purpose of this computed property is to report the actual result based on the numeric input.
    var answer: String {
        
        guard let depth1 = depth1,
              let depth2 = depth2,
              let depth3 = depth3,
              let depth4 = depth4
        else {
            return "Cannot compute"
        }
        
        //logic
        if depth1 < depth2 &&
            depth2 < depth3 &&
            depth3 < depth4 {
            return "Fish Rising"
        } else if depth1 > depth2 &&
                    depth2 > depth3 &&
                    depth3 > depth4 {
            return "Fish Diving"
        } else if depth1 == depth2 &&
                    depth2 == depth3 &&
                    depth3 == depth4 {
            return "Fish At Constant Depth"
        } else {
            return "No Fish"
            
        }
        
    }
    
    //body
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                //depth1 textfield
                Group {
                    SectionLabelView(text: "Depth1")
                    
                    // Input: Depth1
                                        
                    TextField("Depth1",
                              text: $providedDepth1,
                              prompt: Text("Numeric value greater than 0")
                    )
                    //                           Ternary conditional operators
                    //                             "One line if statement"
                    //                           CONDITION      TRUE        FALSE
                        .foregroundColor(depth1 == nil ? Color.red : Color.primary)
                    
                    // Output: Depth1
                }
                //depth2 textfield
                Group {
                    
                    SectionLabelView(text: "Depth2")
                    
                    TextField("Depth2",
                              text: $providedDepth2,
                              prompt: Text("Numeric value greater than 0")
                    )
                        .foregroundColor(depth2 == nil ? Color.red : Color.primary)
                }
                //depth3 textfield
                Group {
                    
                    SectionLabelView(text: "Depth3")
                    
                    TextField("Depth3",
                              text: $providedDepth3,
                              prompt: Text("Numeric value greater than 0")
                    )
                        .foregroundColor(depth3 == nil ? Color.red : Color.primary)
                }
                //depth4 textfield
                Group {
                    
                    SectionLabelView(text: "Depth4")
                    
                    TextField("Depth4",
                              text: $providedDepth4,
                              prompt: Text("Numeric value greater than 0"))
                        .foregroundColor(depth4 == nil ? Color.red : Color.primary)
                }
 
                Text(answer)

                Spacer()
                
            
                
            }
            .padding()
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
