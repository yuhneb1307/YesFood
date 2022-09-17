//
//  WaitingView.swift
//  YesFood
//
//  Created by Huy Tran on 9/17/22.
//

import SwiftUI

struct WaitingView: View {
    
    @State var countDownTimer = 300
    @State var timRunning = true
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    private let width: Double = 250
    
    var body: some View {
        VStack{
            GifImage("waitinggif")
            Text("Your food is preparing")
                .foregroundColor(.black)
                .font(.system(size: 36, weight: .bold))
                .bold()
                .foregroundColor(.white)
                .padding(.bottom, 300)
            Text("\(countDownTimer)")
                .font(.system(size:70, weight: .medium, design: .rounded))
                .onReceive(timer){ _ in
                    if countDownTimer > 0 && timRunning {
                        countDownTimer -= 1
                    } else {
                        timRunning = false
                    }
                }
        }
        
    }
}

struct WaitingView_Previews: PreviewProvider {
    static var previews: some View {
        WaitingView()
    }
}
