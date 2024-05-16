//
//  WidgetView_Multi06_XL_Comp01(pad136x136).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 5/5/24.
//

import SwiftUI

struct WidgetView_Multi06_XL_Comp01_pad136x136_: View { // disable shadow
    
    var entry: Provider.Entry
    
    var ddaySymbolMenu: [DdaySymbol]
    
    var body: some View {
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        
        VStack(spacing: 0) {
            HStack(alignment: .bottom, spacing: 0) {
                
                // 1
                ZStack(alignment: .bottom) {
                    
                    // Title 1
                    switch (ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue()).count {
                    case ...5:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 24.0))
                            .frame(width: 330, height: 120, alignment: .topLeading)
                            .position(x: 170, y: 116)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))

                    case 6...10:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 23.0))
                            .frame(width: 330, height: 120, alignment: .topLeading)
                            .position(x: 162, y: 116)  // 172 > 162 (10) / 121 > 116 (5)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))

                    case 11...15:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 22.0))
                            .frame(width: 330, height: 120, alignment: .topLeading)
                            .position(x: 156, y: 118) // 168 > 156 (12) / 122 > 118 (4)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 16...:
                        Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 20.0))
                            .frame(width: 330, height: 120, alignment: .topLeading)
                            .position(x: 150, y: 116) // 166 > 150 / 122 > 116
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    default:
                        Text("Error #F-Size M06-1-1")
                    }
                    
                    
                    // Date 1
                    Text(ddaySymbolMenu[safe: 0]?.ddayDate ?? "2023.12.28")
                        .font(.custom("Inter-ExtraBold", size: 13.0))
                        .multilineTextAlignment(.leading)
                        .frame(width: 40, height: 50, alignment: .topLeading)
                        .position(x: -8, y: 169)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                    
                    // DayNumber 1
                    ZStack {
//                        switch CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")).count {
                            switch 4 {
                        case ...4:
//                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")))")
                                Text("+954")
                                .font(.custom("Inter-ExtraBold", size: 107.0))
                                .frame(width: 380, height: 49, alignment: .topTrailing)
                                .position(x: 76, y: 26)
                                .kerning(-8)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                            
                        case 5:
//                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")))")
                                Text("+9504")
                                .font(.custom("Inter-ExtraBold", size: 88.0))
                                .frame(width: 380, height: 49, alignment: .topTrailing)
                                .position(x: 77, y: 44)
                                .kerning(-7)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                            
                        case 6...:
//                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false")))")
                                Text("+95004")
                                .font(.custom("Inter-ExtraBold", size: 73.0))
                                .frame(width: 380, height: 49, alignment: .topTrailing)
                                .position(x: 78, y: 59)
                                .kerning(-6)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                            
                        default:
                            Text("Error #F-Count M06-1-1")
                        }
                    }
                    .frame(width: 340, height: 105, alignment: .bottomTrailing)
                    .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                }
                .position(x: 300, y: 100)
                .frame(width: 400, height: 200)
                .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                
                
                // 2
                ZStack(alignment: .bottom) {
                    
                    // Title 2
                    switch (ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue()).count {
                    case ...5:
                        Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 24.0))
                            .frame(width: 330, height: 120, alignment: .topTrailing)
                            .position(x: 228, y: 116)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))

                    case 6...10:
                        Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 23.0))
                            .frame(width: 330, height: 120, alignment: .topTrailing)
                            .position(x: 230, y: 116)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))

                    case 11...15:
                        Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 21.0))
                            .frame(width: 330, height: 120, alignment: .topTrailing)
                            .position(x: 240, y: 118)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 16...:
                        Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 20.0))
                            .frame(width: 330, height: 120, alignment: .topTrailing)
                            .position(x: 248, y: 116)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))
                        
                    default:
                        Text("Error #F-Size M06-1-2")
                    }
                    
                    // Date 2
                    Text(ddaySymbolMenu[safe: 1]?.ddayDate ?? "2023.12.28")
                        .font(.custom("Inter-ExtraBold", size: 13.0))
                        .frame(width: 40, height: 50, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .position(x: 411, y: 169)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))
                    
                    // DayNumber 2
                    ZStack {
//                        switch CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")).count {
                        switch 4 {
                        case ...4:
//                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")))")
                            Text("+954")
                                .font(.custom("Inter-ExtraBold", size: 107.0))
                                .frame(width: 380, height: 49, alignment: .topLeading)
                                .position(x: 248, y: 26)
                                .kerning(-8)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayBgColor ?? "ddayWhite"))
                            
                        case 5:
//                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")))")
                            Text("+9504")
                                .font(.custom("Inter-ExtraBold", size: 88.0))
                                .frame(width: 380, height: 49, alignment: .topLeading)
                                .position(x: 252, y: 44)
                                .kerning(-7)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayBgColor ?? "ddayWhite"))
                            
                        case 6...:
//                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false")))")
                            Text("+95004")
                                .font(.custom("Inter-ExtraBold", size: 73.0))
                                .frame(width: 380, height: 49, alignment: .topLeading)
                                .position(x: 253, y: 59)
                                .kerning(-6)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayBgColor ?? "ddayWhite"))
                            
                        default:
                            Text("Error #F-Count M06-1-2")
                        }
                        
                    }
                    .frame(width: 340, height: 105, alignment: .bottomLeading)
                    .background(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))
                    
                }
                .position(x: 100, y: 100)
                .frame(width: 400, height: 200)
                .background(Color(hex: ddaySymbolMenu[safe: 1]?.ddayBgColor ?? "ddayWhite"))
                .clipped()
            }

            
            
            HStack(alignment: .top, spacing: 0) {
                
                // 3
                ZStack(alignment: .top) {
                    
                    // Title 3
                    switch (ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue()).count {
                    case ...5:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 24.0))
                            .frame(width: 330, height: 120, alignment: .bottomLeading)
                            .position(x: 170, y: 86)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))

                    case 6...10:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 23.0))
                            .frame(width: 330, height: 120, alignment: .bottomLeading)
                            .position(x: 162, y: 87)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))

                    case 11...15:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 21.0))
                            .frame(width: 330, height: 120, alignment: .bottomLeading)
                            .position(x: 156, y: 84)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))
                        
                    case 16...:
                        Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 20.0))
                            .frame(width: 330, height: 120, alignment: .bottomLeading)
                            .position(x: 150, y: 86)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))
                        
                    default:
                        Text("Error #F-Size M06-1-3")
                    }
                    
                    // Date 3
                    Text(ddaySymbolMenu[safe: 2]?.ddayDate ?? "2023.12.28")
                        .font(.custom("Inter-ExtraBold", size: 13.0))
                        .multilineTextAlignment(.leading)
                        .frame(width: 40, height: 50, alignment: .topLeading)
                        .position(x: -8, y: 53)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))
                    
                    // DayNumber 3
                    ZStack {
//                        switch CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")).count {
                        switch 4 {
                        case ...4:
//                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")))")
                            Text("+954")
                                .font(.custom("Inter-ExtraBold", size: 107.0))
                                .frame(width: 380, height: 49, alignment: .topLeading)
                                .position(x: 178, y: 26)
                                .kerning(-8)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayBgColor ?? "ddayWhite"))
                            
                        case 5:
//                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")))")
                            Text("+9504")
                                .font(.custom("Inter-ExtraBold", size: 88.0))
                                .frame(width: 380, height: 49, alignment: .topLeading)
                                .position(x: 181, y: 44)
                                .kerning(-7)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayBgColor ?? "ddayWhite"))
                            
                        case 6...:
//                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false")))")
                            Text("+95004")
                                .font(.custom("Inter-ExtraBold", size: 73.0))
                                .frame(width: 380, height: 49, alignment: .topLeading)
                                .position(x: 182, y: 59)
                                .kerning(-6)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 1]?.ddayBgColor ?? "ddayWhite"))
                            
                        default:
                            Text("Error #F-Count M06-1-3")
                        }
                        
                    }
                    .frame(width: 340, height: 105, alignment: .bottomLeading)
                    .background(Color(hex: ddaySymbolMenu[safe: 1]?.ddayTxtColor ?? "ddayBlack"))
                }
                .position(x: 300, y: 100)
                .frame(width: 400, height: 200)
                .background(Color(hex: ddaySymbolMenu[safe: 1]?.ddayBgColor ?? "ddayWhite"))
                
                
                
                // 4
                ZStack(alignment: .top) {
                    
                    // Title 4
                    switch (ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue()).count {
                    case ...5:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 24.0))
                            .frame(width: 330, height: 120, alignment: .bottomTrailing)
                            .position(x: 228, y: 86)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))

                    case 6...10:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 23.0))
                            .frame(width: 330, height: 120, alignment: .bottomTrailing)
                            .position(x: 230, y: 87)  // 172 > 162 (10) / 121 > 116 (5)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))

                    case 11...15:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 21.0))
                            .frame(width: 330, height: 120, alignment: .bottomTrailing)
                            .position(x: 240, y: 84) // 168 > 156 (12) / 122 > 118 (4)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    case 16...:
                        Text(ddaySymbolMenu[safe: 3]?.ddayTitle ?? localizedKey.stringValue())
                            .font(.custom("Inter-Bold", size: 20.0))
                            .frame(width: 330, height: 120, alignment: .bottomTrailing)
                            .position(x: 248, y: 86) // 166 > 150 (16) / 122 > 116 (6)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    default:
                        Text("Error #F-Size M06-1-4")
                    }
                    
                    
                    // Date 4
                    Text(ddaySymbolMenu[safe: 3]?.ddayDate ?? "2023.12.28")
                        .font(.custom("Inter-ExtraBold", size: 13.0))
                        .frame(width: 40, height: 50, alignment: .topTrailing)
                        .multilineTextAlignment(.trailing)
                        .position(x: 411, y: 53)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                    
                    
                    // DayNumber 4
                    ZStack {
//                        switch CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 3]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 3]?.ddayIsCountdown ?? "false")).count {
                        switch 4 {
                        case ...4:
//                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 3]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 3]?.ddayIsCountdown ?? "false")))")
                            Text("+954")
                                .font(.custom("Inter-ExtraBold", size: 107.0))
                                .frame(width: 380, height: 49, alignment: .topTrailing)
                                .position(x: 147, y: 26)
                                .kerning(-8)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                            
                        case 5:
//                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 3]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 3]?.ddayIsCountdown ?? "false")))")
                            Text("+9504")
                                .font(.custom("Inter-ExtraBold", size: 88.0))
                                .frame(width: 380, height: 49, alignment: .topTrailing)
                                .position(x: 148, y: 44)
                                .kerning(-7)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                            
                        case 6...:
//                            Text("\(CustomFunctions().makeSignedDateNumber(dateIntParam: CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 3]?.ddayDate ??  "2023.10.16"), isTodayCounted: ddaySymbolMenu[safe: 3]?.ddayIsCountdown ?? "false")))")
                            Text("+95004")
                                .font(.custom("Inter-ExtraBold", size: 73.0))
                                .frame(width: 380, height: 49, alignment: .topTrailing)
                                .position(x: 148, y: 59)
                                .kerning(-6)
                                .clipped()
                                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                            
                        default:
                            Text("Error #F-Count M06-1-4")
                        }
                    }
                    .frame(width: 340, height: 105, alignment: .bottomTrailing)
                    .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                }
                .position(x: 100, y: 100)
                .frame(width: 400, height: 200)
                .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                .clipped()
            }
        }
    }
}
