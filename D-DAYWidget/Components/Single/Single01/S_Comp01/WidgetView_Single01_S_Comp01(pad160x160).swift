//
//  WidgetView_Single01_S_Comp01(pad160x160).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 12/28/23.
//

import SwiftUI

struct WidgetView_Single01_S_Comp01_pad160x160_: View { // disable shadow
    
    var entry: Provider.Entry
    
    var ddaySymbolMenu: [DdaySymbol]
    
    var body: some View {
        
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        let isTodayCounted: String = ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false"
        let dateInt = CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2024.02.16"), isTodayCounted: isTodayCounted)
        let ddayDorPlus = CustomFunctions().ddaySetDorPlus(dateIntParam: dateInt)
        
        ZStack {
            ZStack() {
            
                // D or +
                switch ddayDorPlus {
                case "D":
                    Text("D")
                        .position(x: 10, y: -31)
                        .frame(width: 85, height: 36, alignment: .leading)
                        .font(.custom("Inter-Bold", size: 110))
                        .rotationEffect(.degrees(-13))
                        .multilineTextAlignment(.leading)
                    
                case "+":
                    Text("+")
                        .position(x: 10, y: -43)
                        .frame(width: 95, height: 36, alignment: .leading)
                        .font(.custom("Inter-Bold", size: 146))
                        .rotationEffect(.degrees(-13))
                        .multilineTextAlignment(.leading)
                    
                default:
                    Text("Encountered Error S01-1-1")
                }
            }
            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
            
            
            
            GeometryReader { metrics in
                ZStack() {
                    // Title
                    switch (ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue()).count {
                        
                    case ...3:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .frame(width: 70, height: 50, alignment: .topTrailing)
                            .position(x: metrics.size.width * 0.685, y: metrics.size.height * 0.3)
                            .font(.custom("Inter-Bold", size: 17.0))
                            .multilineTextAlignment(.trailing)
                        
                    case 4:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .frame(width: 70, height: 50, alignment: .topTrailing)
                            .position(x: metrics.size.width * 0.72, y: metrics.size.height * 0.305)
                            .font(.custom("Inter-Bold", size: 15.0))
                            .multilineTextAlignment(.trailing)
                        
                    case 5...10:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .frame(width: 65, height: 80, alignment: .topTrailing)
                            .position(x: metrics.size.width * 0.718, y: metrics.size.height * 0.385)
                            .font(.custom("Inter-Bold", size: 13.0))
                            .multilineTextAlignment(.trailing)
                    
                    case 11...14:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .frame(width: 70, height: 50, alignment: .topTrailing)
                            .position(x: metrics.size.width * 0.695, y: metrics.size.height * 0.28)
                            .font(.custom("Inter-Bold", size: 12.0))
                            .multilineTextAlignment(.trailing)
                       
                   case 15...:
                       Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                           .frame(width: 60, height: 50, alignment: .topTrailing)
                           .position(x: metrics.size.width * 0.718, y: metrics.size.height * 0.273)
                           .font(.custom("Inter-Bold", size: 11.0))
                           .multilineTextAlignment(.trailing)
                        
                    default:
                        Text("Encountered Error S01-1-2")
                    }
                    
                }
                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
            }
            
            
            // DayNumber
            let dateNumber = CustomFunctions().dateIntSign(dateIntParam: dateInt)
            
            switch dateNumber.count {

                
            // 2자리수
            case 2:
                Text("\(dateNumber)")
                    .frame(width: 180, alignment: .leading)
                    .font(.custom("Inter-Bold", size: 115.0))
                    .multilineTextAlignment(.leading)
                    .kerning(-11)
                    .rotationEffect(.degrees(-10))
                    .position(x: 83, y: 120)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
            // 3자리수
            case 3:
                switch Int(dateNumber)! / 100 {
                        
                case 1:
                    switch Int(dateNumber)! {
                            
                    case 104, 144:
                        Text("\(dateNumber)")
                            .frame(width: 230, alignment: .leading)
                            .font(.custom("Inter-Bold", size: 98.0))
                            .multilineTextAlignment(.leading)
                            .kerning(-10)
                            .rotationEffect(.degrees(-10))
                            .position(x: 110, y: 118)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 154, 164, 184, 194:
                        Text("\(dateNumber)")
                            .frame(width: 230, alignment: .leading)
                            .font(.custom("Inter-Bold", size: 99.0))
                            .multilineTextAlignment(.leading)
                            .kerning(-10)
                            .rotationEffect(.degrees(-10))
                            .position(x: 111, y: 118)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                        
                    default:
                        Text("\(dateNumber)")
                            .frame(width: 230, alignment: .leading)
                            .font(.custom("Inter-Bold", size: 101.0))
                            .multilineTextAlignment(.leading)
                            .kerning(-10)
                            .rotationEffect(.degrees(-10))
                            .position(x: 109, y: 119)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    }
                    
                case 2:
                    switch Int(dateNumber)! {
                            
                    case 204, 244:
                        Text("\(dateNumber)")
                            .frame(width: 230, alignment: .leading)
                            .font(.custom("Inter-Bold", size: 90.0))
                            .multilineTextAlignment(.leading)
                            .kerning(-9)
                            .rotationEffect(.degrees(-10))
                            .position(x: 110, y: 118)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 234, 254, 264, 284, 294:
                        Text("\(dateNumber)")
                            .frame(width: 230, alignment: .leading)
                            .font(.custom("Inter-Bold", size: 91.0))
                            .multilineTextAlignment(.leading)
                            .kerning(-9)
                            .rotationEffect(.degrees(-10))
                            .position(x: 111, y: 117)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    default:
                        Text("\(dateNumber)")
                            .frame(width: 230, alignment: .leading)
                            .font(.custom("Inter-Bold", size: 92.0))
                            .multilineTextAlignment(.leading)
                            .kerning(-9)
                            .rotationEffect(.degrees(-10))
                            .position(x: 112, y: 117)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    }
                    
                case 3...8 :
                    switch Int(dateNumber)! {
                        
                    case 304, 334, 344, 354, 364, 384, 394, 404, 434, 444, 454, 464, 484, 494, 504, 604, 804:
                        Text("\(dateNumber)")
                            .frame(width: 230, alignment: .leading)
                            .font(.custom("Inter-Bold", size: 92.0))
                            .multilineTextAlignment(.leading)
                            .kerning(-10)
                            .rotationEffect(.degrees(-10))
                            .position(x: 107, y: 117)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 544, 564, 584, 594, 624, 644, 664, 684, 694, 844, 854, 864, 884, 894:
                        Text("\(dateNumber)")
                            .frame(width: 230, alignment: .leading)
                            .font(.custom("Inter-Bold", size: 93.0))
                            .multilineTextAlignment(.leading)
                            .kerning(-9)
                            .rotationEffect(.degrees(-10))
                            .position(x: 107, y: 118)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    default:
                        Text("\(dateNumber)")
                            .frame(width: 230, alignment: .leading)
                            .font(.custom("Inter-Bold", size: 93.0))
                            .multilineTextAlignment(.leading)
                            .kerning(-10)
                            .rotationEffect(.degrees(-10))
                            .position(x: 107, y: 117)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    }
                    
                case 9:
                    Text("\(dateNumber)")
                        .frame(width: 230, alignment: .leading)
                        .font(.custom("Inter-Bold", size: 91.0))
                        .multilineTextAlignment(.leading)
                        .kerning(-9)
                        .rotationEffect(.degrees(-10))
                        .position(x: 108, y: 117)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                default:
                    Text("Default Error S01-1-2-01")
                }
                
                
            // 4자리수
            case 4:
                
                switch (dateNumber.components(separatedBy: "0").count - 1) { // 0의 갯수
                        
                case 0: // 0갯수 = 0개
                    
                    switch (dateNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                            
                    case 1: // 1갯수 1개 (ex. 1994)
                        Text("\(dateNumber)")
                            .frame(width: 270, alignment: .leading)
                            .font(.custom("Inter-Bold", size: 73.0))
                            .multilineTextAlignment(.leading)
                            .kerning(-7)
                            .rotationEffect(.degrees(-10))
                            .position(x: 130, y: 116)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 2: // 1갯수 2개 (ex. 1914)
                        Text("\(dateNumber)")
                            .frame(width: 270, alignment: .leading)
                            .font(.custom("Inter-Bold", size: 79.0))
                            .multilineTextAlignment(.leading)
                            .kerning(-7)
                            .rotationEffect(.degrees(-10))
                            .position(x: 131, y: 115)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 3: // 1갯수 3개 (ex. 1114)
                        Text("\(dateNumber)")
                            .frame(width: 270, alignment: .leading)
                            .font(.custom("Inter-Bold", size: 85.0))
                            .multilineTextAlignment(.leading)
                            .kerning(-7)
                            .rotationEffect(.degrees(-10))
                            .position(x: 131, y: 118)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 4: // 1갯수 4개 (ex. 1111)
                        Text("\(dateNumber)")
                            .frame(width: 270, alignment: .leading)
                            .font(.custom("Inter-Bold", size: 94.0))
                            .multilineTextAlignment(.leading)
                            .kerning(-7)
                            .rotationEffect(.degrees(-10))
                            .position(x: 131, y: 117)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    default: // 그 이외의, 1000~9999까지 0갯수 0개 & 1갯수 0개인 수 (ex. 9994)
                        Text("\(dateNumber)")
                            .frame(width: 270, alignment: .leading)
                            .font(.custom("Inter-Bold", size: 69.0))
                            .multilineTextAlignment(.leading)
                            .kerning(-7)
                            .rotationEffect(.degrees(-10))
                            .position(x: 130, y: 117)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    }
                    
                    
                case 1: // 0갯수 = 1개
                        
                    switch (dateNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                            
                    case 1: // 1갯수 1개 (ex. 1094)
                        Text("\(dateNumber)")
                            .frame(width: 270, alignment: .leading)
                            .font(.custom("Inter-Bold", size: 72.0))
                            .multilineTextAlignment(.leading)
                            .kerning(-7)
                            .rotationEffect(.degrees(-10))
                            .position(x: 131, y: 117)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                        
                    case 2: // 1갯수 2개 (ex. 1014)
                        Text("\(dateNumber)")
                            .frame(width: 270, alignment: .leading)
                            .font(.custom("Inter-Bold", size: 78.0))
                            .multilineTextAlignment(.leading)
                            .kerning(-7)
                            .rotationEffect(.degrees(-10))
                            .position(x: 131, y: 116)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 3: // 1갯수 3개 (ex. 1011)
                        Text("\(dateNumber)")
                            .frame(width: 270, alignment: .leading)
                            .font(.custom("Inter-Bold", size: 86.0))
                            .multilineTextAlignment(.leading)
                            .kerning(-7)
                            .rotationEffect(.degrees(-10))
                            .position(x: 131, y: 118)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    default: // 1갯수 0개 (ex. 9094)
                        Text("\(dateNumber)")
                            .frame(width: 270, alignment: .leading)
                            .font(.custom("Inter-Bold", size: 69.0))
                            .multilineTextAlignment(.leading)
                            .kerning(-7)
                            .rotationEffect(.degrees(-10))
                            .position(x: 130, y: 116)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    }
                    
                case 2: // 0갯수 = 2개
                        
                    switch (dateNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                            
                    case 1: // 1갯수 1개 (ex. 1004)
                        Text("\(dateNumber)")
                            .frame(width: 270, alignment: .leading)
                            .font(.custom("Inter-Bold", size: 72.0))
                            .multilineTextAlignment(.leading)
                            .kerning(-7)
                            .rotationEffect(.degrees(-10))
                            .position(x: 130, y: 117)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                        
                    case 2: // 1갯수 2개 (ex. 1001)
                        Text("\(dateNumber)")
                            .frame(width: 270, alignment: .leading)
                            .font(.custom("Inter-Bold", size: 79.0))
                            .multilineTextAlignment(.leading)
                            .kerning(-7)
                            .rotationEffect(.degrees(-10))
                            .position(x: 131, y: 116)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    default: // 1갯수 0개 (ex. 9004)
                        Text("\(dateNumber)")
                            .frame(width: 270, alignment: .leading)
                            .font(.custom("Inter-Bold", size: 67.0))
                            .multilineTextAlignment(.leading)
                            .kerning(-7)
                            .rotationEffect(.degrees(-10))
                            .position(x: 130, y: 117)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    }
                    
                case 3: // 0갯수 = 3개
                    switch (dateNumber.components(separatedBy: "1").count - 1) { // 1의 갯수
                        
                    case 1: // 1갯수 1개 (ex. 1000)
                        Text("\(dateNumber)")
                            .frame(width: 270, alignment: .leading)
                            .font(.custom("Inter-Bold", size: 73.0))
                            .multilineTextAlignment(.leading)
                            .kerning(-7)
                            .rotationEffect(.degrees(-10))
                            .position(x: 131, y: 118)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    default: // 1갯수 0개 (ex. 9000)
                        Text("\(dateNumber)")
                            .frame(width: 270, alignment: .leading)
                            .font(.custom("Inter-Bold", size: 69.0))
                            .multilineTextAlignment(.leading)
                            .kerning(-7)
                            .rotationEffect(.degrees(-10))
                            .position(x: 129, y: 116)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    }
                    
                default:
                    Text("Encountered Error S02-2-5")
                }
                
                
                
            // 5자리수~
            case 5...:
                Text("\(dateNumber)")
                    .frame(width: 270, alignment: .leading)
                    .font(.custom("Inter-Bold", size: 59.0))
                    .multilineTextAlignment(.leading)
                    .kerning(-7)
                    .rotationEffect(.degrees(-10))
                    .position(x: 131, y: 118)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
            default:
                Text("Encountered Error S01-1-3")
            }
        }
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
        
    }
}
