/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 3
  Author: Tran Le Quoc Huy, Dinh Quang Nhat, Ha Minh Duc, Tang Hue Thy
  ID: s3878686, s3681446, s3878911, s3697323
  Created  date: 07/07/2022
  Last modified: 18/09/2022
  Acknowledgement: RMIT Canvas, Github, Youtube
*/

import SwiftUI

struct WaitingView: View {
    
    @State var countDownTimer = 300
    @State var timRunning = true
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    private let width: Double = 250
    
    var body: some View {
        VStack{
            GifImage("waitinggif")
                .frame(width: 400, height: 300)
            Text("Your food is preparing")
                .foregroundColor(.black)
                .font(.system(size: 36, weight: .bold))
                .bold()
                .foregroundColor(.white)
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
