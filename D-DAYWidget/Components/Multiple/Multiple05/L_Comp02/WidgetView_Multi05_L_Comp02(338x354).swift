//
//  WidgetView_Multi05_L_Comp02(338x354).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2023/04/11.
//

import SwiftUI

struct WidgetView_Multi05_L_Comp02_338x354_: View { // enable shadow
    
    var entry: Provider.Entry
    
    var ddaySymbolMenu: [DdaySymbol]
    
    var body: some View {
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        VStack(spacing: 21) {
            
            // 1
            ZStack {
                // DayNumber 1
                switch CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")).count {
                    
                case ...3:
                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")))")
                        .font(.custom("Inter-Bold", size: 113.0))
                        .frame(width: 400, height: 50, alignment: .leading)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .padding(EdgeInsets(top: 10, leading: 33, bottom: 25, trailing: 0))
                        .kerning(-9)
                        .rotationEffect(.degrees(-10))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 4:
                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")))")
                        .font(.custom("Inter-Bold", size: 103.0))
                        .frame(width: 400, height: 50, alignment: .leading)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .padding(EdgeInsets(top: 13, leading: 34, bottom: 25, trailing: 0))
                        .kerning(-9)
                        .rotationEffect(.degrees(-10))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 5:
                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")))")
                        .font(.custom("Inter-Bold", size: 85.0))
                        .frame(width: 400, height: 50, alignment: .leading)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .padding(EdgeInsets(top: 13, leading: 40, bottom: 25, trailing: 0))
                        .kerning(-8)
                        .rotationEffect(.degrees(-10))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 6...:
                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")))")
                        .font(.custom("Inter-Bold", size: 73.0))
                        .frame(width: 400, height: 50, alignment: .leading)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .padding(EdgeInsets(top: 15, leading: 40, bottom: 25, trailing: 0))
                        .kerning(-8)
                        .rotationEffect(.degrees(-10))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                default:
                    Text("Error #F-Count M05-1-1")
                }
                
                // Title 1
                switch (ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue()).count {
                case ...3:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 19.0))
                        .frame(width: 80, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 13, leading: 233, bottom: 0, trailing: 0))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 4:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 17.0))
                        .frame(width: 80, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 13, leading: 233, bottom: 0, trailing: 0))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 5...6:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 15.0))
                        .frame(width: 80, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 13, leading: 232, bottom: 0, trailing: 0))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))

                case 7...10:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 14.0))
                        .frame(width: 80, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 5, leading: 233, bottom: 0, trailing: 0))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))

                case 11...14:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 13.0))
                        .frame(width: 95, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 5, leading: 217, bottom: 0, trailing: 0))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 15...:
                    Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 12.0))
                        .frame(width: 80, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 5, leading: 233, bottom: 0, trailing: 0))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                default:
                    Text("Error #F-Size M05-1-1")
                }
                
                // Date 1
                Text(ddaySymbolMenu[safe: 0]?.ddayDate ?? "2000.00.00")
                    .font(.custom("Inter-Bold", size: 11.0))
                    .frame(width: 70, height: 50, alignment: .topTrailing)
                    .padding(EdgeInsets(top: 76, leading: 240, bottom: 0, trailing: 0))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
            }
            .frame(width: 400, height: 83)
            .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
            .clipped()
            
            
            // 2
            ZStack {
                // DayNumber 2
                switch CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")).count {
                    
                case ...3:
                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")))")
                        .font(.custom("Inter-Bold", size: 113.0))
                        .frame(width: 400, height: 50, alignment: .trailing)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .padding(EdgeInsets(top: 40, leading: 0, bottom: 0, trailing: 75))
                        .kerning(-9)
                        .rotationEffect(.degrees(-10))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                case 4:
                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")))")
                        .font(.custom("Inter-Bold", size: 101.0))
                        .frame(width: 400, height: 50, alignment: .trailing)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .padding(EdgeInsets(top: 27, leading: 0, bottom: 0, trailing: 73))
                        .kerning(-9)
                        .rotationEffect(.degrees(-10))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                case 5:
                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")))")
                        .font(.custom("Inter-Bold", size: 85.0))
                        .frame(width: 400, height: 50, alignment: .trailing)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .padding(EdgeInsets(top: 23, leading: 0, bottom: 0, trailing: 70))
                        .kerning(-8)
                        .rotationEffect(.degrees(-10))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                case 6...:
                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")))")
                        .font(.custom("Inter-Bold", size: 73.0))
                        .frame(width: 400, height: 50, alignment: .trailing)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .padding(EdgeInsets(top: 23, leading: 0, bottom: 0, trailing: 70))
                        .kerning(-8)
                        .rotationEffect(.degrees(-10))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                default:
                    Text("Error #F-Count M05-1-2")
                }
                
                
                // Title 2
                switch (ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue()).count {
                case ...3:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 19.0))
                        .frame(width: 70, height: 55, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 240))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                case 4:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 17.0))
                        .frame(width: 70, height: 55, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 240))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))

                case 5...6:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 15.0))
                        .frame(width: 70, height: 55, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 240))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                case 7...10:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 14.0))
                        .frame(width: 70, height: 55, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 240))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))

                case 11...14:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 13.0))
                        .frame(width: 95, height: 55, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 215))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                case 15...:
                    Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 12.0))
                        .frame(width: 80, height: 55, alignment: .topLeading)
                        .multilineTextAlignment(.leading)
                        .padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 230))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                default:
                    Text("Error #F-Size M05-1-2")
                }

                
                // Date 2
                Text(ddaySymbolMenu[safe: 1]?.ddayDate ?? "2000.00.00")
                    .font(.custom("Inter-Bold", size: 11.0))
                    .frame(width: 70, height: 50, alignment: .topLeading)
                    .padding(EdgeInsets(top: 76, leading: 0, bottom: 0, trailing: 240))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
            }
            .frame(width: 400, height: 83)
            .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
            .clipped()
            
            
            // 3
            ZStack {
                
                // Title 3
                switch (ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue()).count {
                case ...3:
                    Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 19.0))
                        .frame(width: 80, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 13, leading: 233, bottom: 0, trailing: 0))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 4:
                    Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 17.0))
                        .frame(width: 80, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 13, leading: 233, bottom: 0, trailing: 0))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 5...6:
                    Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 15.0))
                        .frame(width: 80, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 13, leading: 232, bottom: 0, trailing: 0))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))

                case 7...10:
                    Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 14.0))
                        .frame(width: 80, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 5, leading: 233, bottom: 0, trailing: 0))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))

                case 11...14:
                    Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 13.0))
                        .frame(width: 95, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 5, leading: 217, bottom: 0, trailing: 0))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 15...:
                    Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                        .font(.custom("Inter-Bold", size: 12.0))
                        .frame(width: 80, height: 55, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .padding(EdgeInsets(top: 5, leading: 233, bottom: 0, trailing: 0))
                        .lineLimit(3)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                default:
                    Text("Error #F-Size M05-1-3")
                }
                
                
                // Date 3
                Text(ddaySymbolMenu[safe: 2]?.ddayDate ?? "2000.00.00")
                    .font(.custom("Inter-Bold", size: 11.0))
                    .frame(width: 70, height: 50, alignment: .topTrailing)
                    .padding(EdgeInsets(top: 76, leading: 240, bottom: 0, trailing: 0))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                // DayNumber 3
                switch CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")).count {
                                
                                
                case ...3:
                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")))")
                        .font(.custom("Inter-Bold", size: 113.0))
                        .frame(width: 400, height: 50, alignment: .leading)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .padding(EdgeInsets(top: 10, leading: 33, bottom: 25, trailing: 0))
                        .kerning(-9)
                        .rotationEffect(.degrees(-10))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                                
                case 4:
                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")))")
                        .font(.custom("Inter-Bold", size: 103.0))
                        .frame(width: 400, height: 50, alignment: .leading)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .padding(EdgeInsets(top: 13, leading: 34, bottom: 25, trailing: 0))
                        .kerning(-9)
                        .rotationEffect(.degrees(-10))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 5:
                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")))")
                        .font(.custom("Inter-Bold", size: 85.0))
                        .frame(width: 400, height: 50, alignment: .leading)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .padding(EdgeInsets(top: 13, leading: 40, bottom: 25, trailing: 0))
                        .kerning(-8)
                        .rotationEffect(.degrees(-10))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                case 6...:
                    Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")))")
                        .font(.custom("Inter-Bold", size: 73.0))
                        .frame(width: 400, height: 50, alignment: .leading)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .padding(EdgeInsets(top: 15, leading: 40, bottom: 25, trailing: 0))
                        .kerning(-8)
                        .rotationEffect(.degrees(-10))
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                default:
                    Text("Error #F-Count M05-1-3")
                }
                
            }
            .frame(width: 400, height: 83)
            .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
            .clipped()
            
        }
        .frame(width: 400, height: 400)
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
        
    }
}
