import SwiftUI

struct FeedView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            
            ScrollView {
                LazyVStack {
                    ForEach(0..<100) { _ in
                        TweetCellView()
                        
                    }
                }
                .padding()
            }
            
            Button(action: {
                //
            }, label: {
                Image("Tweet")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 32, height: 32)
                    .padding()
            })
            .foregroundColor(.white)
            .background(Color.tweetButtonColor)
            .clipShape(Circle())
            .padding()
        }
        .navigationTitle("Feed")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
