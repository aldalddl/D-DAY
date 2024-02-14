//
//  WidgetView_Single01_M_Comp01(pad120x120).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 1/8/24.
//

import SwiftUI

struct WidgetView_Single01_M_Comp01_pad120x120_: View { // disable shadow
    
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
                            .position(x: metrics.size.width * 0.404, y: metrics.size.height * 0.284)
                        
                    case 6...7:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 16.0))
                            .frame(width: 200, height: 20, alignment: .topLeading)
                            .position(x: metrics.size.width * 0.4, y: metrics.size.height * 0.2815)
                            
                    case 8...10:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 15.0))
                            .frame(width: 200, height: 20, alignment: .topLeading)
                            .position(x: metrics.size.width * 0.4, y: metrics.size.height * 0.2815)
                        
                    case 11...14:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 14.0))
                            .frame(width: 200, height: 20, alignment: .topLeading)
                            .position(x: metrics.size.width * 0.39, y: metrics.size.height * 0.282)
                        
                    case 15...:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 13.0))
                            .frame(width: 200, height: 80, alignment: .topLeading)
                            .position(x: metrics.size.width * 0.39, y: metrics.size.height * 0.43)
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
                        switch 3 {
                            
                    case 1:
                            
//                        switch ddayNumber {
                            switch "03" {
                                
                        case "0":
                            Text("D-DAY")
                                .font(.custom("Inter-Bold", size: 110.0))
                                .frame(width: 500, height: 100, alignment: .leading)
                                .position(x: 247, y: 109)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        default:
//                            Text("D-00\(ddayNumber)")
                                Text("D-004")
                                .font(.custom("Inter-Bold", size: 109.0))
                                .frame(width: 500, height: 100, alignment: .leading)
                                .position(x: 245, y: 107)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        }
                            
                    case 2:
//                        Text("D-0\(ddayNumber)")
                            Text("D-094")
                            .font(.custom("Inter-Bold", size: 110.0))
                            .frame(width: 500, height: 100, alignment: .leading)
                            .position(x: 243, y: 108)
                            .multilineTextAlignment(.leading)
                            .kerning(-11)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                    case 3:
//                        Text("D-\(ddayNumber)")
                            Text("D-994")
                            .font(.custom("Inter-Bold", size: 112.0))
                            .frame(width: 500, height: 100, alignment: .leading)
                            .position(x: 244, y: 109)
                            .multilineTextAlignment(.leading)
                            .kerning(-11)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 4:
                            
//                        switch (ddayNumber.components(separatedBy: "0").count - 1) { // 0의 갯수
                            switch 3 { // 0의 갯수
                                
                        case 0: // 0갯수 = 0개
                                
//                            switch (ddayNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                                switch 34 { // 1의 갯수
                            case 1: // 1갯수 1개 (ex. 1994)
//                                Text("D-\(ddayNumber)")
                                    Text("D-1994")
                                    .font(.custom("Inter-Bold", size: 99.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 240, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                
                            case 2: // 1갯수 2개 (ex. 1914)
//                                Text("D-\(ddayNumber)")
                                    Text("D-1914")
                                    .font(.custom("Inter-Bold", size: 103.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 242, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            case 3: // 1갯수 3개 (ex. 1114)
//                                Text("D-\(ddayNumber)")
                                    Text("D-1114")
                                    .font(.custom("Inter-Bold", size: 108.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 243, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            case 4: // 1갯수 4개 (ex. 1111)
//                                Text("D-\(ddayNumber)")
                                    Text("D-1111")
                                    .font(.custom("Inter-Bold", size: 114.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 245, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default: // 그 이외의, 1000~9999까지 0갯수 0개 & 1갯수 0개인 수 (ex. 9994)
//                                Text("D-\(ddayNumber)")
                                    Text("D-9994")
                                    .font(.custom("Inter-Bold", size: 94.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 243, y: 108)
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
                                    .font(.custom("Inter-Bold", size: 98.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 241, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                
                            case 2: // 1갯수 2개 (ex. 1014)
//                                Text("D-\(ddayNumber)")
                                    Text("D-1014")
                                    .font(.custom("Inter-Bold", size: 103.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 241, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            case 3: // 1갯수 3개 (ex. 1011)
//                                Text("D-\(ddayNumber)")
                                    Text("D-1011")
                                    .font(.custom("Inter-Bold", size: 109.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 241, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default: // 1갯수 0개 (ex. 9094)
//                                Text("D-\(ddayNumber)")
                                    Text("D-9094")
                                    .font(.custom("Inter-Bold", size: 93.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 242, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                        case 2: // 0갯수 = 2개
                                
//                            switch (ddayNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                                switch 23 { // 1의 갯수
                            case 1: // 1갯수 1개 (ex. 1004)
//                                Text("D-\(ddayNumber)")
                                    Text("D-1004")
                                    .font(.custom("Inter-Bold", size: 97.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 241, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                
                            case 2: // 1갯수 2개 (ex. 1001)
//                                Text("D-\(ddayNumber)")
                                    Text("D-1001")
                                    .font(.custom("Inter-Bold", size: 102.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 242, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default: // 1갯수 0개 (ex. 9004)
//                                Text("D-\(ddayNumber)")
                                    Text("D-9004")
                                    .font(.custom("Inter-Bold", size: 93.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 241, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                        case 3: // 0갯수 = 3개
                                
//                            switch (ddayNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                                switch 12 { // 1의 갯수
                                    
                            case 1: // 1갯수 1개 (ex. 1000)
//                                Text("D-\(ddayNumber)")
                                    Text("D-1000")
                                    .font(.custom("Inter-Bold", size: 98.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 241, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default: // 1갯수 0개 (ex. 9000)
//                                Text("D-\(ddayNumber)")
                                    Text("D-9000")
                                    .font(.custom("Inter-Bold", size: 94.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 241, y: 108)
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
                            .font(.custom("Inter-Bold", size: 82.0))
                            .frame(width: 500, height: 100, alignment: .leading)
                            .position(x: 241, y: 108)
                            .multilineTextAlignment(.leading)
                            .kerning(-8)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                    default:
                        Text("Default E S01-1-1")
                    }
                    
                case false :
//                    switch ddayNumber.count {
                        switch 3 {
                    case 1:
//                            switch ddayNumber {
                                switch "02" {
                            case "0":
                                Text("D-DAY")
                                    .font(.custom("Inter-Bold", size: 110.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 247, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-12)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default:
                                Text("D+")
                                    .font(.custom("Inter-Bold", size: 105.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 240, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-13)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
//                                    Text("00\(ddayNumber)")
                                    Text("004")
                                    .font(.custom("Inter-Bold", size: 105.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .position(x: 364, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-10)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            }
                            
                    case 2:
                        Text("D+")
                            .font(.custom("Inter-Bold", size: 106.0))
                            .frame(width: 500, height: 100, alignment: .leading)
                            .position(x: 240, y: 108)
                            .multilineTextAlignment(.leading)
                            .kerning(-13)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
//                        Text("0\(ddayNumber)")
                            Text("094")
                            .font(.custom("Inter-Bold", size: 106.0))
                            .frame(width: 500, height: 100, alignment: .leading)
                            .position(x: 365, y: 108)
                            .multilineTextAlignment(.leading)
                            .kerning(-10)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 3:
                        
//                        switch Int(ddayNumber)! / 100 {
                            switch 2 {
                        case 1:
                            Text("D+")
                                .font(.custom("Inter-Bold", size: 111.0))
                                .frame(width: 500, height: 100, alignment: .leading)
                                .position(x: 246, y: 109)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
//                            Text("\(ddayNumber)")
                            Text("104")
                                .font(.custom("Inter-Bold", size: 111.0))
                                .frame(width: 500, height: 100, alignment: .leading)
                                .position(x: 374, y: 109)
                                .multilineTextAlignment(.leading)
                                .kerning(-10)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        case 2...9:
                            Text("D+")
                                .font(.custom("Inter-Bold", size: 108.0))
                                .frame(width: 500, height: 100, alignment: .leading)
                                .position(x: 240, y: 109)
                                .multilineTextAlignment(.leading)
                                .kerning(-13)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
//                            Text("\(ddayNumber)")
                                Text("994")
                                .font(.custom("Inter-Bold", size: 108.0))
                                .frame(width: 500, height: 100, alignment: .leading)
                                .position(x: 365, y: 109)
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
                                    switch 5 { // 1의 갯수
                                case 1: // 1갯수 1개 (ex. 1994)
                                    Text("D")
                                        .font(.custom("Inter-Bold", size: 94.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .position(x: 191, y: 108)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    Text("+")
                                        .font(.custom("Inter-ExtraBold", size: 94.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .position(x: 251, y: 102)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
//                                    Text("\(ddayNumber)")
                                        Text("1994")
                                        .font(.custom("Inter-Bold", size: 94.0))
                                        .frame(width: 500, height: 100, alignment: .leading)
                                        .position(x: 352, y: 108)
                                        .multilineTextAlignment(.leading)
                                        .kerning(-9)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    
                                case 2: // 1갯수 2개 (ex. 1914)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 100.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 191, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 100.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 252, y: 102)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
//                                        Text("\(ddayNumber)")
                                        Text("1914")
                                            .font(.custom("Inter-Bold", size: 100.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .position(x: 358, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-10)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                case 3: // 1갯수 3개 (ex. 1114)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 106.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 191, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 106.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 256, y: 103)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
//                                        Text("\(ddayNumber)")
                                        Text("1114")
                                            .font(.custom("Inter-Bold", size: 106.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .position(x: 363, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-10)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                case 4: // 1갯수 4개 (ex. 1111)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 113.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 191, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 113.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 261, y: 103)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
//                                        Text("\(ddayNumber)")
                                        Text("1111")
                                            .font(.custom("Inter-Bold", size: 113.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .position(x: 372, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-10)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                default: // 그 이외의, 1000~9999까지 0갯수 0개 & 1갯수 0개인 수 (ex. 9994)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 91.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 191, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 91.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 247, y: 102)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
//                                        Text("\(ddayNumber)")
                                        Text("9994")
                                            .font(.custom("Inter-Bold", size: 91.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .position(x: 348, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-10)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                }
                                
                            case 1: // 0갯수 = 1개
//                                switch (ddayNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                                    switch 33 { // 1의 갯수
                                case 1: // 1갯수 1개 (ex. 1094)
                                    Text("D")
                                        .font(.custom("Inter-Bold", size: 95.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .position(x: 191, y: 109)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    Text("+")
                                        .font(.custom("Inter-ExtraBold", size: 95.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .position(x: 249, y: 103)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
//                                    Text("\(ddayNumber)")
                                        Text("1094")
                                        .font(.custom("Inter-Bold", size: 95.0))
                                        .frame(width: 500, height: 100, alignment: .leading)
                                        .position(x: 352, y: 109)
                                        .multilineTextAlignment(.leading)
                                        .kerning(-10)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    
                                case 2: // 1갯수 2개 (ex. 1014)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 99.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 191, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 99.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 252, y: 103)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
//                                        Text("\(ddayNumber)")
                                        Text("1014")
                                            .font(.custom("Inter-Bold", size: 99.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .position(x: 357, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-10)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                case 3: // 1갯수 3개 (ex. 1011)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 106.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 191, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 106.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 257, y: 103)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
//                                        Text("\(ddayNumber)")
                                        Text("1011")
                                            .font(.custom("Inter-Bold", size: 106.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .position(x: 364, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-10)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                default: // 1갯수 0개 (ex. 9094)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 89.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 191, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 89.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 246, y: 102)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
//                                        Text("\(ddayNumber)")
                                        Text("9094")
                                            .font(.custom("Inter-Bold", size: 89.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .position(x: 347, y: 108)
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
                                            .font(.custom("Inter-Bold", size: 92.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 191, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 92.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 248, y: 103)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
//                                        Text("\(ddayNumber)")
                                        Text("1004")
                                            .font(.custom("Inter-Bold", size: 92.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .position(x: 351, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-9)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    
                                case 2: // 1갯수 2개 (ex. 1001)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 97.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 191, y: 108)
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
                                        Text("1001")
                                            .font(.custom("Inter-Bold", size: 97.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .position(x: 358, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-9)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                default: // 1갯수 0개 (ex. 9004)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 89.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 191, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 89.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 245, y: 102)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
//                                        Text("\(ddayNumber)")
                                        Text("9004")
                                            .font(.custom("Inter-Bold", size: 89.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .position(x: 345, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-9)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                }
                                
                            case 3: // 0갯수 = 3개
//                                switch (ddayNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                                    switch 10 { // 1의 갯수
                                case 1: // 1갯수 1개 (ex. 1000)
                                    Text("D")
                                        .font(.custom("Inter-Bold", size: 94.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .position(x: 191, y: 108)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    Text("+")
                                        .font(.custom("Inter-ExtraBold", size: 94.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .position(x: 248, y: 102)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
//                                    Text("\(ddayNumber)")
                                        Text("1000")
                                        .font(.custom("Inter-Bold", size: 94.0))
                                        .frame(width: 500, height: 100, alignment: .leading)
                                        .position(x: 350, y: 108)
                                        .multilineTextAlignment(.leading)
                                        .kerning(-9)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                default: // 1갯수 0개 (ex. 9000)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 89.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 191, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 89.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .position(x: 245, y: 102)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
//                                        Text("\(ddayNumber)")
                                        Text("9000")
                                            .font(.custom("Inter-Bold", size: 89.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .position(x: 346, y: 108)
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
                            .font(.custom("Inter-Bold", size: 82.0))
                            .frame(width: 400, height: 100, alignment: .leading)
                            .position(x: 190, y: 108)
                            .multilineTextAlignment(.leading)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                        Text("+")
                            .font(.custom("Inter-ExtraBold", size: 82.0))
                            .frame(width: 400, height: 100, alignment: .leading)
                            .position(x: 240, y: 102)
                            .multilineTextAlignment(.leading)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
//                        Text("\(ddayNumber)")
                            Text("10000")
                            .font(.custom("Inter-Bold", size: 82.0))
                            .frame(width: 500, height: 100, alignment: .leading)
                            .position(x: 336, y: 108)
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
                        .font(.custom("Inter-Bold", size: 10.0))
                        .frame(width: 300, height: 20, alignment: .trailing)
                        .position(x: metrics.size.width * 0.45, y: metrics.size.height * 0.743)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                }
            }
        }
        .frame(height: 200)
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
    }
}
