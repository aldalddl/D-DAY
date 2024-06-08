//
//  WidgetView_Single02_L_Comp02(364x170).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2023/04/02.
//

import SwiftUI

struct WidgetView_Single02_L_Comp02_364x382_: View { // enable shadow
    
    var entry: Provider.Entry
    
    var ddaySymbolMenu: [DdaySymbol]
    
    var body: some View {
        
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        let isTodayCounted: String = ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false"
        let dateInt = CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ?? "2025.12.25"), isTodayCounted: isTodayCounted)
        let unsignedDateInt = CustomFunctions().dateIntSign(dateIntParam: dateInt)
        let ddayDorPlus = CustomFunctions().ddaySetDorPlus(dateIntParam: dateInt)
        
        ZStack {
            ZStack {
                
                // D or +
                switch ddayDorPlus {
                case "D":
                    Text("D")
                        .font(.custom("Inter-Bold", size: 237.0))
                        .frame(width: 230, height: 36, alignment: .leading)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .position(x: 135, y: 85)
                        .rotationEffect(.degrees(-13))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case "+":
                    Text("+")
                        .font(.custom("Inter-Bold", size: 320.0))
                        .frame(width: 230, height: 36, alignment: .leading)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .position(x: 117, y: 64)
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
                        .font(.custom("Inter-Bold", size: 19.0))
                        .frame(width: 130, height: 100, alignment: .topTrailing)
                        .position(x: 270, y: 115)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 5...6:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 19.0))
                        .frame(width: 130, height: 100, alignment: .topTrailing)
                        .position(x: 271, y: 117)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 7...10:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 18.0))
                        .frame(width: 110, height: 100, alignment: .topTrailing)
                        .position(x: 280, y: 111)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 11...12:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 17.0))
                        .frame(width: 120, height: 100, alignment: .topTrailing)
                        .position(x: 276, y: 110)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 13...14:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 16.0))
                        .frame(width: 130, height: 100, alignment: .topTrailing)
                        .position(x: 271, y: 118)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 15...:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 15.0))
                        .frame(width: 130, height: 100, alignment: .topTrailing)
                        .position(x: 271, y: 112)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                default:
                    Text("Encountered Error S02-2-2")
                    
                }


                // Date
                Text(ddaySymbolMenu[safe: 0]?.ddayDate ?? "0000.00.00")
                    .font(.custom("Inter-Bold", size: 11))
                    .frame(width: 110, height: 50, alignment: .topTrailing)
                    .padding(EdgeInsets(top: 0, leading: 194, bottom: 104, trailing: 0))
                    .multilineTextAlignment(.trailing)
                    .lineSpacing(2)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))

                
                // DayNumber
                switch unsignedDateInt.count {
                
                // 0...2자리
                case 0...2:
                    Text("\(unsignedDateInt)")
                        .font(.custom("Inter-Bold", size: 247.0))
                        .frame(width: 450, alignment: .leading)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .position(x: 191, y: 279)
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
                                    .font(.custom("Inter-Bold", size: 213.0))
                                    .frame(width: 450, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 197, y: 285)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-19)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            case 154, 164, 184, 194:
                                Text("\(unsignedDateInt)")
                                    .font(.custom("Inter-Bold", size: 216.0))
                                    .frame(width: 450, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 194, y: 284)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-19)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                
                            default:
                                Text("\(unsignedDateInt)")
                                    .font(.custom("Inter-Bold", size: 218.0))
                                    .frame(width: 450, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 195, y: 284)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-19)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                        
                        case 2:
                            switch Int(unsignedDateInt)! {
                            case 204, 244:
                                Text("\(unsignedDateInt)")
                                    .font(.custom("Inter-Bold", size: 195.0))
                                    .frame(width: 450, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 197, y: 285)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-19)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                            case 234, 254, 264, 284, 294:
                                Text("\(unsignedDateInt)")
                                    .font(.custom("Inter-Bold", size: 197.0))
                                    .frame(width: 450, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 197, y: 285)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-19)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default:
                                Text("\(unsignedDateInt)")
                                    .font(.custom("Inter-Bold", size: 202.0))
                                    .frame(width: 450, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 197, y: 285)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-19)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                        case 3...8 :
                            switch Int(unsignedDateInt)! {
                            case 304, 334, 344, 354, 364, 384, 394, 404, 434, 444, 454, 464, 484, 494, 504, 604, 804:
                                Text("\(unsignedDateInt)")
                                    .font(.custom("Inter-Bold", size: 194.0))
                                    .frame(width: 450, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 193, y: 285)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-19)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            case 544, 564, 584, 594, 624, 644, 664, 684, 694, 844, 854, 864, 884, 894:
                                Text("\(unsignedDateInt)")
                                    .font(.custom("Inter-Bold", size: 196.0))
                                    .frame(width: 450, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 193, y: 285)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-19)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default:
                                Text("\(unsignedDateInt)")
                                    .font(.custom("Inter-Bold", size: 201.0))
                                    .frame(width: 450, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 193, y: 285)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-19)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                        case 9:
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 197.0))
                                .frame(width: 450, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 193, y: 285)
                                .multilineTextAlignment(.leading)
                                .kerning(-19)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                        default:
                            Text("Encountered Error S02-2-3")
                            
                        }
    
                    
                case 4:
                        switch (unsignedDateInt.components(separatedBy: "0").count - 1) { // 0의 갯수
                        case 0: // 0갯수 = 0개
                            
                            switch (unsignedDateInt.components(separatedBy: "1").count - 1) { // 1의 갯수
                                case 1: // 1갯수 1개
                                    Text("\(unsignedDateInt)")
                                        .font(.custom("Inter-Bold", size: 160.0))
                                        .frame(width: 500, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 219, y: 288)
                                        .multilineTextAlignment(.leading)
                                        .kerning(-15)
                                        .rotationEffect(.degrees(-11))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                    
                                case 2: // 1갯수 2개
                                    Text("\(unsignedDateInt)")
                                        .font(.custom("Inter-Bold", size: 172.0))
                                        .frame(width: 500, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 219, y: 288)
                                        .multilineTextAlignment(.leading)
                                        .kerning(-15)
                                        .rotationEffect(.degrees(-11))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                case 3: // 1갯수 3개
                                    Text("\(unsignedDateInt)")
                                        .font(.custom("Inter-Bold", size: 185.0))
                                        .frame(width: 500, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 219, y: 286)
                                        .multilineTextAlignment(.leading)
                                        .kerning(-15)
                                        .rotationEffect(.degrees(-11))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                case 4: // 1갯수 4개
                                    Text("\(unsignedDateInt)")
                                        .font(.custom("Inter-Bold", size: 198.0))
                                        .frame(width: 500, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 219, y: 286)
                                        .multilineTextAlignment(.leading)
                                        .kerning(-15)
                                        .rotationEffect(.degrees(-11))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                default: // 그 이외의, 1000~9999까지 0갯수 0개 & 1갯수 0개인 수
                                    Text("\(unsignedDateInt)")
                                        .font(.custom("Inter-Bold", size: 149.0))
                                        .frame(width: 500, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 219, y: 286)
                                        .multilineTextAlignment(.leading)
                                        .kerning(-15)
                                        .rotationEffect(.degrees(-11))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                                
                            
                        case 1: // 0갯수 = 1개
                                switch (unsignedDateInt.components(separatedBy: "1").count - 1) { // 1의 갯수
                                    case 1: // 1갯수 1개
                                        Text("\(unsignedDateInt)")
                                            .font(.custom("Inter-Bold", size: 158.0))
                                            .frame(width: 500, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 219, y: 285)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-15)
                                            .rotationEffect(.degrees(-11))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                        
                                    case 2: // 1갯수 2개
                                        Text("\(unsignedDateInt)")
                                            .font(.custom("Inter-Bold", size: 171.0))
                                            .frame(width: 500, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 219, y: 285)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-15)
                                            .rotationEffect(.degrees(-11))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                    case 3: // 1갯수 3개
                                        Text("\(unsignedDateInt)")
                                            .font(.custom("Inter-Bold", size: 186.0))
                                            .frame(width: 500, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 219, y: 285)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-15)
                                            .rotationEffect(.degrees(-11))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                        
                                    default: // 1갯수 0개
                                        Text("\(unsignedDateInt)")
                                            .font(.custom("Inter-Bold", size: 148.0))
                                            .frame(width: 500, alignment: .leading)
                                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                            .position(x: 219, y: 285)
                                            .multilineTextAlignment(.leading)
                                            .kerning(-15)
                                            .rotationEffect(.degrees(-11))
                                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                }
                            
                        case 2: // 0갯수 = 2개
                                switch (unsignedDateInt.components(separatedBy: "1").count - 1) { // 1의 갯수
                                case 1: // 1갯수 1개
                                    Text("\(unsignedDateInt)")
                                        .font(.custom("Inter-Bold", size: 156.0))
                                        .frame(width: 500, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 219, y: 286)
                                        .multilineTextAlignment(.leading)
                                        .kerning(-15)
                                        .rotationEffect(.degrees(-11))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                                
                                                
                                case 2: // 1갯수 2개
                                    Text("\(unsignedDateInt)")
                                        .font(.custom("Inter-Bold", size: 169.0))
                                        .frame(width: 500, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 219, y: 286)
                                        .multilineTextAlignment(.leading)
                                        .kerning(-15)
                                        .rotationEffect(.degrees(-11))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                                
                                default: // 1갯수 0개
                                    Text("\(unsignedDateInt)")
                                        .font(.custom("Inter-Bold", size: 146.0))
                                        .frame(width: 500, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 219, y: 284)
                                        .multilineTextAlignment(.leading)
                                        .kerning(-15)
                                        .rotationEffect(.degrees(-11))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                        case 3: // 0갯수 = 3개
                                switch (unsignedDateInt.components(separatedBy: "1").count - 1) { // 1의 갯수
                                case 1: // 1갯수 1개
                                    Text("\(unsignedDateInt)")
                                    .font(.custom("Inter-Bold", size: 157.0))
                                    .frame(width: 500, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 219, y: 286)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-15)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                default: // 1갯수 0개
                                    Text("\(unsignedDateInt)")
                                        .font(.custom("Inter-Bold", size: 148.0))
                                        .frame(width: 500, alignment: .leading)
                                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                        .position(x: 219, y: 286)
                                        .multilineTextAlignment(.leading)
                                        .kerning(-15)
                                        .rotationEffect(.degrees(-11))
                                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                }
                            
                        default:
                            Text("Encountered Error S02-2-5")
                        }
                        
                case 5...:
                    Text("\(unsignedDateInt)")
                        .font(.custom("Inter-Bold", size: 125.0))
                        .frame(width: 450, alignment: .leading)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .position(x: 191, y: 286)
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
