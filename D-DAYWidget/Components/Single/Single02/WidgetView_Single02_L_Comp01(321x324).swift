//
//  WidgetView_Single02_L_Comp01(321x148).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2023/04/02.
//

import SwiftUI

struct WidgetView_Single02_L_Comp01_321x324_: View { // disable shadow
    
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
                        .font(.custom("Inter-Bold", size: 220.0))
                        .frame(width: 230, height: 36, alignment: .leading)
                        .position(x: 135, y: 102)
                        .rotationEffect(.degrees(-13))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case "+":
                    Text("+")
                        .font(.custom("Inter-Bold", size: 298.0))
                        .frame(width: 230, height: 36, alignment: .leading)
                        .position(x: 113, y: 83)
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
                        .font(.custom("Inter-Bold", size: 22.0))
                        .frame(width: 120, height: 100, alignment: .topTrailing)
                        .position(x: 234, y: 135)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 5...6:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 18.0))
                        .frame(width: 120, height: 100, alignment: .topTrailing)
                        .position(x: 234, y: 135)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 7...10:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 15.0))
                        .frame(width: 120, height: 100, alignment: .topTrailing)
                        .position(x: 234, y: 130)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 11...:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 14.0))
                        .frame(width: 120, height: 100, alignment: .topTrailing)
                        .position(x: 234, y: 130)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                default:
                    Text("Encountered Error S02-2-2")
                    
                }


                // Date
                Text(ddaySymbolMenu[safe: 0]?.ddayDate ?? "2023.12.28")
                    .font(.custom("Inter-Bold", size: 11.0))
                    .frame(width: 110, height: 50, alignment: .topTrailing)
                    .position(x: 238, y: 163)
                    .multilineTextAlignment(.trailing)
                    .lineSpacing(2)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))

                
                // DayNumber
                switch unsignedDateInt.count {
                
                // 0...2자리
                case 0...2:
                    Text("\(unsignedDateInt)")
                        .font(.custom("Inter-Bold", size: 220.0))
                        .frame(width: 450, alignment: .leading)
                        .position(x: 203, y: 263)
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
                                    .font(.custom("Inter-Bold", size: 204.0))
                                    .frame(width: 450, alignment: .leading)
                                    .position(x: 200, y: 270)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-17)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            case 154, 164, 184, 194:
                                Text("\(unsignedDateInt)")
                                    .font(.custom("Inter-Bold", size: 209.0))
                                    .frame(width: 450, alignment: .leading)
                                    .position(x: 200, y: 270)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-17)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                
                            default:
                                Text("\(unsignedDateInt)")
                                    .font(.custom("Inter-Bold", size: 211.0))
                                    .frame(width: 450, alignment: .leading)
                                    .position(x: 200, y: 270)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-17)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                        case 2:
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 190.0))
                                .frame(width: 450, alignment: .leading)
                                .position(x: 200, y: 270)
                                .multilineTextAlignment(.leading)
                                .kerning(-17)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                        case 3:
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 187.0))
                                .frame(width: 450, alignment: .leading)
                                .position(x: 198, y: 273)
                                .multilineTextAlignment(.leading)
                                .kerning(-17)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        case 4:
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 189.0))
                                .frame(width: 450, alignment: .leading)
                                .position(x: 190, y: 273)
                                .multilineTextAlignment(.leading)
                                .kerning(-17)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        case 5...6, 8, 9:
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 190.0))
                                .frame(width: 450, alignment: .leading)
                                .position(x: 195, y: 271)
                                .multilineTextAlignment(.leading)
                                .kerning(-17)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        case 7:
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 195.0))
                                .frame(width: 450, alignment: .leading)
                                .position(x: 199, y: 271)
                                .multilineTextAlignment(.leading)
                                .kerning(-17)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        default:
                            Text("Encountered Error S02-2-3")
                            
                        }
                        
                    
                case 4...:
                    Text("\(unsignedDateInt)")
                        .font(.custom("Inter-Bold", size: 144.0))
                        .frame(width: 450, alignment: .leading)
                        .position(x: 199, y: 284)
                        .multilineTextAlignment(.leading)
                        .kerning(-14)
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
