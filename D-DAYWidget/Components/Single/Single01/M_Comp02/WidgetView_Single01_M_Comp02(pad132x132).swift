//
//  WidgetView_Single01_M_Comp02(pad132x132).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 5/16/24.
//

import SwiftUI

struct WidgetView_Single01_M_Comp02_pad132x132_: View { // enable shadow
    
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
                            .position(x: metrics.size.width * 0.39, y: metrics.size.height * 0.284)
                        
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
                            .position(x: metrics.size.width * 0.385, y: metrics.size.height * 0.282)
                        
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
                switch dateInt <= 0 {
                        
                case true :
                    switch ddayNumber.count {
                            
                    case 1:
                            
                        switch ddayNumber {
                                
                        case "0":
                            Text("D-DAY")
                                .font(.custom("Inter-Bold", size: 114.0))
                                .frame(width: 500, height: 100, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 248, y: 108)
                                .multilineTextAlignment(.leading)
                                .kerning(-10)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        default:
                            Text("D-00\(ddayNumber)")
                                .font(.custom("Inter-Bold", size: 115.0))
                                .frame(width: 500, height: 100, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 246, y: 108)
                                .multilineTextAlignment(.leading)
                                .kerning(-10)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        }
                            
                    case 2:
                        Text("D-0\(ddayNumber)")
                            .font(.custom("Inter-Bold", size: 116.0))
                            .frame(width: 500, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 245, y: 110)
                            .multilineTextAlignment(.leading)
                            .kerning(-10)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                    case 3:
                        Text("D-\(ddayNumber)")
                            .font(.custom("Inter-Bold", size: 116.0))
                            .frame(width: 500, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 248, y: 109)
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
                                    .font(.custom("Inter-Bold", size: 104.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 244, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                
                            case 2: // 1갯수 2개 (ex. 1914)
                                Text("D-\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 109.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 245, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            case 3: // 1갯수 3개 (ex. 1114)
                                Text("D-\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 114.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 245, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            case 4: // 1갯수 4개 (ex. 1111)
                                Text("D-\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 121.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 245, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default: // 그 이외의, 1000~9999까지 0갯수 0개 & 1갯수 0개인 수 (ex. 9994)
                                Text("D-\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 99.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 244, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                            
                        case 1: // 0갯수 = 1개
                            switch (ddayNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                                    
                            case 1: // 1갯수 1개 (ex. 1094)
                                Text("D-\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 103.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 244, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                
                            case 2: // 1갯수 2개 (ex. 1014)
                                Text("D-\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 108.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 243, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            case 3: // 1갯수 3개 (ex. 1011)
                                Text("D-\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 115.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 244, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default: // 1갯수 0개 (ex. 9094)
                                Text("D-\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 99.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 243, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                        case 2: // 0갯수 = 2개
                                
                            switch (ddayNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                            case 1: // 1갯수 1개 (ex. 1004)
                                Text("D-\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 102.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 244, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                
                            case 2: // 1갯수 2개 (ex. 1001)
                                Text("D-\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 108.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 244, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default: // 1갯수 0개 (ex. 9004)
                                Text("D-\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 98.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 243, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                        case 3: // 0갯수 = 3개
                                
                            switch (ddayNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                                    
                            case 1: // 1갯수 1개 (ex. 1000)
                                Text("D-\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 103.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 244, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-9)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default: // 1갯수 0개 (ex. 9000)
                                Text("D-\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 99.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
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
                        Text("D-\(ddayNumber)")
                            .font(.custom("Inter-Bold", size: 86.0))
                            .frame(width: 500, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 243, y: 108)
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
                                        .font(.custom("Inter-Bold", size: 114.0))
                                        .frame(width: 500, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 248, y: 108)
                                        .multilineTextAlignment(.leading)
                                        .kerning(-10)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default:
                                Text("D+")
                                    .font(.custom("Inter-Bold", size: 109.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 247, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-13)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                Text("00\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 109.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 376, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-10)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            }
                            
                    case 2:
                        Text("D+")
                            .font(.custom("Inter-Bold", size: 112.0))
                            .frame(width: 500, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 244, y: 109)
                            .multilineTextAlignment(.leading)
                            .kerning(-13)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                        Text("0\(ddayNumber)")
                            .font(.custom("Inter-Bold", size: 112.0))
                            .frame(width: 500, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 375, y: 109)
                            .multilineTextAlignment(.leading)
                            .kerning(-10)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 3:
                        
                        switch Int(ddayNumber)! / 100 {
                        case 1:
                            Text("D+")
                                .font(.custom("Inter-Bold", size: 118.0))
                                .frame(width: 500, height: 100, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 245, y: 109)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                            Text("\(ddayNumber)")
                                .font(.custom("Inter-Bold", size: 118.0))
                                .frame(width: 500, height: 100, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 382, y: 109)
                                .multilineTextAlignment(.leading)
                                .kerning(-10)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        case 2...9:
                            Text("D+")
                                .font(.custom("Inter-Bold", size: 113.0))
                                .frame(width: 500, height: 100, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 244, y: 109)
                                .multilineTextAlignment(.leading)
                                .kerning(-13)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                            Text("\(ddayNumber)")
                                .font(.custom("Inter-Bold", size: 113.0))
                                .frame(width: 500, height: 100, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 377, y: 109)
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
                                        .font(.custom("Inter-Bold", size: 100.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 192, y: 108)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    Text("+")
                                        .font(.custom("Inter-ExtraBold", size: 100.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 253, y: 102)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    Text("\(ddayNumber)")
                                        .font(.custom("Inter-Bold", size: 100.0))
                                        .frame(width: 500, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 356, y: 108)
                                        .multilineTextAlignment(.leading)
                                        .kerning(-8)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    
                                case 2: // 1갯수 2개 (ex. 1914)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 106.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 191, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 106.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 255, y: 102)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("\(ddayNumber)")
                                            .font(.custom("Inter-Bold", size: 106.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 362, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-9)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                case 3: // 1갯수 3개 (ex. 1114)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 112.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 192, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 112.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 261, y: 103)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("\(ddayNumber)")
                                            .font(.custom("Inter-Bold", size: 112.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 370, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-10)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                case 4: // 1갯수 4개 (ex. 1111)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 118.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 195, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 118.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 268, y: 103)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("\(ddayNumber)")
                                            .font(.custom("Inter-Bold", size: 118.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 384, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-10)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                default: // 그 이외의, 1000~9999까지 0갯수 0개 & 1갯수 0개인 수 (ex. 9994)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 95.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 192, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 95.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 251, y: 102)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("\(ddayNumber)")
                                            .font(.custom("Inter-Bold", size: 95.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 356, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-9)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                }
                                
                            case 1: // 0갯수 = 1개
                                switch (ddayNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                                case 1: // 1갯수 1개 (ex. 1094)
                                    Text("D")
                                        .font(.custom("Inter-Bold", size: 99.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 193, y: 109)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    Text("+")
                                        .font(.custom("Inter-ExtraBold", size: 99.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 254, y: 103)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    Text("\(ddayNumber)")
                                        .font(.custom("Inter-Bold", size: 99.0))
                                        .frame(width: 500, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 358, y: 109)
                                        .multilineTextAlignment(.leading)
                                        .kerning(-9)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    
                                case 2: // 1갯수 2개 (ex. 1014)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 105.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 194, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 105.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 259, y: 103)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("\(ddayNumber)")
                                            .font(.custom("Inter-Bold", size: 105.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 366, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-10)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                case 3: // 1갯수 3개 (ex. 1011)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 111.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 194, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 111.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 263, y: 103)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("\(ddayNumber)")
                                            .font(.custom("Inter-Bold", size: 111.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 374, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-10)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                default: // 1갯수 0개 (ex. 9094)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 94.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 194, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 94.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 252, y: 102)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("\(ddayNumber)")
                                            .font(.custom("Inter-Bold", size: 94.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 356, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-9)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                }
                                
                            case 2: // 0갯수 = 2개
                                    
                                switch (ddayNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                                        
                                case 1: // 1갯수 1개 (ex. 1004)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 99.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 193, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 99.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 254, y: 103)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("\(ddayNumber)")
                                            .font(.custom("Inter-Bold", size: 99.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 357, y: 109)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-9)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    
                                case 2: // 1갯수 2개 (ex. 1001)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 104.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 193, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 104.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 258, y: 102)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("\(ddayNumber)")
                                            .font(.custom("Inter-Bold", size: 104.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 364, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-9)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                default: // 1갯수 0개 (ex. 9004)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 94.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 192, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 94.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 249, y: 102)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("\(ddayNumber)")
                                            .font(.custom("Inter-Bold", size: 94.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 352, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-8)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                }
                                
                            case 3: // 0갯수 = 3개
                                switch (ddayNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                                case 1: // 1갯수 1개 (ex. 1000)
                                    Text("D")
                                        .font(.custom("Inter-Bold", size: 100.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 191, y: 108)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    Text("+")
                                        .font(.custom("Inter-ExtraBold", size: 100.0))
                                        .frame(width: 400, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 253, y: 102)
                                        .multilineTextAlignment(.leading)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    Text("\(ddayNumber)")
                                        .font(.custom("Inter-Bold", size: 100.0))
                                        .frame(width: 500, height: 100, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 356, y: 108)
                                        .multilineTextAlignment(.leading)
                                        .kerning(-9)
                                        .rotationEffect(.degrees(-10))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                default: // 1갯수 0개 (ex. 9000)
                                        Text("D")
                                            .font(.custom("Inter-Bold", size: 95.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 191, y: 108)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("+")
                                            .font(.custom("Inter-ExtraBold", size: 95.0))
                                            .frame(width: 400, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 249, y: 102)
                                            .multilineTextAlignment(.leading)
                                            .rotationEffect(.degrees(-10))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        Text("\(ddayNumber)")
                                            .font(.custom("Inter-Bold", size: 95.0))
                                            .frame(width: 500, height: 100, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 353, y: 108)
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
                            .font(.custom("Inter-Bold", size: 87.0))
                            .frame(width: 400, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 188, y: 108)
                            .multilineTextAlignment(.leading)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                        Text("+")
                            .font(.custom("Inter-ExtraBold", size: 87.0))
                            .frame(width: 400, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 241, y: 102)
                            .multilineTextAlignment(.leading)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                        Text("\(ddayNumber)")
                            .font(.custom("Inter-Bold", size: 87.0))
                            .frame(width: 500, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 338, y: 108)
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
                        .position(x: metrics.size.width * 0.466, y: metrics.size.height * 0.755)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                }
            }
        }
        .frame(height: 200)
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
    }
}
