//
//  ContentView.swift
//  SwiftUI-Forms
//
//  Created by projas on 12/19/19.
//  Copyright © 2019 projas. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  @State private var isScheduled = false
  @State private var isEnableUntilTomorrow = false
  @State private var sliderValue: Double = 0
  
  var body: some View {
    NavigationView {
      Form {
        Section(header: Text("Night shift automatically shift colors Night shift automatically shift colors Night shift automatically shift colors Night shift automatically shift colors")) {
          Toggle(isOn: $isScheduled) {
            Text("Scheduled")
          }
          VStack {
            HStack {
              Text("From")
              Spacer()
              Text("Sunset")
                .foregroundColor(Color.blue)
            }
            
            HStack {
              Text("To")
              Spacer()
              Text("Sunrise")
                .foregroundColor(Color.blue)
            }
          }
        }
        
        Section {
          Toggle(isOn: $isEnableUntilTomorrow) {
            Text("Manually Enable Until Tomorrow")
          }
        }
        
        Section(header: Text("COLOR TEMPERATURE")) {
          VStack {
            HStack {
              Text("Less Warm")
              Spacer()
              Text("More Warm")
            }
            Slider(value: $sliderValue)
          }
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
