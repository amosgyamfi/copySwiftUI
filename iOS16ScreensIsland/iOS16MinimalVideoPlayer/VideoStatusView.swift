//
//  VideoStatusView.swift
//  iOS16 Screens Island
//
//

import SwiftUI

struct VideoStatusView: View {
    var body: some View {
        // Spacing = 8
        VStack(spacing: 8) {
            HStack {
                // Spacer
                Spacer()
                
                Image(systemName: "tv")
                Image(systemName: "ellipsis.circle")
            }
    
            // Spacing = 4
            VStack(spacing: 4) {
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 2)
                        .frame(width: .infinity, height: 5)
                        .foregroundStyle(Color(.systemGray5))
                    RoundedRectangle(cornerRadius: 2)
                        .frame(width: .random(in: 1...450), height: 5)
                }
                HStack {
                    Text("00:25")
                    
                    // Spacer
                    Spacer()
                    
                    Text("-45:18")
                }
                .font(.caption2)
                .foregroundStyle(.secondary)
            }
            
            
        }
    }
}

struct VideoStatusView_Previews: PreviewProvider {
    static var previews: some View {
        VideoStatusView()
            .preferredColorScheme(.dark)
    }
}
