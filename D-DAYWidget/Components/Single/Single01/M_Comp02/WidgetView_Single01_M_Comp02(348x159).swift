//
//  WidgetView_Single01_M_Comp02(348x159).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2023/04/02.
//

import SwiftUI

struct WidgetView_Single01_M_Comp02_348x159_: View { // enable shadow
    
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
                            .font(.custom("Inter-Bold", size: 20.0))
                            .frame(width: 200, height: 20, alignment: .topLeading)
                            .position(x: metrics.size.width * 0.385, y: metrics.size.height * 0.248)
                            
                    case 6...7:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 17.0))
                            .frame(width: 200, height: 20, alignment: .topLeading)
                            .position(x: metrics.size.width * 0.374, y: metrics.size.height * 0.252)
                        
                    case 8...10:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 16.0))
                            .frame(width: 200, height: 20, alignment: .topLeading)
                            .position(x: metrics.size.width * 0.365, y: metrics.size.height * 0.249)
                        
                    case 11...14:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 15.0))
                            .frame(width: 200, height: 80, alignment: .topLeading)
                            .position(x: metrics.size.width * 0.365, y: metrics.size.height * 0.395)
                        
                    case 15...:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 14.0))
                            .frame(width: 200, height: 80, alignment: .topLeading)
                            .position(x: metrics.size.width * 0.365, y: metrics.size.height * 0.39)
                            .multilineTextAlignment(.leading)
                        
                    default:
                        Text("Default E S01-1-0")
                        
                    }
                }
                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                
                
                let ddayNumber = CustomFunctions().dateIntSign00(dateIntParam: dateInt)
                
                // DayNumber
                switch dateInt <= 0 {
                case true :
                    switch ddayNumber.count {
                             
                        case 1:
                            switch ddayNumber {
                            case "0":
                                Text("D-DAY")
                                    .font(.custom("Inter-Bold", size: 122.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 242, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-12)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default:
                                Text("D-00\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 120.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 242, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-10)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            }
                            
                    case 2:
                        Text("D-0\(ddayNumber)")
                            .font(.custom("Inter-Bold", size: 122.0))
                            .frame(width: 400, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 192, y: 108)
                            .multilineTextAlignment(.leading)
                            .kerning(-11)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                    case 3:
                        Text("D-\(ddayNumber)")
                            .font(.custom("Inter-Bold", size: 122.0))
                            .frame(width: 400, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 192, y: 111)
                            .multilineTextAlignment(.leading)
                            .kerning(-11)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                        
                case 4:
                        switch (ddayNumber.components(separatedBy: "0").count - 1) { // 0의 갯수
                        case 0: // 0갯수 = 0개
                            
                            switch (ddayNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                            case 1: // 1갯수 1개 (ex. 1994)
                                Text("D-\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 108.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 189, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                
                            case 2: // 1갯수 2개 (ex. 1914)
                                Text("D-\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 113.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 189, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            case 3: // 1갯수 3개 (ex. 1114)
                                Text("D-\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 119.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 189, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            case 4: // 1갯수 4개 (ex. 1111)
                                Text("D-\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 126.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 189, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default: // 그 이외의, 1000~9999까지 0갯수 0개 & 1갯수 0개인 수 (ex. 9994)
                                Text("D-\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 103.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 189, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                            
                        case 1: // 0갯수 = 1개
                            switch (ddayNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                            case 1: // 1갯수 1개 (ex. 1094)
                                Text("D-\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 107.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 189, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                
                            case 2: // 1갯수 2개 (ex. 1014)
                                Text("D-\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 112.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 189, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            case 3: // 1갯수 3개 (ex. 1011)
                                Text("D-\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 118.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 189, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default: // 1갯수 0개 (ex. 9094)
                                Text("D-\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 102.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 189, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                        case 2: // 0갯수 = 2개
                            switch (ddayNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                            case 1: // 1갯수 1개 (ex. 1004)
                                Text("D-\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 106.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 189, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                
                            case 2: // 1갯수 2개 (ex. 1001)
                                Text("D-\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 112.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 189, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default: // 1갯수 0개 (ex. 9004)
                                Text("D-\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 102.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 189, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                        case 3: // 0갯수 = 3개
                            switch (ddayNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                            case 1: // 1갯수 1개 (ex. 1000)
                                Text("D-\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 107.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 189, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default: // 1갯수 0개 (ex. 9000)
                                Text("D-\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 102.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 189, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                        default:
                            Text("Encountered Error S02-2-5")
                        }
                        
                    case 5...:
                        Text("D-\(ddayNumber)")
                            .font(.custom("Inter-Bold", size: 87.0))
                            .frame(width: 400, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 190, y: 108)
                            .multilineTextAlignment(.leading)
                            .kerning(-8)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                    default:
                        Text("Default E S01-1-1")
                    }
                    
                case false :
                    switch ddayNumber.count {
                            
                        case 1:
                            switch ddayNumber {
                            case "0":
                                Text("D-DAY")
                                    .font(.custom("Inter-Bold", size: 122.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 242, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-12)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default:
                                Text("D+")
                                    .font(.custom("Inter-Bold", size: 114.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 240, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-11)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                Text("00\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 114.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 380, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-11)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                        case 2:
                            Text("D+")
                                .font(.custom("Inter-Bold", size: 114.0))
                                .frame(width: 400, height: 100, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 192, y: 110)
                                .multilineTextAlignment(.leading)
                                .kerning(-11)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                            Text("0\(ddayNumber)")
                                .font(.custom("Inter-Bold", size: 114.0))
                                .frame(width: 400, height: 100, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 332, y: 110)
                                .multilineTextAlignment(.leading)
                                .kerning(-11)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 3:
                        
                        switch Int(ddayNumber)! / 100 {
                        case 1:
                            Text("D+")
                                .font(.custom("Inter-Bold", size: 121.0))
                                .frame(width: 400, height: 100, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 193, y: 110)
                                .multilineTextAlignment(.leading)
                                .kerning(-11)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                            Text("\(ddayNumber)")
                                .font(.custom("Inter-Bold", size: 121.0))
                                .frame(width: 400, height: 100, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 338, y: 110)
                                .multilineTextAlignment(.leading)
                                .kerning(-11)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        case 2...9:
                            Text("D+")
                                .font(.custom("Inter-Bold", size: 114.0))
                                .frame(width: 400, height: 100, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 192, y: 108)
                                .multilineTextAlignment(.leading)
                                .kerning(-11)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                            Text("\(ddayNumber)")
                                .font(.custom("Inter-Bold", size: 114.0))
                                .frame(width: 400, height: 100, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 332, y: 108)
                                .multilineTextAlignment(.leading)
                                .kerning(-10)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                        default:
                            Text("Default ES01-1-2")
                        }
                        
                    case 4:
                        switch (ddayNumber.components(separatedBy: "0").count - 1) { // 0의 갯수
                        case 0: // 0갯수 = 0개
                            
                            switch (ddayNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                            case 1: // 1갯수 1개 (ex. 1994)
                                Text("D")
                                    .font(.custom("Inter-Bold", size: 108.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 190, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                Text("+")
                                    .font(.custom("Inter-ExtraBold", size: 94.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 260, y: 102)
                                    .multilineTextAlignment(.leading)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                Text("\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 101.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 317, y: 106)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                        
                                
                            case 2: // 1갯수 2개 (ex. 1914)
                                Text("D")
                                    .font(.custom("Inter-Bold", size: 113.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 190, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                Text("+")
                                    .font(.custom("Inter-ExtraBold", size: 100.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 264, y: 102)
                                    .multilineTextAlignment(.leading)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                Text("\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 106.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 323, y: 106)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            case 3: // 1갯수 3개 (ex. 1114)
                                Text("D")
                                    .font(.custom("Inter-Bold", size: 118.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 190, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                Text("+")
                                    .font(.custom("Inter-ExtraBold", size: 105.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 266, y: 102)
                                    .multilineTextAlignment(.leading)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                Text("\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 111.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 328, y: 106)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            case 4: // 1갯수 4개 (ex. 1111)
                                    Text("D")
                                        .font(.custom("Inter-Bold", size: 124.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 190, y: 108)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    Text("+")
                                        .font(.custom("Inter-ExtraBold", size: 111.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 271, y: 102)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    Text("\(ddayNumber)")
                                        .font(.custom("Inter-Bold", size: 117.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 335, y: 106)
                                        .multilineTextAlignment(.leading)
                                        .kerning(-9)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default: // 그 이외의, 1000~9999까지 0갯수 0개 & 1갯수 0개인 수 (ex. 9994)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 104.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 190, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 93.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 257, y: 102)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("\(ddayNumber)")
                                            .font(.custom("Inter-Bold", size: 97.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 311, y: 106)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-9)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                            
                        case 1: // 0갯수 = 1개
                            switch (ddayNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                            case 1: // 1갯수 1개 (ex. 1094)
                                Text("D")
                                    .font(.custom("Inter-Bold", size: 106.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 190, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                Text("+")
                                    .font(.custom("Inter-ExtraBold", size: 103.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 258, y: 102)
                                    .multilineTextAlignment(.leading)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                Text("\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 99.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 318, y: 106)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                
                            case 2: // 1갯수 2개 (ex. 1014)
                                    Text("D")
                                        .font(.custom("Inter-Bold", size: 111.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 190, y: 108)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    Text("+")
                                        .font(.custom("Inter-ExtraBold", size: 108.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 261, y: 102)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    Text("\(ddayNumber)")
                                        .font(.custom("Inter-Bold", size: 104.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 324, y: 106)
                                        .multilineTextAlignment(.leading)
                                        .kerning(-9)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            case 3: // 1갯수 3개 (ex. 1011)
                                    Text("D")
                                        .font(.custom("Inter-Bold", size: 117.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 190, y: 108)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    Text("+")
                                        .font(.custom("Inter-ExtraBold", size: 114.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 265, y: 102)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    Text("\(ddayNumber)")
                                        .font(.custom("Inter-Bold", size: 110.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 329, y: 106)
                                        .multilineTextAlignment(.leading)
                                        .kerning(-9)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default: // 1갯수 0개 (ex. 9094)
                                    Text("D")
                                        .font(.custom("Inter-Bold", size: 103.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 190, y: 108)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    Text("+")
                                        .font(.custom("Inter-ExtraBold", size: 100.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 255, y: 102)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    Text("\(ddayNumber)")
                                        .font(.custom("Inter-Bold", size: 95.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 314, y: 106)
                                        .multilineTextAlignment(.leading)
                                        .kerning(-9)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                        case 2: // 0갯수 = 2개
                            switch (ddayNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                            case 1: // 1갯수 1개 (ex. 1004)
                                    Text("D")
                                        .font(.custom("Inter-Bold", size: 106.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 190, y: 108)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    Text("+")
                                        .font(.custom("Inter-ExtraBold", size: 103.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 257, y: 102)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    Text("\(ddayNumber)")
                                        .font(.custom("Inter-Bold", size: 99.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 318, y: 106)
                                        .multilineTextAlignment(.leading)
                                        .kerning(-9)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                
                            case 2: // 1갯수 2개 (ex. 1001)
                                    Text("D")
                                        .font(.custom("Inter-Bold", size: 110.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 190, y: 108)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    Text("+")
                                        .font(.custom("Inter-ExtraBold", size: 107.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 261, y: 102)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    Text("\(ddayNumber)")
                                        .font(.custom("Inter-Bold", size: 103.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 322, y: 106)
                                        .multilineTextAlignment(.leading)
                                        .kerning(-9)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default: // 1갯수 0개 (ex. 9004)
                                    Text("D")
                                        .font(.custom("Inter-Bold", size: 101.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 190, y: 108)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    Text("+")
                                        .font(.custom("Inter-ExtraBold", size: 98.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 254, y: 102)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    Text("\(ddayNumber)")
                                        .font(.custom("Inter-Bold", size: 94.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 313, y: 106)
                                        .multilineTextAlignment(.leading)
                                        .kerning(-9)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                        case 3: // 0갯수 = 3개
                            switch (ddayNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                            case 1: // 1갯수 1개 (ex. 1000)
                                Text("D")
                                    .font(.custom("Inter-Bold", size: 107.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 190, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                Text("+")
                                    .font(.custom("Inter-ExtraBold", size: 104.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 259, y: 102)
                                    .multilineTextAlignment(.leading)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                Text("\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 100.0))
                                    .frame(width: 400, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 319, y: 106)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default: // 1갯수 0개 (ex. 9000)
                                    Text("D")
                                        .font(.custom("Inter-Bold", size: 100.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 190, y: 108)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    Text("+")
                                        .font(.custom("Inter-ExtraBold", size: 97.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 254, y: 102)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    Text("\(ddayNumber)")
                                        .font(.custom("Inter-Bold", size: 96.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 311, y: 106)
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
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 190, y: 108)
                            .multilineTextAlignment(.leading)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                        Text("+")
                            .font(.custom("Inter-ExtraBold", size: 80.0))
                            .frame(width: 400, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 247, y: 102)
                            .multilineTextAlignment(.leading)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                        Text("\(ddayNumber)")
                            .font(.custom("Inter-Bold", size: 81.0))
                            .frame(width: 400, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 297, y: 106)
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
                    Text(ddaySymbolMenu[safe: 0]?.ddayDate ?? "2025.12.25")
                        .font(.custom("Inter-Bold", size: 11.0))
                        .frame(width: 300, height: 20, alignment: .trailing)
                        .position(x: metrics.size.width * 0.495, y: metrics.size.height * 0.779)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                }
            }
        }
        .frame(height: 200)
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
        
    }
}
