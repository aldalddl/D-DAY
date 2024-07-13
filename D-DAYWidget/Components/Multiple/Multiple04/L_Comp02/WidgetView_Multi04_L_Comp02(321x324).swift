//
//  WidgetView_Multi04_L_Comp02(321x324).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2023/04/10.
//

import SwiftUI

struct WidgetView_Multi04_L_Comp02_321x324_: View { // enable shadow
    
    var entry: Provider.Entry
    
    var ddaySymbolMenu: [DdaySymbol]
    
    var body: some View {
        
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        
        
        HStack(spacing: 18) {
            // 1
            ZStack {
                // Title 1
                switch (ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue()).count {
                case ...4:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 13.0))
                        .frame(width: 65, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 196, trailing: 8))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 5...10:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 12.0))
                        .frame(width: 60, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 196, trailing: 0))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 11...:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 11.0))
                        .frame(width: 60, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 196, trailing: 2))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                default:
                    Text("Error #F-Size M04-1-1")
                }
                
                // Date 1
                Text(ddaySymbolMenu[safe: 0]?.ddayDate ?? "0000.00.00")
                    .font(.custom("Inter-Bold", size: 10.0))
                    .frame(width: 70, height: 50, alignment: .topTrailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 105, trailing: 10))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                // DayNumber 1
                switch CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2025.12.25"), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")).count {
                case ...3:
                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2025.12.25"), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")))")
                        .font(.custom("Inter-Bold", size: 104.0))
                        .frame(width: 400, height: 50, alignment: .leading)
                        .padding(EdgeInsets(top: 46, leading: 44, bottom: 28, trailing: 0))
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .kerning(-10)
                        .rotationEffect(.degrees(-82))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 4:
                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2025.12.25"), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")))")
                        .font(.custom("Inter-Bold", size: 95.0))
                        .frame(width: 400, height: 50, alignment: .leading)
                        .padding(EdgeInsets(top: 41, leading: 52, bottom: 27, trailing: 0))
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .kerning(-8)
                        .rotationEffect(.degrees(-82))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 5:
                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2025.12.25"), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")))")
                        .font(.custom("Inter-Bold", size: 80.0))
                        .frame(width: 400, height: 50, alignment: .leading)
                        .padding(EdgeInsets(top: 34, leading: 54, bottom: 25, trailing: 0))
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .kerning(-9)
                        .rotationEffect(.degrees(-83))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 6...:
                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2025.12.25"), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")))")
                        .font(.custom("Inter-Bold", size: 67.0))
                        .frame(width: 400, height: 50, alignment: .leading)
                        .padding(EdgeInsets(top: 33, leading: 58, bottom: 25, trailing: 0))
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .kerning(-7)
                        .rotationEffect(.degrees(-83))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                default:
                    Text("Error #F-Count M04-1-1")
                }
            }
            .frame(width: 80, height: 400)
            .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
            .clipped()
            
            
            // 2
            ZStack {
                
                // Title 2
                switch (ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue()).count {
                case ...4:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 13.0))
                        .frame(width: 65, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 196, trailing: 8))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                case 5...10:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 12.0))
                        .frame(width: 60, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 196, trailing: 0))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                case 11...:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 11.0))
                        .frame(width: 60, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 196, trailing: 2))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                default:
                    Text("Error #F-Size M04-1-1")
                }
                
                // Date 2
                Text(ddaySymbolMenu[safe: 1]?.ddayDate ?? "0000.00.00")
                    .font(.custom("Inter-Bold", size: 10.0))
                    .frame(width: 70, height: 50, alignment: .topTrailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 105, trailing: 10))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
                // DayNumber 2
                switch CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2025.04.05"), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")).count {
                case ...3:
                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2025.04.05"), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")))")
                        .font(.custom("Inter-Bold", size: 104.0))
                        .frame(width: 400, height: 50, alignment: .leading)
                        .padding(EdgeInsets(top: 46, leading: 44, bottom: 28, trailing: 0))
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .kerning(-10)
                        .rotationEffect(.degrees(-82))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                case 4:
                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2025.04.05"), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")))")
                        .font(.custom("Inter-Bold", size: 95.0))
                        .frame(width: 400, height: 50, alignment: .leading)
                        .padding(EdgeInsets(top: 41, leading: 52, bottom: 27, trailing: 0))
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .kerning(-8)
                        .rotationEffect(.degrees(-82))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                case 5:
                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2025.04.05"), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")))")
                        .font(.custom("Inter-Bold", size: 80.0))
                        .frame(width: 400, height: 50, alignment: .leading)
                        .padding(EdgeInsets(top: 34, leading: 54, bottom: 25, trailing: 0))
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .kerning(-9)
                        .rotationEffect(.degrees(-83))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                case 6...:
                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2025.04.05"), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")))")
                        .font(.custom("Inter-Bold", size: 67.0))
                        .frame(width: 400, height: 50, alignment: .leading)
                        .padding(EdgeInsets(top: 33, leading: 58, bottom: 25, trailing: 0))
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .kerning(-7)
                        .rotationEffect(.degrees(-83))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                default:
                    Text("Error #F-Count M04-1-2")
                }
            }
            .frame(width: 80, height: 400)
            .clipped()
            
            
            // 3
            ZStack {
                
                // Title 3
                switch (ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue()).count {
                case ...4:
                    Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 13.0))
                        .frame(width: 65, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 196, trailing: 8))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 5...10:
                    Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 12.0))
                        .frame(width: 60, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 196, trailing: 0))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 11...:
                    Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 11.0))
                        .frame(width: 60, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 196, trailing: 2))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                default:
                    Text("Error #F-Size M04-1-1")
                }
                
                // Date 3
                Text(ddaySymbolMenu[safe: 2]?.ddayDate ?? "0000.00.00")
                    .font(.custom("Inter-Bold", size: 10.0))
                    .frame(width: 70, height: 50, alignment: .topTrailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 105, trailing: 10))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                // DayNumber 3
                switch CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2025.05.24"), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")).count {
                case ...3:
                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2025.05.24"), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")))")
                        .font(.custom("Inter-Bold", size: 104.0))
                        .frame(width: 400, height: 50, alignment: .leading)
                        .padding(EdgeInsets(top: 46, leading: 44, bottom: 28, trailing: 0))
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .kerning(-10)
                        .rotationEffect(.degrees(-82))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 4:
                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2025.05.24"), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")))")
                        .font(.custom("Inter-Bold", size: 95.0))
                        .frame(width: 400, height: 50, alignment: .leading)
                        .padding(EdgeInsets(top: 41, leading: 52, bottom: 27, trailing: 0))
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .kerning(-8)
                        .rotationEffect(.degrees(-82))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 5:
                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2025.05.24"), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")))")
                        .font(.custom("Inter-Bold", size: 80.0))
                        .frame(width: 400, height: 50, alignment: .leading)
                        .padding(EdgeInsets(top: 34, leading: 54, bottom: 25, trailing: 0))
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .kerning(-9)
                        .rotationEffect(.degrees(-83))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 6...:
                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2025.05.24"), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")))")
                        .font(.custom("Inter-Bold", size: 67.0))
                        .frame(width: 400, height: 50, alignment: .leading)
                        .padding(EdgeInsets(top: 33, leading: 58, bottom: 25, trailing: 0))
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .kerning(-7)
                        .rotationEffect(.degrees(-83))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                default:
                    Text("Error #F-Count M04-1-1")
                }
            }
            .frame(width: 80, height: 400)
            .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
            .clipped()
            
        }
        .frame(width: 400, height: 400)
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))

    }
}
