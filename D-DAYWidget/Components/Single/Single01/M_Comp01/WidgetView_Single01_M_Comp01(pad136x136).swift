//
//  WidgetView_Single01_M_Comp01(pad136x136).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 1/8/24.
//

import SwiftUI

struct WidgetView_Single01_M_Comp01_pad136x136_: View { // disable shadow
    
    var entry: Provider.Entry
    
    var ddaySymbolMenu: [DdaySymbol]
    
    var body: some View {
        
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        let isTodayCounted: String = ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false"
        let dateInt = CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2024.02.16"), isTodayCounted: isTodayCounted)
        
        
        ZStack {
            ZStack {
                
                GeometryReader { metrics in
                    
                    // Title
                    switch (ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue()).count {
                        
                    case ...5:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 16.0))
                            .frame(width: 200, height: 20, alignment: .topLeading)
                            .position(x: metrics.size.width * 0.382, y: metrics.size.height * 0.277)
                        
                    case 6...7:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 16.0))
                            .frame(width: 200, height: 20, alignment: .topLeading)
                            .position(x: metrics.size.width * 0.37, y: metrics.size.height * 0.279)
                            
                    case 8...10:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 15.0))
                            .frame(width: 200, height: 20, alignment: .topLeading)
                            .position(x: metrics.size.width * 0.373, y: metrics.size.height * 0.28)
                        
                    case 11...14:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 14.0))
                            .frame(width: 200, height: 20, alignment: .topLeading)
                            .position(x: metrics.size.width * 0.378, y: metrics.size.height * 0.28)
                        
                    case 15...:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 13.0))
                            .frame(width: 200, height: 80, alignment: .topLeading)
                            .position(x: metrics.size.width * 0.378, y: metrics.size.height * 0.418)
                            .multilineTextAlignment(.leading)
                        
                    default:
                        Text("Default E S01-1-0")
                        
                    }
                }
                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                
                
                let ddayNumber = CustomFunctions().dateIntSign00(dateIntParam: dateInt)
                
                // DayNumber
//                switch dateInt <= 0 {
                    switch false {
                        
                case true :
//                    switch ddayNumber.count {
                        switch 5 {
                            
                    case 1:
                            
//                        switch ddayNumber {
                            switch "02" {
                                
                        case "0":
                            Text("D-DAY")
                                .font(.custom("Inter-Bold", size: 118.0))
                                .frame(width: 500, height: 100, alignment: .leading)
                                .position(x: 248, y: 108)
                                .multilineTextAlignment(.leading)
                                .kerning(-10)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        default:
//                            Text("D-00\(ddayNumber)")
                                Text("D-001")
                                .font(.custom("Inter-Bold", size: 120.0))
                                .frame(width: 500, height: 100, alignment: .leading)
                                .position(x: 245, y: 108)
                                .multilineTextAlignment(.leading)
                                .kerning(-10)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        }
                            
                    case 2:
//                        Text("D-0\(ddayNumber)")
                            Text("D-011")
                            .font(.custom("Inter-Bold", size: 122.0))
                            .frame(width: 500, height: 100, alignment: .leading)
                            .position(x: 244, y: 110)
                            .multilineTextAlignment(.leading)
                            .kerning(-10)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                    case 3:
//                        Text("D-\(ddayNumber)")
                            Text("D-994")
                            .font(.custom("Inter-Bold", size: 124.0))
                            .frame(width: 500, height: 100, alignment: .leading)
                            .position(x: 245, y: 109)
                            .multilineTextAlignment(.leading)
                            .kerning(-11)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 4:
                            
//                        switch (ddayNumber.components(separatedBy: "0").count - 1) { // 0의 갯수
                            switch 3 { // 0의 갯수
                                
                        case 0: // 0갯수 = 0개
                                
//                            switch (ddayNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                                switch 43 { // 1의 갯수
                            case 1: // 1갯수 1개 (ex. 1994)
//                                Text("D-\(ddayNumber)")
                                    Text("D-1994")
                                    .font(.custom("Inter-Bold", size: 108.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 244, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                
                            case 2: // 1갯수 2개 (ex. 1914)
//                                Text("D-\(ddayNumber)")
                                    Text("D-1914")
                                    .font(.custom("Inter-Bold", size: 113.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 245, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            case 3: // 1갯수 3개 (ex. 1114)
//                                Text("D-\(ddayNumber)")
                                    Text("D-1114")
                                    .font(.custom("Inter-Bold", size: 118.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 245, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            case 4: // 1갯수 4개 (ex. 1111)
//                                Text("D-\(ddayNumber)")
                                    Text("D-1111")
                                    .font(.custom("Inter-Bold", size: 125.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 245, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default: // 그 이외의, 1000~9999까지 0갯수 0개 & 1갯수 0개인 수 (ex. 9994)
//                                Text("D-\(ddayNumber)")
                                    Text("D-9994")
                                    .font(.custom("Inter-Bold", size: 103.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 244, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                            
                        case 1: // 0갯수 = 1개
//                            switch (ddayNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                                switch 34 { // 1의 갯수
                                    
                            case 1: // 1갯수 1개 (ex. 1094)
//                                Text("D-\(ddayNumber)")
                                    Text("D-1094")
                                    .font(.custom("Inter-Bold", size: 107.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 244, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                
                            case 2: // 1갯수 2개 (ex. 1014)
//                                Text("D-\(ddayNumber)")
                                    Text("D-1014")
                                    .font(.custom("Inter-Bold", size: 112.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 243, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            case 3: // 1갯수 3개 (ex. 1011)
//                                Text("D-\(ddayNumber)")
                                    Text("D-1011")
                                    .font(.custom("Inter-Bold", size: 119.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 244, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default: // 1갯수 0개 (ex. 9094)
//                                Text("D-\(ddayNumber)")
                                    Text("D-9094")
                                    .font(.custom("Inter-Bold", size: 103.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 243, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                        case 2: // 0갯수 = 2개
                                
//                            switch (ddayNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                                switch 3 { // 1의 갯수
                            case 1: // 1갯수 1개 (ex. 1004)
//                                Text("D-\(ddayNumber)")
                                    Text("D-1004")
                                    .font(.custom("Inter-Bold", size: 106.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 244, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                
                            case 2: // 1갯수 2개 (ex. 1001)
//                                Text("D-\(ddayNumber)")
                                    Text("D-1001")
                                    .font(.custom("Inter-Bold", size: 112.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 244, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default: // 1갯수 0개 (ex. 9004)
//                                Text("D-\(ddayNumber)")
                                    Text("D-9004")
                                    .font(.custom("Inter-Bold", size: 102.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 243, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                        case 3: // 0갯수 = 3개
                                
//                            switch (ddayNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                                switch 13 { // 1의 갯수
                                    
                            case 1: // 1갯수 1개 (ex. 1000)
//                                Text("D-\(ddayNumber)")
                                    Text("D-1000")
                                    .font(.custom("Inter-Bold", size: 107.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 244, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default: // 1갯수 0개 (ex. 9000)
//                                Text("D-\(ddayNumber)")
                                    Text("D-9000")
                                    .font(.custom("Inter-Bold", size: 102.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 244, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                        default:
                            Text("Encountered Error S02-2-5")
                        }
                        
                    case 5...:
//                        Text("D-\(ddayNumber)")
                            Text("D-20000")
                            .font(.custom("Inter-Bold", size: 89.0))
                            .frame(width: 500, height: 100, alignment: .leading)
                            .position(x: 243, y: 108)
                            .multilineTextAlignment(.leading)
                            .kerning(-8)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                    default:
                        Text("Default E S01-1-1")
                    }
                    
                case false :
//                    switch ddayNumber.count {
                        switch 5 {
                    case 1:
//                            switch ddayNumber {
                                switch "01" {
                            case "0":
                                Text("D-DAY")
                                        .font(.custom("Inter-Bold", size: 118.0))
                                        .frame(width: 500, height: 100, alignment: .leading)
                                        .position(x: 248, y: 108)
                                        .multilineTextAlignment(.leading)
                                        .kerning(-10)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default:
                                Text("D+")
                                    .font(.custom("Inter-Bold", size: 114.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 246, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-13)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
//                                    Text("00\(ddayNumber)")
                                    Text("004")
                                    .font(.custom("Inter-Bold", size: 114.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 380, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-10)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            }
                            
                    case 2:
                        Text("D+")
                            .font(.custom("Inter-Bold", size: 116.0))
                            .frame(width: 500, height: 100, alignment: .leading)
                            .position(x: 244, y: 109)
                            .multilineTextAlignment(.leading)
                            .kerning(-13)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
//                        Text("0\(ddayNumber)")
                            Text("094")
                            .font(.custom("Inter-Bold", size: 116.0))
                            .frame(width: 500, height: 100, alignment: .leading)
                            .position(x: 381, y: 109)
                            .multilineTextAlignment(.leading)
                            .kerning(-10)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 3:
                        
//                        switch Int(ddayNumber)! / 100 {
                            switch 2 {
                        case 1:
                            Text("D+")
                                .font(.custom("Inter-Bold", size: 122.0))
                                .frame(width: 500, height: 100, alignment: .leading)
                                .position(x: 245, y: 109)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
//                            Text("\(ddayNumber)")
                            Text("104")
                                .font(.custom("Inter-Bold", size: 122.0))
                                .frame(width: 500, height: 100, alignment: .leading)
                                .position(x: 388, y: 109)
                                .multilineTextAlignment(.leading)
                                .kerning(-10)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        case 2...9:
                            Text("D+")
                                .font(.custom("Inter-Bold", size: 117.0))
                                .frame(width: 500, height: 100, alignment: .leading)
                                .position(x: 244, y: 109)
                                .multilineTextAlignment(.leading)
                                .kerning(-13)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
//                            Text("\(ddayNumber)")
                                Text("994")
                                .font(.custom("Inter-Bold", size: 117.0))
                                .frame(width: 500, height: 100, alignment: .leading)
                                .position(x: 382, y: 109)
                                .multilineTextAlignment(.leading)
                                .kerning(-10)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                        default:
                            Text("Default ES01-1-2")
                        }
                        
                            
                    case 4:
//                            switch (ddayNumber.components(separatedBy: "0").count - 1) { // 0의 갯수
                                switch 3 { // 0의 갯수
                            case 0: // 0갯수 = 0개
                                
//                                switch (ddayNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                                    switch 41 { // 1의 갯수
                                case 1: // 1갯수 1개 (ex. 1994)
                                    Text("D")
                                        .font(.custom("Inter-Bold", size: 104.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .position(x: 192, y: 108)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    Text("+")
                                        .font(.custom("Inter-ExtraBold", size: 104.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .position(x: 255, y: 102)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
//                                    Text("\(ddayNumber)")
                                        Text("1994")
                                        .font(.custom("Inter-Bold", size: 104.0))
                                        .frame(width: 500, height: 100, alignment: .leading)
                                        .position(x: 361, y: 108)
                                        .multilineTextAlignment(.leading)
                                        .kerning(-8)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    
                                case 2: // 1갯수 2개 (ex. 1914)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 110.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 191, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 110.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 258, y: 102)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
//                                        Text("\(ddayNumber)")
                                        Text("1914")
                                            .font(.custom("Inter-Bold", size: 110.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .position(x: 367, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-9)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                case 3: // 1갯수 3개 (ex. 1114)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 116.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 192, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 116.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 263, y: 103)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
//                                        Text("\(ddayNumber)")
                                        Text("1114")
                                            .font(.custom("Inter-Bold", size: 116.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .position(x: 376, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-10)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                case 4: // 1갯수 4개 (ex. 1111)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 122.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 195, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 122.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 270, y: 103)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
//                                        Text("\(ddayNumber)")
                                        Text("1111")
                                            .font(.custom("Inter-Bold", size: 122.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .position(x: 388, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-10)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                default: // 그 이외의, 1000~9999까지 0갯수 0개 & 1갯수 0개인 수 (ex. 9994)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 98.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 192, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 98.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 253, y: 102)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
//                                        Text("\(ddayNumber)")
                                        Text("9994")
                                            .font(.custom("Inter-Bold", size: 98.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .position(x: 360, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-9)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                }
                                
                            case 1: // 0갯수 = 1개
//                                switch (ddayNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                                    switch 33 { // 1의 갯수
                                case 1: // 1갯수 1개 (ex. 1094)
                                    Text("D")
                                        .font(.custom("Inter-Bold", size: 103.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .position(x: 193, y: 109)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    Text("+")
                                        .font(.custom("Inter-ExtraBold", size: 103.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .position(x: 257, y: 103)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
//                                    Text("\(ddayNumber)")
                                        Text("1094")
                                        .font(.custom("Inter-Bold", size: 103.0))
                                        .frame(width: 500, height: 100, alignment: .leading)
                                        .position(x: 362, y: 109)
                                        .multilineTextAlignment(.leading)
                                        .kerning(-9)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    
                                case 2: // 1갯수 2개 (ex. 1014)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 109.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 194, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 109.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 261, y: 103)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
//                                        Text("\(ddayNumber)")
                                        Text("1014")
                                            .font(.custom("Inter-Bold", size: 109.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .position(x: 369, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-10)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                case 3: // 1갯수 3개 (ex. 1011)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 115.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 194, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 115.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 266, y: 103)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
//                                        Text("\(ddayNumber)")
                                        Text("1011")
                                            .font(.custom("Inter-Bold", size: 115.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .position(x: 378, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-10)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                default: // 1갯수 0개 (ex. 9094)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 97.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 194, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 97.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 254, y: 102)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
//                                        Text("\(ddayNumber)")
                                        Text("9094")
                                            .font(.custom("Inter-Bold", size: 97.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .position(x: 361, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-9)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                }
                                
                            case 2: // 0갯수 = 2개
                                    
//                                switch (ddayNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                                    switch 23 { // 1의 갯수
                                        
                                case 1: // 1갯수 1개 (ex. 1004)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 103.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 192, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 103.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 255, y: 103)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
//                                        Text("\(ddayNumber)")
                                        Text("1004")
                                            .font(.custom("Inter-Bold", size: 103.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .position(x: 361, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-9)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    
                                case 2: // 1갯수 2개 (ex. 1001)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 108.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 193, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 108.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 260, y: 102)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
//                                        Text("\(ddayNumber)")
                                        Text("1001")
                                            .font(.custom("Inter-Bold", size: 108.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .position(x: 368, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-9)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                default: // 1갯수 0개 (ex. 9004)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 97.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 192, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 97.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 251, y: 102)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
//                                        Text("\(ddayNumber)")
                                        Text("9004")
                                            .font(.custom("Inter-Bold", size: 97.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .position(x: 356, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-8)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                }
                                
                            case 3: // 0갯수 = 3개
//                                switch (ddayNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                                    switch 12 { // 1의 갯수
                                case 1: // 1갯수 1개 (ex. 1000)
                                    Text("D")
                                        .font(.custom("Inter-Bold", size: 104.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .position(x: 191, y: 108)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    Text("+")
                                        .font(.custom("Inter-ExtraBold", size: 104.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .position(x: 255, y: 102)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
//                                    Text("\(ddayNumber)")
                                        Text("1000")
                                        .font(.custom("Inter-Bold", size: 104.0))
                                        .frame(width: 500, height: 100, alignment: .leading)
                                        .position(x: 360, y: 108)
                                        .multilineTextAlignment(.leading)
                                        .kerning(-9)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                default: // 1갯수 0개 (ex. 9000)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 99.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 191, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 99.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 252, y: 102)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
//                                        Text("\(ddayNumber)")
                                        Text("9000")
                                            .font(.custom("Inter-Bold", size: 99.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .position(x: 358, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-9)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    }
                                
                            default:
                                Text("Encountered Error S02-2-5")
                            }
                        
                        
                    case 5...:
                        Text("D")
                            .font(.custom("Inter-Bold", size: 89.0))
                            .frame(width: 400, height: 100, alignment: .leading)
                            .position(x: 188, y: 108)
                            .multilineTextAlignment(.leading)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                        Text("+")
                            .font(.custom("Inter-ExtraBold", size: 89.0))
                            .frame(width: 400, height: 100, alignment: .leading)
                            .position(x: 243, y: 102)
                            .multilineTextAlignment(.leading)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
//                        Text("\(ddayNumber)")
                            Text("10000")
                            .font(.custom("Inter-Bold", size: 89.0))
                            .frame(width: 500, height: 100, alignment: .leading)
                            .position(x: 340, y: 108)
                            .multilineTextAlignment(.leading)
                            .kerning(-8)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                    default:
                        Text("Default error S01-1-3")
                    }
                    
                default:
                    Text("Default Error S01-1")
                }
                
                
                // Date
                GeometryReader { metrics in
                    Text(ddaySymbolMenu[safe: 0]?.ddayDate ?? "2023.12.31")
                        .font(.custom("Inter-Bold", size: 11.0))
                        .frame(width: 300, height: 20, alignment: .trailing)
                        .position(x: metrics.size.width * 0.477, y: metrics.size.height * 0.763)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                }
            }
        }
        .frame(height: 200)
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
    }
}
