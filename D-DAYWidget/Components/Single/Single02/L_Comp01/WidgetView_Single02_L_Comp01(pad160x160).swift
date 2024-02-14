//
//  WidgetView_Single02_L_Comp01(pad160x160).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 1/16/24.
//

import SwiftUI

struct WidgetView_Single02_L_Comp01_pad160x160_: View { // disable shadow
    
    var entry: Provider.Entry
    
    var ddaySymbolMenu: [DdaySymbol]
    
    var body: some View {
        
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        let isTodayCounted: String = ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false"
        let dateInt = CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2024.02.16"), isTodayCounted: isTodayCounted)
        let unsignedDateInt = CustomFunctions().dateIntSign(dateIntParam: dateInt)
        let ddayDorPlus = CustomFunctions().ddaySetDorPlus(dateIntParam: dateInt)
        
        
        ZStack {
            ZStack {
                
                // D or +
                switch ddayDorPlus {
                case "D":
                    Text("D")
                        .font(.custom("Inter-Bold", size: 227.0))
                        .frame(width: 230, height: 36, alignment: .leading)
                        .position(x: 135, y: 81)
                        .rotationEffect(.degrees(-13))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case "+":
                    Text("+")
                        .font(.custom("Inter-Bold", size: 319.0))
                        .frame(width: 230, height: 36, alignment: .leading)
                        .position(x: 114, y: 60)
                        .rotationEffect(.degrees(-13))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                default:
                    Text("Encountered Error S02-2-1")
                    
                }
                
                
                // Title
                switch (ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue()).count {
                    
                case 0...4:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 25.0))
                        .frame(width: 150, height: 100, alignment: .topTrailing)
                        .position(x: 269, y: 124)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 5...6:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 23.0))
                        .frame(width: 150, height: 100, alignment: .topTrailing)
                        .position(x: 269, y: 130)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 7...8:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 21.0))
                        .frame(width: 160, height: 100, alignment: .topTrailing)
                        .position(x: 266, y: 130)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 9...12:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 21.0))
                        .frame(width: 145, height: 100, alignment: .topTrailing)
                        .position(x: 270, y: 120)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 13...14:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 20.0))
                        .frame(width: 130, height: 100, alignment: .topTrailing)
                        .position(x: 277, y: 122)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                case 15...:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 18.0))
                        .frame(width: 150, height: 100, alignment: .topTrailing)
                        .position(x: 268, y: 122)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                default:
                    Text("Encountered Error S02-2-2")
                    
                }


                // Date
                Text(ddaySymbolMenu[safe: 0]?.ddayDate ?? "2024.12.25")
                    .font(.custom("Inter-Bold", size: 15))
                    .frame(width: 110, height: 50, alignment: .topTrailing)
                    .padding(EdgeInsets(top: 0, leading: 196, bottom: 83, trailing: 0))
                    .multilineTextAlignment(.trailing)
                    .lineSpacing(2)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))

                
                // DayNumber
//                switch unsignedDateInt.count {
                    switch 5 {
                
                // 0...2자리
                case 0...2:
//                    Text("\(unsignedDateInt)")
                        Text("44")
                        .font(.custom("Inter-Bold", size: 244.0))
                        .frame(width: 450, alignment: .leading)
                        .position(x: 196, y: 273)
                        .multilineTextAlignment(.leading)
                        .kerning(-20)
                        .rotationEffect(.degrees(-10))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                // 3자리
                case 3:
                        
//                        switch Int(unsignedDateInt)! / 100 {
                            switch 9 {
                        case 1:
                            
//                            switch Int(unsignedDateInt)! {
                                switch 1834 {
                            case 104, 144:
//                                Text("\(unsignedDateInt)")
                                    Text("144")
                                    .font(.custom("Inter-Bold", size: 217.0))
                                    .frame(width: 450, alignment: .leading)
                                    .position(x: 198, y: 281)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-19)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            case 154, 164, 184, 194:
//                                Text("\(unsignedDateInt)")
                                    Text("184")
                                    .font(.custom("Inter-Bold", size: 219.0))
                                    .frame(width: 450, alignment: .leading)
                                    .position(x: 198, y: 281)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-19)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                
                            default:
//                                Text("\(unsignedDateInt)")
                                    Text("166")
                                    .font(.custom("Inter-Bold", size: 225.0))
                                    .frame(width: 450, alignment: .leading)
                                    .position(x: 198, y: 282)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-19)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                        
                        case 2:
//                            switch Int(unsignedDateInt)! {
                                switch 2834 {
                                    
                            case 204, 244:
//                                Text("\(unsignedDateInt)")
                                Text("204")
                                    .font(.custom("Inter-Bold", size: 202.0))
                                    .frame(width: 450, alignment: .leading)
                                    .position(x: 197, y: 282)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-18)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                            case 234, 254, 264, 284, 294:
//                                Text("\(unsignedDateInt)")
                                    Text("284")
                                    .font(.custom("Inter-Bold", size: 203.0))
                                    .frame(width: 450, alignment: .leading)
                                    .position(x: 197, y: 282)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-18)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default:
//                                Text("\(unsignedDateInt)")
                                    Text("266")
                                    .font(.custom("Inter-Bold", size: 207.0))
                                    .frame(width: 450, alignment: .leading)
                                    .position(x: 197, y: 282)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-18)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                        case 3...8 :
//                            switch Int(unsignedDateInt)! {
                                switch 8834 {
                                    
                            case 304, 334, 344, 354, 364, 384, 394, 404, 434, 444, 454, 464, 484, 494, 504, 604, 804:
//                                Text("\(unsignedDateInt)")
                                    Text("444")
                                    .font(.custom("Inter-Bold", size: 199.0))
                                    .frame(width: 450, alignment: .leading)
                                    .position(x: 195, y: 281)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-18)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            case 544, 564, 584, 594, 624, 644, 664, 684, 694, 844, 854, 864, 884, 894:
//                                Text("\(unsignedDateInt)")
                                    Text("844")
                                    .font(.custom("Inter-Bold", size: 201.0))
                                    .frame(width: 450, alignment: .leading)
                                    .position(x: 195, y: 282)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-18)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default:
//                                Text("\(unsignedDateInt)")
                                    Text("366")
                                    .font(.custom("Inter-Bold", size: 206.0))
                                    .frame(width: 450, alignment: .leading)
                                    .position(x: 193, y: 282)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-18)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                        case 9:
//                            Text("\(unsignedDateInt)")
                                Text("904")
                                .font(.custom("Inter-Bold", size: 198.0))
                                .frame(width: 450, alignment: .leading)
                                .position(x: 197, y: 280)
                                .multilineTextAlignment(.leading)
                                .kerning(-18)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                        default:
                            Text("Encountered Error S02-2-3")
                            
                        }
                        
                    case 4:
//                        switch (unsignedDateInt.components(separatedBy: "0").count - 1) { // 0의 갯수
                            switch 3 { // 0의 갯수
                        case 0: // 0갯수 = 0개
                            
//                            switch (unsignedDateInt.components(separatedBy: "1").count - 1) { // 1의 갯수
                                switch 43 { // 1의 갯수
                            case 1: // 1갯수 1개 (ex. 1994)
//                                Text("\(unsignedDateInt)")
                                    Text("1994")
                                    .font(.custom("Inter-Bold", size: 162.0))
                                    .frame(width: 500, alignment: .leading)
                                    .position(x: 227, y: 278)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-15)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            case 2: // 1갯수 2개 (ex. 1914)
//                                Text("\(unsignedDateInt)")
                                    Text("1914")
                                    .font(.custom("Inter-Bold", size: 173.0))
                                    .frame(width: 500, alignment: .leading)
                                    .position(x: 227, y: 282)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-15)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            case 3: // 1갯수 3개 (ex. 1114)
//                                Text("\(unsignedDateInt)")
                                    Text("1114")
                                    .font(.custom("Inter-Bold", size: 188.0))
                                    .frame(width: 500, alignment: .leading)
                                    .position(x: 227, y: 285)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-15)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            case 4: // 1갯수 4개 (ex. 1111)
//                                Text("\(unsignedDateInt)")
                                    Text("1111")
                                    .font(.custom("Inter-Bold", size: 206.0))
                                    .frame(width: 500, alignment: .leading)
                                    .position(x: 227, y: 284)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-15)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default: // 그 이외의, 1000~9999까지 0갯수 0개 & 1갯수 0개인 수 (ex. 9994)
//                                Text("\(unsignedDateInt)")
                                    Text("9994")
                                    .font(.custom("Inter-Bold", size: 150.0))
                                    .frame(width: 500, alignment: .leading)
                                    .position(x: 226, y: 280)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-14)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                            
                        case 1: // 0갯수 = 1개
//                            switch (unsignedDateInt.components(separatedBy: "1").count - 1) { // 1의 갯수
                                switch 34 { // 1의 갯수
                            case 1: // 1갯수 1개 (ex. 1094)
//                                Text("\(unsignedDateInt)")
                                    Text("1094")
                                    .font(.custom("Inter-Bold", size: 160.0))
                                    .frame(width: 500, alignment: .leading)
                                    .position(x: 227, y: 279)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-15)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                
                            case 2: // 1갯수 2개 (ex. 1014)
//                                Text("\(unsignedDateInt)")
                                    Text("1014")
                                    .font(.custom("Inter-Bold", size: 172.0))
                                    .frame(width: 500, alignment: .leading)
                                    .position(x: 227, y: 281)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-15)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            case 3: // 1갯수 3개 (ex. 1011)
//                                Text("\(unsignedDateInt)")
                                    Text("1011")
                                    .font(.custom("Inter-Bold", size: 190.0))
                                    .frame(width: 500, alignment: .leading)
                                    .position(x: 227, y: 284)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-15)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default: // 1갯수 0개 (ex. 9094)
//                                Text("\(unsignedDateInt)")
                                    Text("9094")
                                    .font(.custom("Inter-Bold", size: 148.0))
                                    .frame(width: 500, alignment: .leading)
                                    .position(x: 228, y: 283)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-14)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                        case 2: // 0갯수 = 2개
//                            switch (unsignedDateInt.components(separatedBy: "1").count - 1) { // 1의 갯수
                                switch 32 { // 1의 갯수
                            case 1: // 1갯수 1개 (ex. 1004)
//                                Text("\(unsignedDateInt)")
                                    Text("1004")
                                    .font(.custom("Inter-Bold", size: 157.0))
                                    .frame(width: 500, alignment: .leading)
                                    .position(x: 226, y: 281)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-14)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                
                            case 2: // 1갯수 2개 (ex. 1001)
//                                Text("\(unsignedDateInt)")
                                    Text("1001")
                                    .font(.custom("Inter-Bold", size: 171.0))
                                    .frame(width: 500, alignment: .leading)
                                    .position(x: 226, y: 285)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-14)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default: // 1갯수 0개 (ex. 9004)
//                                Text("\(unsignedDateInt)")
                                    Text("9004")
                                    .font(.custom("Inter-Bold", size: 148.0))
                                    .frame(width: 500, alignment: .leading)
                                    .position(x: 224, y: 280)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-13)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                        case 3: // 0갯수 = 3개
//                            switch (unsignedDateInt.components(separatedBy: "1").count - 1) { // 1의 갯수
                                switch 13 { // 1의 갯수
                            case 1: // 1갯수 1개 (ex. 1000)
//                                Text("\(unsignedDateInt)")
                                    Text("1000")
                                    .font(.custom("Inter-Bold", size: 160.0))
                                    .frame(width: 500, alignment: .leading)
                                    .position(x: 226, y: 280)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-15)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default: // 1갯수 0개 (ex. 9000)
//                                Text("\(unsignedDateInt)")
                                    Text("9000")
                                    .font(.custom("Inter-Bold", size: 151.0))
                                    .frame(width: 500, alignment: .leading)
                                    .position(x: 223, y: 281)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-14)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                        default:
                            Text("Encountered Error S02-2-5")
                        }
                        
                    case 5...:
//                        Text("\(unsignedDateInt)")
                        Text("10004")
                            .font(.custom("Inter-Bold", size: 124.0))
                            .frame(width: 450, alignment: .leading)
                            .position(x: 202, y: 284)
                            .multilineTextAlignment(.leading)
                            .kerning(-11)
                            .rotationEffect(.degrees(-11))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                default:
                    Text("Encountered Error S02-2-4")
                    
                }
            }
        }
        .frame(height: 400)
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
    }
}
