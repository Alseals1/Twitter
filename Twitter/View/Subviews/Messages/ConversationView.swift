import SwiftUI

struct ConversationView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            
            ScrollView {
                LazyVStack {
                    ForEach(0..<100) { _ in
                        ConversationCell()
                        
                    }
                }
                .padding()
            }
            
            Button(action: {
                //
            }, label: {
                Image(systemName: "envelope")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding()
            })
            .foregroundColor(.white)
            .background(Color.tweetButtonColor)
            .clipShape(Circle())
            .padding()
        }
    }
}

struct ConversationView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationView()
    }
}
