//
//  WidgetView_Single01_M_Comp02(170x170).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2023/04/02.
//

import SwiftUI

struct WidgetView_Single01_M_Comp02_364x170_: View { // enable shadow
    
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
                            .font(.custom("Inter-Bold", size: 19.0))
                            .frame(width: 200, height: 20, alignment: .topLeading)
                            .position(x: metrics.size.width * 0.35, y: metrics.size.height * 0.224)
                            
                        
                    case 6...10:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 16.0))
                            .frame(width: 200, height: 20, alignment: .topLeading)
                            .position(x: metrics.size.width * 0.33, y: metrics.size.height * 0.223)
                        
                    case 11...14:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 15.0))
                            .frame(width: 200, height: 20, alignment: .topLeading)
                            .position(x: metrics.size.width * 0.33, y: metrics.size.height * 0.223)
                        
                    case 15...:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 14.0))
                            .frame(width: 200, height: 80, alignment: .topLeading)
                            .position(x: metrics.size.width * 0.33, y: metrics.size.height * 0.36)
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
                                .font(.custom("Inter-Bold", size: 120.0))
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
                                .position(x: 242, y: 109)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        }
                            
                    case 2:
                        Text("D-0\(ddayNumber)")
                            .font(.custom("Inter-Bold", size: 121.0))
                            .frame(width: 500, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 242, y: 108)
                            .multilineTextAlignment(.leading)
                            .kerning(-12)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                    case 3:
                        Text("D-\(ddayNumber)")
                            .font(.custom("Inter-Bold", size: 121.0))
                            .frame(width: 500, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 242, y: 108)
                            .multilineTextAlignment(.leading)
                            .kerning(-12)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 4:
                        Text("D-\(ddayNumber)")
                            .font(.custom("Inter-Bold", size: 102.0))
                            .frame(width: 500, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 240, y: 108)
                            .multilineTextAlignment(.leading)
                            .kerning(-9)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 5...:
                        Text("D-\(ddayNumber)")
                            .font(.custom("Inter-Bold", size: 88.0))
                            .frame(width: 500, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 240, y: 108)
                            .multilineTextAlignment(.leading)
                            .kerning(-9)
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
                                    .font(.custom("Inter-Bold", size: 120.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 242, y: 109)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-12)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            default:
                                Text("D+")
                                    .font(.custom("Inter-Bold", size: 113.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 240, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-13)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                    
                                Text("00\(ddayNumber)")
                                    .font(.custom("Inter-Bold", size: 113.0))
                                    .frame(width: 500, height: 100, alignment: .leading)
                                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                    .position(x: 388, y: 108)
                                    .multilineTextAlignment(.leading)
                                    .kerning(-12)
                                    .rotationEffect(.degrees(-10))
                                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                                
                            }
                            
                    case 2:
                        Text("D+")
                            .font(.custom("Inter-Bold", size: 114.0))
                            .frame(width: 500, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 240, y: 108)
                            .multilineTextAlignment(.leading)
                            .kerning(-13)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                        Text("0\(ddayNumber)")
                            .font(.custom("Inter-Bold", size: 114.0))
                            .frame(width: 500, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 390, y: 108)
                            .multilineTextAlignment(.leading)
                            .kerning(-12)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 3:
                        
                        switch Int(ddayNumber)! / 100 {
                        case 1:
                            Text("D+")
                                .font(.custom("Inter-Bold", size: 123.0))
                                .frame(width: 500, height: 100, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 240, y: 108)
                                .multilineTextAlignment(.leading)
                                .kerning(-14)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                            Text("\(ddayNumber)")
                                .font(.custom("Inter-Bold", size: 118.0))
                                .frame(width: 500, height: 100, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 400, y: 108)
                                .multilineTextAlignment(.leading)
                                .kerning(-12)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                        case 2...9:
                            Text("D+")
                                .font(.custom("Inter-Bold", size: 118.0))
                                .frame(width: 500, height: 100, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 240, y: 108)
                                .multilineTextAlignment(.leading)
                                .kerning(-15)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                            
                            Text("\(ddayNumber)")
                                .font(.custom("Inter-Bold", size: 113.0))
                                .frame(width: 500, height: 100, alignment: .leading)
                                .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                                .position(x: 395, y: 108)
                                .multilineTextAlignment(.leading)
                                .kerning(-11)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                        default:
                            Text("Default ES01-1-2")
                        }
                        
                        
                    case 4:
                        Text("D")
                            .font(.custom("Inter-Bold", size: 105.0))
                            .frame(width: 400, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 190, y: 108)
                            .multilineTextAlignment(.leading)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                        Text("+")
                            .font(.custom("Inter-ExtraBold", size: 85.0))
                            .frame(width: 400, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 264, y: 102)
                            .multilineTextAlignment(.leading)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                        Text("\(ddayNumber)")
                            .font(.custom("Inter-Bold", size: 98.0))
                            .frame(width: 500, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 369, y: 106)
                            .multilineTextAlignment(.leading)
                            .kerning(-10)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 5...:
                        Text("D")
                            .font(.custom("Inter-Bold", size: 94.0))
                            .frame(width: 400, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 190, y: 108)
                            .multilineTextAlignment(.leading)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                        Text("+")
                            .font(.custom("Inter-ExtraBold", size: 76.0))
                            .frame(width: 400, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 254, y: 102)
                            .multilineTextAlignment(.leading)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                        
                        Text("\(ddayNumber)")
                            .font(.custom("Inter-Bold", size: 85.0))
                            .frame(width: 500, height: 100, alignment: .leading)
                            .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                            .position(x: 350, y: 106)
                            .multilineTextAlignment(.leading)
                            .kerning(-9)
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
                        .font(.custom("Inter-Bold", size: 12.0))
                        .frame(width: 300, height: 20, alignment: .trailing)
                        .position(x: metrics.size.width * 0.52, y: metrics.size.height * 0.815)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayBlack"))
                }
            }
        }
        .frame(height: 200)
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayWhite"))
    }
}
