//
//  WidgetView_Multi03_L_Comp01(321x324).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2023/04/09.
//

import SwiftUI

struct WidgetView_Multi03_L_Comp01_321x324_: View { // disable shadow
    
    var entry: Provider.Entry
    
    var ddaySymbolMenu: [DdaySymbol]
    
    var body: some View {
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        
        
        // 1
        
        let isTodayCounted: String = ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false"
        let dateInt: Int = CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2023.12.16"), isTodayCounted: isTodayCounted)
        let ddayDorPlus: String = CustomFunctions().ddaySetNoneOrPlus(dateIntParam: dateInt)
        let _formattedDateInt: String = CustomFunctions().dateIntSign00(dateIntParam: dateInt)
        
        var txtStringArr: [String] = []
        let _dateCountArr: [Int] = [_formattedDateInt.count]
        
        let _: [String] = _dateCountArr.map { index in
            for n in 0..<index {
                let lastIndex = _formattedDateInt.index(_formattedDateInt.startIndex, offsetBy: n)
                txtStringArr.append(String(_formattedDateInt[lastIndex]))
            }
            return ""
        }
        
        ZStack {
            // title 1
            switch (ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue()).count {
                
            case 0...2:
                Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 18.0))
                    .frame(width: 70, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 220, trailing: 3))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
            case 3...4:
                Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 18.0))
                    .frame(width: 70, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 220, trailing: 3))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
            case 5:
                Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 15.0))
                    .frame(width: 70, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 220, trailing: 3))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
            case 6...10:
                Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 14.0))
                    .frame(width: 70, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 220, trailing: 3))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
            case 11...14:
                Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 12.0))
                    .frame(width: 70, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 220, trailing: 3))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
            case 15...:
                Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 11.0))
                    .frame(width: 70, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 220, trailing: 3))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
            default:
                Text("Default E MulLar01-1-0")
                
            }
            
            // date 1
            Text(ddaySymbolMenu[safe: 0]?.ddayDate ?? "2019.03.30")
                .font(.custom("Inter-Bold", size: 10.0))
                .rotationEffect(.degrees(-90))
                .frame(width: 70, height: 50, alignment: .topLeading)
                .padding(EdgeInsets(top: 270, leading: 0, bottom: 0, trailing: 33))
                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
            
            // day number 1
            switch txtStringArr.count {
            case 0...3:
                    switch _formattedDateInt {
                    case "0":
                        Text("D")
                            .font(.custom("Inter-Bold", size: 85.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .position(x: 67, y: 117)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                        Text("d")
                            .font(.custom("Inter-Bold", size: 85.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .position(x: 67, y: 179)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                        Text("a")
                            .font(.custom("Inter-Bold", size: 85.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .position(x: 67, y: 227)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                        Text("y")
                            .font(.custom("Inter-Bold", size: 85.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .position(x: 67, y: 275)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                    default:
                        Text("D")
                            .font(.custom("Inter-Bold", size: 85.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .position(x: 67, y: 117)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                        Text("\(ddayDorPlus)")
                            .font(.custom("Inter-ExtraBold", size: 50.0))
                            .frame(width: 75, height: 20, alignment: .top)
                            .position(x: 35, y: 178)
                            .kerning(-6)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                        Text("\(txtStringArr[safe: 0] ?? "")")
                            .font(.custom("Inter-Bold", size: 85.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .position(x: 67, y: 178)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                        Text("\(txtStringArr[safe: 1] ?? "")")
                            .font(.custom("Inter-Bold", size: 85.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .position(x: 67, y: 235)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                        Text("\(txtStringArr[safe: 2] ?? "")")
                            .font(.custom("Inter-Bold", size: 85.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .position(x: 67, y: 292)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                        
                    }
                
            default:
                Text("D")
                    .font(.custom("Inter-Bold", size: 70.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .position(x: 71, y: 110)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                Text("\(ddayDorPlus)")
                    .font(.custom("Inter-ExtraBold", size: 40.0))
                    .frame(width: 75, height: 20, alignment: .top)
                    .position(x: 45, y: 162)
                    .kerning(-6)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                Text("\(txtStringArr[safe: 0] ?? "9")")
                    .font(.custom("Inter-Bold", size: 70.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .position(x: 71, y: 159)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                Text("\(txtStringArr[safe: 1] ?? "9")")
                    .font(.custom("Inter-Bold", size: 70.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .position(x: 71, y: 208)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                Text("\(txtStringArr[safe: 2] ?? "9")")
                    .font(.custom("Inter-Bold", size: 70.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .position(x: 71, y: 257)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                Text("\(txtStringArr[safe: 3] ?? "9")")
                    .font(.custom("Inter-Bold", size: 70.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .position(x: 71, y: 306)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
            }
        }
        .frame(width: 77, height: 400)
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
        .clipped()
        
        
        // 2
        
        let isTodayCounted2: String = ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false"
        let dateInt2: Int = CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2024.02.10"), isTodayCounted: isTodayCounted2)
        let ddayDorPlus2: String = CustomFunctions().ddaySetNoneOrPlus(dateIntParam: dateInt2)
        let _formattedDateInt2: String = CustomFunctions().dateIntSign00(dateIntParam: dateInt2)
        
        var txtStringArr2: [String] = []
        let _dateCountArr2: [Int] = [_formattedDateInt2.count]
        
        let _: [String] = _dateCountArr2.map { index in
            for n in 0..<index {
                let lastIndex = _formattedDateInt2.index(_formattedDateInt2.startIndex, offsetBy: n)
                txtStringArr2.append(String(_formattedDateInt2[lastIndex]))
            }
            return ""
        }
        
        ZStack {
            // title 2
            switch (ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue()).count {
                
            case 0...2:
                Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 18.0))
                    .frame(width: 70, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 220, trailing: 3))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
            case 3...4:
                Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 18.0))
                    .frame(width: 70, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 220, trailing: 3))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
            case 5:
                Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 15.0))
                    .frame(width: 70, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 220, trailing: 3))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
            case 6...10:
                Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 14.0))
                    .frame(width: 70, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 220, trailing: 3))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
            case 11...14:
                Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 12.0))
                    .frame(width: 70, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 220, trailing: 3))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
            case 15...:
                Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 11.0))
                    .frame(width: 70, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 220, trailing: 3))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
            default:
                Text("Default E MulLar01-1-1")
                
            }
            
            // date 2
            Text(ddaySymbolMenu[safe: 1]?.ddayDate ?? "2019.03.30")
                .font(.custom("Inter-Bold", size: 10.0))
                .rotationEffect(.degrees(-90))
                .frame(width: 70, height: 50, alignment: .topLeading)
                .padding(EdgeInsets(top: 270, leading: 0, bottom: 0, trailing: 33))
                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
            
            // day number 2
            switch txtStringArr2.count {
            case 0...3:
                    switch _formattedDateInt2 {
                    case "0":
                        Text("D")
                            .font(.custom("Inter-Bold", size: 85.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .position(x: 67, y: 117)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                        Text("d")
                            .font(.custom("Inter-Bold", size: 85.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .position(x: 67, y: 179)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                        Text("a")
                            .font(.custom("Inter-Bold", size: 85.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .position(x: 67, y: 227)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                        Text("y")
                            .font(.custom("Inter-Bold", size: 85.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .position(x: 67, y: 275)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    default:
                        Text("D")
                            .font(.custom("Inter-Bold", size: 85.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .position(x: 67, y: 117)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                        Text("\(ddayDorPlus2)")
                            .font(.custom("Inter-ExtraBold", size: 50.0))
                            .frame(width: 75, height: 20, alignment: .top)
                            .position(x: 35, y: 178)
                            .kerning(-6)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                        Text("\(txtStringArr2[safe: 0] ?? "")")
                            .font(.custom("Inter-Bold", size: 85.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .position(x: 67, y: 178)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                        Text("\(txtStringArr2[safe: 1] ?? "")")
                            .font(.custom("Inter-Bold", size: 85.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .position(x: 67, y: 235)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                        Text("\(txtStringArr2[safe: 2] ?? "")")
                            .font(.custom("Inter-Bold", size: 85.0))
                            .frame(width: 55, height: 20, alignment: .top)
                            .position(x: 67, y: 292)
                            .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                        
                    }
                
            default:
                Text("D")
                    .font(.custom("Inter-Bold", size: 70.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .position(x: 71, y: 110)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
                Text("\(ddayDorPlus2)")
                    .font(.custom("Inter-ExtraBold", size: 40.0))
                    .frame(width: 75, height: 20, alignment: .top)
                    .position(x: 45, y: 162)
                    .kerning(-6)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
                Text("\(txtStringArr2[safe: 0] ?? "9")")
                    .font(.custom("Inter-Bold", size: 70.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .position(x: 71, y: 159)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
                Text("\(txtStringArr2[safe: 1] ?? "9")")
                    .font(.custom("Inter-Bold", size: 70.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .position(x: 71, y: 208)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
                Text("\(txtStringArr2[safe: 2] ?? "9")")
                    .font(.custom("Inter-Bold", size: 70.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .position(x: 71, y: 257)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
                Text("\(txtStringArr2[safe: 3] ?? "9")")
                    .font(.custom("Inter-Bold", size: 70.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .position(x: 71, y: 306)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
            }
        }
        .frame(width: 77, height: 400)
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
        .clipped()
        
        
        // 3
        
        let isTodayCounted3: String = ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false"
        let dateInt3: Int = CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2024.02.10"), isTodayCounted: isTodayCounted3)
        let ddayDorPlus3: String = CustomFunctions().ddaySetNoneOrPlus(dateIntParam: dateInt3)
        let _formattedDateInt3: String = CustomFunctions().dateIntSign00(dateIntParam: dateInt3)
        
        var txtStringArr3: [String] = []
        let _dateCountArr3: [Int] = [_formattedDateInt3.count]
        
        let _: [String] = _dateCountArr3.map { index in
            for n in 0..<index {
                let lastIndex = _formattedDateInt3.index(_formattedDateInt3.startIndex, offsetBy: n)
                txtStringArr3.append(String(_formattedDateInt3[lastIndex]))
            }
            return ""
        }
        
        ZStack {
            // Title 3
            switch (ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue()).count {
                
            case 0...2:
                Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 18.0))
                    .frame(width: 70, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 220, trailing: 3))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
            case 3...4:
                Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 18.0))
                    .frame(width: 70, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 220, trailing: 3))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
            case 5:
                Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 15.0))
                    .frame(width: 70, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 220, trailing: 3))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
            case 6...10:
                Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 14.0))
                    .frame(width: 70, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 220, trailing: 3))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
            case 11...14:
                Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 12.0))
                    .frame(width: 70, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 220, trailing: 3))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
            case 15...:
                Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                    .font(.custom("Inter-Bold", size: 11.0))
                    .frame(width: 70, height: 55, alignment: .topTrailing)
                    .multilineTextAlignment(.trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 220, trailing: 3))
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
            default:
                Text("Default E MulLar01-1-0")
                
            }
            
            // Date 3
            Text(ddaySymbolMenu[safe: 2]?.ddayDate ?? "2019.03.30")
                .font(.custom("Inter-Bold", size: 10.0))
                .rotationEffect(.degrees(-90))
                .frame(width: 70, height: 50, alignment: .topLeading)
                .padding(EdgeInsets(top: 270, leading: 0, bottom: 0, trailing: 33))
                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
            
            switch txtStringArr3.count {
            case 0...3:
                switch _formattedDateInt3 {
                case "0":
                    Text("D")
                        .font(.custom("Inter-Bold", size: 85.0))
                        .frame(width: 55, height: 20, alignment: .top)
                        .position(x: 67, y: 117)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                    Text("d")
                        .font(.custom("Inter-Bold", size: 85.0))
                        .frame(width: 55, height: 20, alignment: .top)
                        .position(x: 67, y: 179)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                    Text("a")
                        .font(.custom("Inter-Bold", size: 85.0))
                        .frame(width: 55, height: 20, alignment: .top)
                        .position(x: 67, y: 227)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                    Text("y")
                        .font(.custom("Inter-Bold", size: 85.0))
                        .frame(width: 55, height: 20, alignment: .top)
                        .position(x: 67, y: 275)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                default:
                    Text("D")
                        .font(.custom("Inter-Bold", size: 85.0))
                        .frame(width: 55, height: 20, alignment: .top)
                        .position(x: 67, y: 117)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                    Text("\(ddayDorPlus3)")
                        .font(.custom("Inter-ExtraBold", size: 50.0))
                        .frame(width: 75, height: 20, alignment: .top)
                        .position(x: 35, y: 178)
                        .kerning(-6)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                    Text("\(txtStringArr3[safe: 0] ?? "")")
                        .font(.custom("Inter-Bold", size: 85.0))
                        .frame(width: 55, height: 20, alignment: .top)
                        .position(x: 67, y: 178)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                    Text("\(txtStringArr3[safe: 1] ?? "")")
                        .font(.custom("Inter-Bold", size: 85.0))
                        .frame(width: 55, height: 20, alignment: .top)
                        .position(x: 67, y: 235)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                    Text("\(txtStringArr3[safe: 2] ?? "")")
                        .font(.custom("Inter-Bold", size: 85.0))
                        .frame(width: 55, height: 20, alignment: .top)
                        .position(x: 67, y: 292)
                        .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                    
                }
                
            default:
                Text("D")
                    .font(.custom("Inter-Bold", size: 70.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .position(x: 71, y: 110)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                Text("\(ddayDorPlus3)")
                    .font(.custom("Inter-ExtraBold", size: 40.0))
                    .frame(width: 75, height: 20, alignment: .top)
                    .position(x: 45, y: 162)
                    .kerning(-6)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                Text("\(txtStringArr3[safe: 0] ?? "9")")
                    .font(.custom("Inter-Bold", size: 70.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .position(x: 71, y: 159)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                Text("\(txtStringArr3[safe: 1] ?? "9")")
                    .font(.custom("Inter-Bold", size: 70.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .position(x: 71, y: 208)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                Text("\(txtStringArr3[safe: 2] ?? "9")")
                    .font(.custom("Inter-Bold", size: 70.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .position(x: 71, y: 257)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                Text("\(txtStringArr3[safe: 3] ?? "9")")
                    .font(.custom("Inter-Bold", size: 70.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .position(x: 71, y: 306)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
            }
        }
        .frame(width: 77, height: 400)
        
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
        .clipped()
    }
}
