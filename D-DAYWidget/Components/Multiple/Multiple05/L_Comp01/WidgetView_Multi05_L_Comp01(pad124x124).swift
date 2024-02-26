//
//  WidgetView_Multi05_L_Comp01(pad124x124).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2/14/24.
//

import SwiftUI

struct WidgetView_Multi05_L_Comp01_pad124x124_: View { // disable shadow
    
    var entry: Provider.Entry
    
    var ddaySymbolMenu: [DdaySymbol]
    
    var body: some View {
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        VStack(spacing: 14) {
            
            // 1
            ZStack {
                // DayNumber 1
//                switch CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")).count {
                    switch 6 {
                    
                case ...3:
//                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")))")
                    Text("+27")
                        .font(.custom("Inter-Bold", size: 103.0))
                        .frame(width: 400, height: 50, alignment: .leading)
                        .padding(EdgeInsets(top: 9, leading: 56, bottom: 25, trailing: 0))
                        .kerning(-9)
                        .rotationEffect(.degrees(-10))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 4:
//                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")))")
                    Text("+204")
                        .font(.custom("Inter-Bold", size: 92.0))
                        .frame(width: 400, height: 50, alignment: .leading)
                        .padding(EdgeInsets(top: 10, leading: 58, bottom: 23, trailing: 0))
                        .kerning(-9)
                        .rotationEffect(.degrees(-10))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 5:
//                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")))")
                    Text("+9004")
                        .font(.custom("Inter-Bold", size: 76.0))
                        .frame(width: 400, height: 50, alignment: .leading)
                        .padding(EdgeInsets(top: 13, leading: 60, bottom: 23, trailing: 0))
                        .kerning(-7)
                        .rotationEffect(.degrees(-10))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 6...:
//                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")))")
                    Text("+90004")
                        .font(.custom("Inter-Bold", size: 62.0))
                        .frame(width: 400, height: 50, alignment: .leading)
                        .padding(EdgeInsets(top: 22, leading: 63, bottom: 25, trailing: 0))
                        .kerning(-6)
                        .rotationEffect(.degrees(-10))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                default:
                    Text("Error #F-Count M05-1-1")
                }
                
                // Title 1
                switch (ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue()).count {
                case ...3:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 16.0))
                        .frame(width: 80, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 18, leading: 200, bottom: 0, trailing: 0))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 4:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 16.0))
                        .frame(width: 80, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 18, leading: 200, bottom: 0, trailing: 0))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 5...6:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 15.0))
                        .frame(width: 80, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 20, leading: 200, bottom: 0, trailing: 0))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))

                case 7...10:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 14.0))
                        .frame(width: 87, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 10, leading: 193, bottom: 0, trailing: 0))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))

                case 11...14:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 13.0))
                        .frame(width: 95, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 13, leading: 186, bottom: 0, trailing: 0))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 15...:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 12.0))
                        .frame(width: 80, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 10, leading: 200, bottom: 0, trailing: 0))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                default:
                    Text("Error #F-Size M05-1-1")
                }
                
                // Date 1
                Text(ddaySymbolMenu[safe: 0]?.ddayDate ?? "2000.00.00")
                    .font(.custom("Inter-Bold", size: 11.0))
                    .frame(width: 70, height: 50, alignment: .topTrailing)
                    .padding(EdgeInsets(top: 76, leading: 210, bottom: 0, trailing: 0))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
            }
            .frame(width: 400, height: 80)
            .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
            .clipped()
            
            
            // 2
            ZStack {
                // DayNumber 2
//                    switch CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")).count {
                switch 6 {
                    
                case ...3:
//                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")))")
                    Text("+44")
                        .font(.custom("Inter-Bold", size: 103.0))
                        .frame(width: 400, height: 50, alignment: .trailing)
                        .padding(EdgeInsets(top: 38, leading: 0, bottom: 0, trailing: 90))
                        .kerning(-9)
                        .rotationEffect(.degrees(-10))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                case 4:
//                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")))")
                    Text("+111")
                        .font(.custom("Inter-Bold", size: 92.0))
                        .frame(width: 400, height: 50, alignment: .trailing)
                        .padding(EdgeInsets(top: 29, leading: 0, bottom: 0, trailing: 90))
                        .kerning(-9)
                        .rotationEffect(.degrees(-10))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                case 5:
//                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")))")
                    Text("+9004")
                        .font(.custom("Inter-Bold", size: 76.0))
                        .frame(width: 400, height: 50, alignment: .trailing)
                        .padding(EdgeInsets(top: 26, leading: 0, bottom: 0, trailing: 90))
                        .kerning(-7)
                        .rotationEffect(.degrees(-10))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                case 6...:
//                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")))")
                    Text("+22211")
                        .font(.custom("Inter-Bold", size: 62.0))
                        .frame(width: 400, height: 50, alignment: .trailing)
                        .padding(EdgeInsets(top: 23, leading: 0, bottom: 0, trailing: 97))
                        .kerning(-6)
                        .rotationEffect(.degrees(-10))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                default:
                    Text("Error #F-Count M05-1-2")
                }
                
                
                // Title 2
                switch (ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue()).count {
                case ...3:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 16.0))
                        .frame(width: 70, height: 55, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .padding(EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 206))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                case 4:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 16.0))
                        .frame(width: 70, height: 55, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .padding(EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 206))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))

                case 5...6:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 15.0))
                        .frame(width: 80, height: 55, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .padding(EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 196))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                case 7...10:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 14.0))
                        .frame(width: 84, height: 55, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .padding(EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 192))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))

                case 11...14:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 13.0))
                        .frame(width: 95, height: 55, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .padding(EdgeInsets(top: 12, leading: 0, bottom: 0, trailing: 183))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                case 15...:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 12.0))
                        .frame(width: 80, height: 55, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 197))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                default:
                    Text("Error #F-Size M05-1-2")
                }

                
                // Date 2
                Text(ddaySymbolMenu[safe: 1]?.ddayDate ?? "2000.00.00")
                    .font(.custom("Inter-Bold", size: 11.0))
                    .frame(width: 70, height: 50, alignment: .topLeading)
                    .padding(EdgeInsets(top: 76, leading: 0, bottom: 0, trailing: 208))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
            }
            .frame(width: 400, height: 80)
            .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
            .clipped()
            
            
            // 3
            ZStack {
                
                // Title 3
                switch (ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue()).count {
                case ...3:
                    Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 16.0))
                        .frame(width: 80, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 18, leading: 200, bottom: 0, trailing: 0))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 4:
                    Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 16.0))
                        .frame(width: 80, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 18, leading: 200, bottom: 0, trailing: 0))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 5...6:
                    Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 15.0))
                        .frame(width: 80, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 20, leading: 200, bottom: 0, trailing: 0))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))

                case 7...10:
                    Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 14.0))
                        .frame(width: 87, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 10, leading: 193, bottom: 0, trailing: 0))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))

                case 11...14:
                    Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 13.0))
                        .frame(width: 95, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 13, leading: 186, bottom: 0, trailing: 0))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 15...:
                    Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 12.0))
                        .frame(width: 80, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 10, leading: 200, bottom: 0, trailing: 0))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                default:
                    Text("Error #F-Size M05-1-3")
                }
                
                
                // Date 3
                Text(ddaySymbolMenu[safe: 2]?.ddayDate ?? "2000.00.00")
                    .font(.custom("Inter-Bold", size: 11.0))
                    .frame(width: 70, height: 50, alignment: .topTrailing)
                    .padding(EdgeInsets(top: 76, leading: 210, bottom: 0, trailing: 0))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                // DayNumber 3
//                switch CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")).count {
                    switch 6 {
                                
                                
                case ...3:
//                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")))")
                    Text("+4")
                        .font(.custom("Inter-Bold", size: 106.0))
                        .frame(width: 400, height: 50, alignment: .leading)
                        .padding(EdgeInsets(top: 13, leading: 56, bottom: 25, trailing: 0))
                        .kerning(-9)
                        .rotationEffect(.degrees(-10))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                                
                case 4:
//                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")))")
                    Text("+808")
                        .font(.custom("Inter-Bold", size: 93.0))
                        .frame(width: 400, height: 50, alignment: .leading)
                        .padding(EdgeInsets(top: 10, leading: 58, bottom: 23, trailing: 0))
                        .kerning(-9)
                        .rotationEffect(.degrees(-10))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 5:
//                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")))")
                        Text("+9004")
                        .font(.custom("Inter-Bold", size: 76.0))
                        .frame(width: 400, height: 50, alignment: .leading)
                        .padding(EdgeInsets(top: 13, leading: 60, bottom: 23, trailing: 0))
                        .kerning(-7)
                        .rotationEffect(.degrees(-10))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 6...:
//                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")))")
                    Text("+90004")
                        .font(.custom("Inter-Bold", size: 62.0))
                        .frame(width: 400, height: 50, alignment: .leading)
                        .padding(EdgeInsets(top: 22, leading: 63, bottom: 25, trailing: 0))
                        .kerning(-6)
                        .rotationEffect(.degrees(-10))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                default:
                    Text("Error #F-Count M05-1-3")
                }
                
            }
            .frame(width: 400, height: 80)
            .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
            .clipped()
            
        }
        .frame(width: 400, height: 400)
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
        
    }
}
