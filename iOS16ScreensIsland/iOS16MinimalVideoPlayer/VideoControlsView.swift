//
//  VideoControlsView.swift
//  iOS16 Screens Island
//
//

import SwiftUI

struct VideoControlsView: View {
    let neckColor = #colorLiteral(red: 0.4210097194, green: 0.3893895745, blue: 0.9997705817, alpha: 1)
    
    var body: some View {
        NavigationStack {
            
            // Spacer
            Spacer()
            
            ZStack {
                Image("dog")
                    .resizable()
                    .scaledToFit()
                    .background(Color(neckColor).gradient.blendMode(.exclusion))
                
                HStack(spacing: 32) {
                    Image(systemName: "gobackward.10")
                        .font(.title)
                    Image(systemName: "pause.fill")
                        .font(.title)
                        .fontWeight(.bold)
                    Image(systemName: "goforward.10")
                        .font(.title)
                }
            }
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Button{
                        print("Pressed the close icon")
                    } label: {
                        Image(systemName: "xmark")
                    }
                    
                    Button{
                        print("Pressed the close icon")
                    } label: {
                        Image(systemName: "arrow.up.left.and.arrow.down.right")
                    }
                }
                
                ToolbarItem {
                    Button{
                        print("Pressed the close icon")
                    } label: {
                        Image(systemName: "speaker.wave.3.fill", variableValue: 0.25)
                    }
                }
            }
            
            // Spacer
            Spacer()
            
            VideoStatusView()
        }
        .padding()
    }
}

struct VideoControlsView_Previews: PreviewProvider {
    static var previews: some View {
        VideoControlsView()
            .preferredColorScheme(.dark)
    }
}
