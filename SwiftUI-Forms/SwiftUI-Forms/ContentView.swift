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
  @State private var sliderValue: Double = 0.5
  
  var body: some View {
    NavigationView {
      Form {
        Section(header: Text("Night shift automatically shift colors Night shift automatically shift colors Night shift automatically shift colors Night shift automatically shift colors")) {
          Toggle(isOn: $isScheduled) {
            Text("Scheduled")
          }
          HStack {
            VStack {
              Text("From")
              Text("To")
            }
            Spacer()
            
            NavigationLink(destination: Text("Hello")) {
              VStack {
                Text("Sunset")
                .foregroundColor(Color.blue)
                Text("Sunrise")
                  .foregroundColor(Color.blue)
              }
            }.fixedSize()
            
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
            }.padding(EdgeInsets(top: 10, leading: 4, bottom: 0, trailing: 4))
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
