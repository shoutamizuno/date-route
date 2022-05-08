import TokamakDOM

struct TokamakApp: App {
    var body: some Scene {
        WindowGroup("Date Route") {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("下北沢〜三軒茶屋")

            VStack {
                HTML(
                    "iframe",
                    [
                        "width": "640",
                        "height": "480",
                        "src": "https://www.google.com/maps/d/u/0/embed?mid=1kgKxJziBKyuttb84jNUci5lgUe9qS0gz&ehbc=2E312F"
                    ]
                ) {
                }
                List {
                    Text("A: 下北沢駅")
                    Text("B: ミカン下北")
                    Text("C: 旧ヤム邸 シモキタ荘")
                    Text("D: 胡粋")
                    Text("E: DYLAN")
                    Text("F: OGAWA COFFEE LABORATORY 下北沢")
                    Text("G: New York Joe Shimokitazawa")
                    Text("H: 三茶呑場マルコ")
                }
            }
        }
    }
}

// @main attribute is not supported in SwiftPM apps.
// See https://bugs.swift.org/browse/SR-12683 for more details.
TokamakApp.main()
