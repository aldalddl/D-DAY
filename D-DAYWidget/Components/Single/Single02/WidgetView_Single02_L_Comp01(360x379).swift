//
//  WidgetView_Single02_L_Comp01(360x169).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2023/04/06.
//

import SwiftUI

struct WidgetView_Single02_L_Comp01_360x379_: View { // disable shadow
    
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
                        .font(.custom("Inter-Bold", size: 252.0))
                        .frame(width: 230, height: 36, alignment: .leading)
                        .position(x: 135, y: 85)
                        .rotationEffect(.degrees(-13))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case "+":
                    Text("+")
                        .font(.custom("Inter-Bold", size: 315.0))
                        .frame(width: 230, height: 36, alignment: .leading)
                        .position(x: 245, y: 110)
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
                        .font(.custom("Inter-Bold", size: 30.0))
                        .frame(width: 130, height: 100, alignment: .topTrailing)
                        .position(x: 264, y: 110)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 5...6:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 24.0))
                        .frame(width: 130, height: 100, alignment: .topTrailing)
                        .position(x: 262, y: 110)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 7...10:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 20.0))
                        .frame(width: 130, height: 100, alignment: .topTrailing)
                        .position(x: 262, y: 104)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 11...:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 18.0))
                        .frame(width: 150, height: 100, alignment: .topTrailing)
                        .position(x: 254, y: 107)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                default:
                    Text("Encountered Error S02-2-2")
                    
                }


                // Date
                Text(ddaySymbolMenu[safe: 0]?.ddayDate ?? "2023.12.28")
                    .font(.custom("Inter-Bold", size: 12.5))
                    .frame(width: 110, height: 50, alignment: .topTrailing)
                    .padding(EdgeInsets(top: 0, leading: 180, bottom: 94, trailing: 0))
                    .multilineTextAlignment(.trailing)
                    .lineSpacing(2)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))

                
                // DayNumber
                switch unsignedDateInt.count {
                
                // 0...2자리
                case 0...2:
                    Text("\(unsignedDateInt)")
                        .font(.custom("Inter-Bold", size: 257.0))
                        .frame(width: 450, alignment: .leading)
                        .position(x: 190, y: 277)
                        .multilineTextAlignment(.leading)
                        .kerning(-19)
                        .rotationEffect(.degrees(-11))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                // 3자리
                case 3:
                        
                        switch Int(unsignedDateInt)! / 100 {
                        case 0...1:
                            
                            switch Int(unsignedDateInt)! {
                            case 104, 144:
                                Text("\(unsignedDateInt)")
                                    .font(.custom("Inter-Bold", size: 230.0))
                                    .frame(width: 450, alignment: .leading)
                                    .position(x: 196, y: 284)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-19)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            case 154, 164, 184, 194:
                                Text("\(unsignedDateInt)")
                                    .font(.custom("Inter-Bold", size: 231.0))
                                    .frame(width: 450, alignment: .leading)
                                    .position(x: 197, y: 285)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-19)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                
                            default:
                                Text("\(unsignedDateInt)")
                                    .font(.custom("Inter-Bold", size: 238.0))
                                    .frame(width: 450, alignment: .leading)
                                    .position(x: 197, y: 283)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-19)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                        case 2:
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 210.0))
                                .frame(width: 450, alignment: .leading)
                                .position(x: 197, y: 284)
                                .multilineTextAlignment(.leading)
                                .kerning(-19)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                        case 3:
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 210.0))
                                .frame(width: 450, alignment: .leading)
                                .position(x: 193, y: 285)
                                .multilineTextAlignment(.leading)
                                .kerning(-19)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        case 4:
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 211.0))
                                .frame(width: 450, alignment: .leading)
                                .position(x: 186, y: 286)
                                .multilineTextAlignment(.leading)
                                .kerning(-19)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        case 5, 6, 8, 9:
                            Text("\(unsignedDateInt)")
                            .font(.custom("Inter-Bold", size: 211.0))
                            .frame(width: 450, alignment: .leading)
                            .position(x: 192, y: 280)
                            .multilineTextAlignment(.leading)
                            .kerning(-19)
                            .rotationEffect(.degrees(-11))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        case 7:
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 215.0))
                                .frame(width: 450, alignment: .leading)
                                .position(x: 200, y: 285)
                                .multilineTextAlignment(.leading)
                                .kerning(-19)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        default:
                            Text("Encountered Error S02-2-3")
                            
                        }
                        
                    
                case 4...:
                    Text("\(unsignedDateInt)")
                        .font(.custom("Inter-Bold", size: 157.0))
                        .frame(width: 500, alignment: .leading)
                        .position(x: 220, y: 295)
                        .multilineTextAlignment(.leading)
                        .kerning(-15)
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
