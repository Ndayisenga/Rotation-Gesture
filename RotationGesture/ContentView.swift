//
//  ContentView.swift
//  RotationGesture
//
//  Created by Ndayisenga Jean Claude on 24/05/2021.
//

import SwiftUI

struct ContentView: View {
    @State var currentAngle: Angle = .degrees(0)
    @State var finalAngle: Angle = .degrees(0)
    var body: some View {
        NavigationView {
            VStack {
                Text("Click Me and Rotate")
                    .bold()
                    .background(Color.red)
                    .font(.system(size: 32))
                    .padding()
                    .rotationEffect(currentAngle + finalAngle)
                    .gesture(
                        RotationGesture()
                            .onChanged {
                                angle in
                                currentAngle = angle
                            }
                            .onEnded {
                                angle in
                                finalAngle = angle
                                currentAngle = .degrees(0)
                            }
                    )
            }
            .navigationTitle("Rotation Effect")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
