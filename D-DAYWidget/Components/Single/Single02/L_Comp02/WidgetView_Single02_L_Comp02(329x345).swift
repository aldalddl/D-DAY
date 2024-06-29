//
//  WidgetView_Single02_L_Comp02(329x155).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2023/04/02.
//

import SwiftUI

struct WidgetView_Single02_L_Comp02_329x345_: View { // enable shadow
    
    var entry: Provider.Entry
    
    var ddaySymbolMenu: [DdaySymbol]
    
    var body: some View {
        
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        let isTodayCounted: String = ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false"
        let dateInt = CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2025.12.25"), isTodayCounted: isTodayCounted)
        let unsignedDateInt = CustomFunctions().dateIntSign(dateIntParam: dateInt)
        let ddayDorPlus = CustomFunctions().ddaySetDorPlus(dateIntParam: dateInt)
        
        
        ZStack {
            ZStack {
                
                // D or +
                switch ddayDorPlus {
                case "D":
                    Text("D")
                        .font(.custom("Inter-Bold", size: 234.0))
                        .frame(width: 230, height: 36, alignment: .leading)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .position(x: 135, y: 99)
                        .rotationEffect(.degrees(-13))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case "+":
                    Text("+")
                        .font(.custom("Inter-Bold", size: 300.0))
                        .frame(width: 230, height: 36, alignment: .leading)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .position(x: 116, y: 71)
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
                        .font(.custom("Inter-Bold", size: 20.0))
                        .frame(width: 120, height: 100, alignment: .topTrailing)
                        .position(x: 240, y: 139)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 5...6:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 19.0))
                        .frame(width: 80, height: 100, alignment: .topTrailing)
                        .position(x: 260, y: 130)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 7...10:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 18.0))
                        .frame(width: 90, height: 100, alignment: .topTrailing)
                        .position(x: 256, y: 130)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 11...14:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 17.0))
                        .frame(width: 125, height: 100, alignment: .topTrailing)
                        .position(x: 237, y: 130)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 15...:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 16.0))
                        .frame(width: 120, height: 100, alignment: .topTrailing)
                        .position(x: 241, y: 130)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                default:
                    Text("Encountered Error S02-2-2")
                    
                }
                
                
                // Date
                Text(ddaySymbolMenu[safe: 0]?.ddayDate ?? "0000.00.00")
                    .font(.custom("Inter-Bold", size: 12.0))
                    .frame(width: 110, height: 50, alignment: .topTrailing)
                    .position(x: 244, y: 163)
                    .multilineTextAlignment(.trailing)
                    .lineSpacing(2)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                
                
                // DayNumber
                switch unsignedDateInt.count {
                    
                // 0...2자리
                case 0...2:
                    Text("\(unsignedDateInt)")
                        .font(.custom("Inter-Bold", size: 248.0))
                        .frame(width: 450, alignment: .leading)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .position(x: 195, y: 270)
                        .multilineTextAlignment(.leading)
                        .kerning(-19)
                        .rotationEffect(.degrees(-11))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                // 3자리
                case 3:
                    
                    switch Int(unsignedDateInt)! / 100 {
                    case 1:
                        
                        switch Int(unsignedDateInt)! {
                        case 104, 144:
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 211.0))
                                .frame(width: 450, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 199, y: 272)
                                .multilineTextAlignment(.leading)
                                .kerning(-17)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        case 100, 154, 164, 184, 194, 134:
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 214.0))
                                .frame(width: 450, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 196, y: 272)
                                .multilineTextAlignment(.leading)
                                .kerning(-17)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                            
                        default:
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 216.0))
                                .frame(width: 450, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 198, y: 272)
                                .multilineTextAlignment(.leading)
                                .kerning(-17)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        }
                        
                    case 2:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 197.0))
                            .frame(width: 450, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 195, y: 272)
                            .multilineTextAlignment(.leading)
                            .kerning(-17)
                            .rotationEffect(.degrees(-11))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 3:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 195.0))
                            .frame(width: 450, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 193, y: 272)
                            .multilineTextAlignment(.leading)
                            .kerning(-17)
                            .rotationEffect(.degrees(-11))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 4:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 194.0))
                            .frame(width: 450, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 191, y: 274)
                            .multilineTextAlignment(.leading)
                            .kerning(-17)
                            .rotationEffect(.degrees(-11))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 5...6, 8, 9:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 193.0))
                            .frame(width: 450, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 195, y: 275)
                            .multilineTextAlignment(.leading)
                            .kerning(-17)
                            .rotationEffect(.degrees(-11))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 7:
                        Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 197.0))
                            .frame(width: 450, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 202, y: 274)
                            .multilineTextAlignment(.leading)
                            .kerning(-17)
                            .rotationEffect(.degrees(-11))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                    default:
                        Text("Encountered Error S02-2-3")
                        
                    }
                    
                    
                case 4:
                    switch (unsignedDateInt.components(separatedBy: "0").count - 1) { // 0의 갯수
                    case 0: // 0갯수 = 0개
                        
                        switch (unsignedDateInt.components(separatedBy: "1").count - 1) { // 1의 갯수
                        case 1: // 1갯수 1개 (ex. 1994)
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 155.0))
                                .frame(width: 500, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 223, y: 285)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        case 2: // 1갯수 2개 (ex. 1914)
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 165.0))
                                .frame(width: 500, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 224, y: 283)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        case 3: // 1갯수 3개 (ex. 1114)
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 178.0))
                                .frame(width: 500, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 224, y: 283)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        case 4: // 1갯수 4개 (ex. 1111)
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 197.0))
                                .frame(width: 500, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 224, y: 285)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        default: // 그 이외의, 1000~9999까지 0갯수 0개 & 1갯수 0개인 수 (ex. 9994)
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 144.0))
                                .frame(width: 500, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 224, y: 283)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        }
                        
                        
                    case 1: // 0갯수 = 1개
                        switch (unsignedDateInt.components(separatedBy: "1").count - 1) { // 1의 갯수
                        case 1: // 1갯수 1개 (ex. 1094)
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 153.0))
                                .frame(width: 500, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 224, y: 285)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                            
                        case 2: // 1갯수 2개 (ex. 1014)
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 163.0))
                                .frame(width: 500, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 224, y: 285)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        case 3: // 1갯수 3개 (ex. 1011)
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 179.0))
                                .frame(width: 500, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 224, y: 285)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        default: // 1갯수 0개 (ex. 9094)
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 143.0))
                                .frame(width: 500, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 224, y: 283)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        }
                        
                    case 2: // 0갯수 = 2개
                        switch (unsignedDateInt.components(separatedBy: "1").count - 1) { // 1의 갯수
                        case 1: // 1갯수 1개 (ex. 1004)
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 151.0))
                                .frame(width: 500, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 224, y: 285)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                            
                        case 2: // 1갯수 2개 (ex. 1001)
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 164.0))
                                .frame(width: 500, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 224, y: 285)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        default: // 1갯수 0개 (ex. 9004)
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 141.0))
                                .frame(width: 500, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 224, y: 283)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        }
                        
                    case 3: // 0갯수 = 3개
                        switch (unsignedDateInt.components(separatedBy: "1").count - 1) { // 1의 갯수
                        case 1: // 1갯수 1개 (ex. 1000)
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 152.0))
                                .frame(width: 500, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 224, y: 285)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        default: // 1갯수 0개 (ex. 9000)
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 143.0))
                                .frame(width: 500, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 224, y: 285)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        }
                        
                    default:
                        Text("Encountered Error S02-2-5")
                    }
                    
                case 5...:
                    Text("\(unsignedDateInt)")
                        .font(.custom("Inter-Bold", size: 123.0))
                        .frame(width: 450, alignment: .leading)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .position(x: 196, y: 286)
                        .multilineTextAlignment(.leading)
                        .kerning(-17)
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
