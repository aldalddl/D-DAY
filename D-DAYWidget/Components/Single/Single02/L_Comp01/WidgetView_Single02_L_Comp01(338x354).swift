//
//  WidgetView_Single02_L_Comp01(348x159).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2023/04/02.
//

import SwiftUI

struct WidgetView_Single02_L_Comp01_338x354_: View { // disable shadow
    
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
                        .font(.custom("Inter-Bold", size: 238.0))
                        .frame(width: 230, height: 36, alignment: .leading)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 210, trailing: 70))
                        .rotationEffect(.degrees(-13))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case "+":
                    Text("+")
                        .font(.custom("Inter-Bold", size: 323.0))
                        .frame(width: 230, height: 36, alignment: .leading)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 250, trailing: 108))
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
                        .position(x: 247, y: 117)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 5...6:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 24.0))
                        .frame(width: 100, height: 100, alignment: .topTrailing)
                        .position(x: 260, y: 110)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 7...10:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 21.0))
                        .frame(width: 120, height: 100, alignment: .topTrailing)
                        .position(x: 251, y: 115)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 11...12:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 19.0))
                        .frame(width: 130, height: 100, alignment: .topTrailing)
                        .position(x: 248, y: 113)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                case 13...14:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 19.0))
                        .frame(width: 130, height: 100, alignment: .topTrailing)
                        .position(x: 248, y: 107)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(2)
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                    
                case 15...:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 18.0))
                        .frame(width: 150, height: 100, alignment: .topTrailing)
                        .position(x: 234, y: 115)
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
                    .padding(EdgeInsets(top: 0, leading: 173, bottom: 75, trailing: 0))
                    .multilineTextAlignment(.trailing)
                    .lineSpacing(2)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))

                
                // DayNumber
                switch unsignedDateInt.count {
                
                // 0...2자리
                case 0...2:
                    Text("\(unsignedDateInt)")
                        .font(.custom("Inter-Bold", size: 241.0))
                        .frame(width: 450, alignment: .leading)
                        .position(x: 200, y: 274)
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
                                    .font(.custom("Inter-Bold", size: 216.0))
                                    .frame(width: 450, alignment: .leading)
                                    .position(x: 200, y: 280)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-19)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            case 154, 164, 184, 194:
                                Text("\(unsignedDateInt)")
                                    .font(.custom("Inter-Bold", size: 220.0))
                                    .frame(width: 450, alignment: .leading)
                                    .position(x: 198, y: 278)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-19)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                                
                            default:
                                Text("\(unsignedDateInt)")
                                    .font(.custom("Inter-Bold", size: 223.0))
                                    .frame(width: 450, alignment: .leading)
                                    .position(x: 199, y: 278)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-19)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                        case 2:
                            switch Int(unsignedDateInt)! {
                            case 204, 244:
                                Text("\(unsignedDateInt)")
                                    .font(.custom("Inter-Bold", size: 205.0))
                                    .frame(width: 450, alignment: .leading)
                                    .position(x: 192, y: 273)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-19)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                            case 234, 254, 264, 284, 294:
                                Text("\(unsignedDateInt)")
                                    .font(.custom("Inter-Bold", size: 205.0))
                                    .frame(width: 450, alignment: .leading)
                                    .position(x: 192, y: 273)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-19)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default:
                                Text("\(unsignedDateInt)")
                                    .font(.custom("Inter-Bold", size: 205.0))
                                    .frame(width: 450, alignment: .leading)
                                    .position(x: 192, y: 273)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-19)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                        case 3...8 :
                            switch Int(unsignedDateInt)! {
                            case 304, 334, 344, 354, 364, 384, 394, 404, 434, 444, 454, 464, 484, 494, 504, 604, 804:
                                Text("\(unsignedDateInt)")
                                    .font(.custom("Inter-Bold", size: 201.0))
                                    .frame(width: 450, alignment: .leading)
                                    .position(x: 192, y: 278)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-19)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            case 544, 564, 584, 594, 624, 644, 664, 684, 694, 844, 854, 864, 884, 894:
                                Text("\(unsignedDateInt)")
                                    .font(.custom("Inter-Bold", size: 201.0))
                                    .frame(width: 450, alignment: .leading)
                                    .position(x: 192, y: 278)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-19)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default:
                                Text("\(unsignedDateInt)")
                                    .font(.custom("Inter-Bold", size: 201.0))
                                    .frame(width: 450, alignment: .leading)
                                    .position(x: 192, y: 278)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-19)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            }
                            
                        case 9:
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 200.0))
                                .frame(width: 450, alignment: .leading)
                                .position(x: 194, y: 276)
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
                        case 1: // 1갯수 1개 (ex. 1994)
                            Text("\(unsignedDateInt)")
                                    .font(.custom("Inter-Bold", size: 158.0))
                                    .frame(width: 800, alignment: .leading)
                                    .position(x: 375, y: 280)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-12)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        case 2: // 1갯수 2개 (ex. 1914)
                                Text("\(unsignedDateInt)")
                                    .font(.custom("Inter-Bold", size: 170.0))
                                    .frame(width: 800, alignment: .leading)
                                    .position(x: 375, y: 283)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-12)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        case 3: // 1갯수 3개 (ex. 1114)
                                Text("\(unsignedDateInt)")
                                    .font(.custom("Inter-Bold", size: 183.0))
                                    .frame(width: 800, alignment: .leading)
                                    .position(x: 375, y: 286)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-12)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        case 4: // 1갯수 4개 (ex. 1111)
                                Text("\(unsignedDateInt)")
                                    .font(.custom("Inter-Bold", size: 202.0))
                                    .frame(width: 800, alignment: .leading)
                                    .position(x: 375, y: 286)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-12)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        default: // 그 이외의, 1000~9999까지 0갯수 0개 & 1갯수 0개인 수 (ex. 9994)
                                Text("\(unsignedDateInt)")
                                    .font(.custom("Inter-Bold", size: 148.0))
                                    .frame(width: 800, alignment: .leading)
                                    .position(x: 375, y: 286)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-12)
                                    .rotationEffect(.degrees(-11))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        }
                        
                        
                    case 1: // 0갯수 = 1개
                        switch (unsignedDateInt.components(separatedBy: "1").count - 1) { // 1의 갯수
                        case 1: // 1갯수 1개 (ex. 1094)
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 156.0))
                                .frame(width: 800, alignment: .leading)
                                .position(x: 375, y: 282)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                            
                        case 2: // 1갯수 2개 (ex. 1014)
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 167.0))
                                .frame(width: 800, alignment: .leading)
                                .position(x: 375, y: 283)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        case 3: // 1갯수 3개 (ex. 1011)
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 183.0))
                                .frame(width: 800, alignment: .leading)
                                .position(x: 375, y: 285)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        default: // 1갯수 0개 (ex. 9094)
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 145.0))
                                .frame(width: 800, alignment: .leading)
                                .position(x: 375, y: 284)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        }
                        
                    case 2: // 0갯수 = 2개
                        switch (unsignedDateInt.components(separatedBy: "1").count - 1) { // 1의 갯수
                        case 1: // 1갯수 1개 (ex. 1004)
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 154.0))
                                .frame(width: 800, alignment: .leading)
                                .position(x: 375, y: 283)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                            
                        case 2: // 1갯수 2개 (ex. 1001)
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 168.0))
                                .frame(width: 800, alignment: .leading)
                                .position(x: 375, y: 283)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        default: // 1갯수 0개 (ex. 9004)
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 144.0))
                                .frame(width: 800, alignment: .leading)
                                .position(x: 375, y: 285)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        }
                        
                    case 3: // 0갯수 = 3개
                        switch (unsignedDateInt.components(separatedBy: "1").count - 1) { // 1의 갯수
                        case 1: // 1갯수 1개 (ex. 1000)
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 158.0))
                                .frame(width: 800, alignment: .leading)
                                .position(x: 375, y: 284)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-11))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        default: // 1갯수 0개 (ex. 9000)
                            Text("\(unsignedDateInt)")
                                .font(.custom("Inter-Bold", size: 146.0))
                                .frame(width: 800, alignment: .leading)
                                .position(x: 375, y: 284)
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
                        .font(.custom("Inter-Bold", size: 125.0))
                        .frame(width: 450, alignment: .leading)
                        .position(x: 197, y: 290)
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
