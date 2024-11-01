import SwiftUI

struct ContentView: View {
    @State var isTapped = false
    @State var isTapped2 = false
    var body: some View {
        Button("Tap me") {
            isTapped = true
        }.actionSheet(isPresented: $isTapped, content: {
            ActionSheet(title: Text("Error"),
                        message: Text("Wtf are you doing?"),
                        buttons: [.destructive(Text("Fix it"), action: {
                            print("Fixed")}),
                        .cancel()])
        }
        ).padding(40)
            .fontWeight(.bold)
        Button("Tap me again") {
            isTapped2 = true
        }.alert(isPresented: $isTapped2) {
            Alert(title: Text("Error"), message: Text("Wtf are you doing?"))
        }
        }
    }

#Preview {
    ContentView()
}
