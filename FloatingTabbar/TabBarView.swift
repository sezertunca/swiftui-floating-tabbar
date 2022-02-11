import SwiftUI

struct TabBarView: View {
    
    @State var selectedIndex = 0
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedIndex) {
                Group {
                    Color.orange
                        .tag(0)
                        
                    Color.blue
                        .tag(1)
                    Color.green
                        .tag(2)
                }
                .ignoresSafeArea()
            }
            tabView
        }
    }
    
    private var tabView: some View {
        HStack {
            Group {
                Button { self.selectedIndex = 0 } label: {
                    Image(systemName: "house")
                        .renderingMode(.template)
                }
                Button { self.selectedIndex = 1 } label: {
                    Image(systemName: "flame")
                        .renderingMode(.template)
                }
                Button { self.selectedIndex = 2 } label: {
                    Image(systemName: "person")
                        .renderingMode(.template)
                }
            }
            .foregroundColor(.gray)
            .font(.subheadline)
            .padding(.horizontal)
            .padding(.vertical, 5)
        }
        .padding(6)
        .background(Color.white.ignoresSafeArea(edges: .bottom))
        .cornerRadius(30)
        .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 5)
        .padding(.horizontal, 70)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}

