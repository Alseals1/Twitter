import SwiftUI

struct ConversationCell: View {
    var body: some View {
        VStack {
            HStack(spacing: 12) {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .cornerRadius(28)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("batman")
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text("Longer message text to see what happen when I do this ")
                        .font(.system(size: 16))
                        .lineLimit(2)
                    
                }
                .padding(.trailing)
            }
            Divider()
        }
    }
}

struct ConversationCell_Previews: PreviewProvider {
    static var previews: some View {
        ConversationCell()
    }
}
