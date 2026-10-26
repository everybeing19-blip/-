
import SwiftUI

struct ContentView: View {

    // ① 固定飲料清單
    let drinks = ["拿鐵咖啡", "紅茶", "可可", "鍋煮奶茶"]

    // ② 目前顯示的飲料
    @State private var selected = "拿鐵咖啡"

    var body: some View {

        VStack(spacing: 20) {

            // ③ 咖啡杯圖片
            Image(systemName: "cup.and.saucer.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundStyle(.brown)

            // ④ 標題
            Text("今天喝什麼？")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundStyle(.black)

            // ⑤ 說明文字
            Text("讓命運幫你決定一杯飲料")
                .font(.system(size: 20))
                .foregroundStyle(.gray)

            // ⑥ 白色資訊卡片
            ZStack {

                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.white)
                    .frame(width: 300, height: 130)

                // 卡片內的兩行文字
                VStack(spacing: 10) {

                    Text("今日推薦")
                        .font(.system(size: 15))
                        .foregroundStyle(.gray)

                    Text(selected)
                        .font(.system(size: 35))
                        .foregroundStyle(.brown)

                }
            }

            // ⑦ 兩個按鈕左右排列
            HStack(spacing: 20) {

                Button("隨機抽飲料") {
                    selected = drinks.randomElement() ?? "拿鐵咖啡"
                }
                .font(.system(size: 20))
                .foregroundStyle(.white)
                .padding(15)
                .background(Color.brown)
                .cornerRadius(12)

                Button("重新設定") {
                    selected = "拿鐵咖啡"
                }
                .font(.system(size: 20))
                .foregroundStyle(.brown)
                .padding(15)
                .background(Color.white)
                .cornerRadius(12)

            } // HStack 結束

        } // VStack 結束
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 246/255, green: 242/255, blue: 233/255))

    } // body 結束

} // ContentView 結束

#Preview {
    ContentView()
}
