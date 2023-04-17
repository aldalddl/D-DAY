//
//  WidgetView_Multi03_L_Comp02(329x345).swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2023/04/09.
//

import SwiftUI

struct WidgetView_Multi03_L_Comp02_329x345_: View { // enable shadow
    
    var entry: Provider.Entry
    
    var ddaySymbolMenu: [DdaySymbol]
    
    var body: some View {
        
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        
        
        // 1
        
        let isTodayCounted: String = ddaySymbolMenu[safe: 0]?.ddayIsCountdown ?? "false"
        let dateInt: Int = CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 0]?.ddayDate ??  "2023.12.16"), isTodayCounted: isTodayCounted)
        let ddayDorPlus: String = CustomFunctions().ddaySetNoneOrPlus(dateIntParam: dateInt)
        let _formattedDateInt: String = CustomFunctions().dateIntSign(dateIntParam: dateInt)
        
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
            Text(ddaySymbolMenu[safe: 0]?.ddayTitle ?? localizedKey.stringValue())
                .font(.custom("Inter-Bold", size: 11.0))
                .frame(width: 70, height: 55, alignment: .topTrailing)
                .multilineTextAlignment(.trailing)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 243, trailing: 3))
                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
            
            // date 1
            Text(ddaySymbolMenu[safe: 0]?.ddayDate ?? "2019.03.30")
                .font(.custom("Inter-Bold", size: 11.0))
                .rotationEffect(.degrees(-90))
                .frame(width: 70, height: 50, alignment: .topLeading)
                .padding(EdgeInsets(top: 270, leading: 0, bottom: 0, trailing: 40))
                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
            
            // day number 1
            switch txtStringArr.count {
            case 0...3:
                Text("D")
                    .font(.custom("Inter-Bold", size: 90.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 67, y: 105)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                Text("\(ddayDorPlus)")
                    .font(.custom("Inter-ExtraBold", size: 50.0))
                    .frame(width: 75, height: 20, alignment: .top)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 35, y: 169)
                    .kerning(-6)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                Text("\(txtStringArr[safe: 0] ?? "")")
                    .font(.custom("Inter-Bold", size: 90.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 67, y: 169)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                Text("\(txtStringArr[safe: 1] ?? "")")
                    .font(.custom("Inter-Bold", size: 90.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 67, y: 233)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                Text("\(txtStringArr[safe: 2] ?? "")")
                    .font(.custom("Inter-Bold", size: 90.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 67, y: 297)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
            default:
                Text("D")
                    .font(.custom("Inter-Bold", size: 77.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 73, y: 99)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                Text("\(ddayDorPlus)")
                    .font(.custom("Inter-ExtraBold", size: 45.0))
                    .frame(width: 75, height: 20, alignment: .top)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 43, y: 154)
                    .kerning(-6)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                Text("\(txtStringArr[safe: 0] ?? "9")")
                    .font(.custom("Inter-Bold", size: 77.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 73, y: 154)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                Text("\(txtStringArr[safe: 1] ?? "9")")
                    .font(.custom("Inter-Bold", size: 77.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 73, y: 206)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                Text("\(txtStringArr[safe: 2] ?? "9")")
                    .font(.custom("Inter-Bold", size: 77.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 73, y: 258)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                Text("\(txtStringArr[safe: 3] ?? "9")")
                    .font(.custom("Inter-Bold", size: 77.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 73, y: 310)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
            }
        }
        .frame(width: 75, height: 400)
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
        .clipped()
        
        
        // 2
        
        let isTodayCounted2: String = ddaySymbolMenu[safe: 1]?.ddayIsCountdown ?? "false"
        let dateInt2: Int = CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 1]?.ddayDate ??  "2024.02.10"), isTodayCounted: isTodayCounted2)
        let ddayDorPlus2: String = CustomFunctions().ddaySetNoneOrPlus(dateIntParam: dateInt2)
        let _formattedDateInt2: String = CustomFunctions().dateIntSign(dateIntParam: dateInt2)
        
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
            Text(ddaySymbolMenu[safe: 1]?.ddayTitle ?? localizedKey.stringValue())
                .font(.custom("Inter-Bold", size: 11.0))
                .frame(width: 70, height: 55, alignment: .topTrailing)
                .multilineTextAlignment(.trailing)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 243, trailing: 3))
                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
            
            // date 2
            Text(ddaySymbolMenu[safe: 1]?.ddayDate ?? "2019.03.30")
                .font(.custom("Inter-Bold", size: 11.0))
                .rotationEffect(.degrees(-90))
                .frame(width: 70, height: 50, alignment: .topLeading)
                .padding(EdgeInsets(top: 270, leading: 0, bottom: 0, trailing: 40))
                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
            
            // day number 2
            switch txtStringArr2.count {
            case 0...3:
                Text("D")
                    .font(.custom("Inter-Bold", size: 90.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 67, y: 105)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
                Text("\(ddayDorPlus2)")
                    .font(.custom("Inter-ExtraBold", size: 50.0))
                    .frame(width: 75, height: 20, alignment: .top)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 35, y: 169)
                    .kerning(-6)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
                Text("\(txtStringArr2[safe: 0] ?? "")")
                    .font(.custom("Inter-Bold", size: 90.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 67, y: 169)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
                Text("\(txtStringArr2[safe: 1] ?? "")")
                    .font(.custom("Inter-Bold", size: 90.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 67, y: 233)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
                Text("\(txtStringArr2[safe: 2] ?? "")")
                    .font(.custom("Inter-Bold", size: 90.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 67, y: 297)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
            default:
                Text("D")
                        .font(.custom("Inter-Bold", size: 77.0))
                        .frame(width: 55, height: 20, alignment: .top)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .position(x: 73, y: 99)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
                Text("\(ddayDorPlus2)")
                    .font(.custom("Inter-ExtraBold", size: 45.0))
                    .frame(width: 75, height: 20, alignment: .top)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 43, y: 154)
                    .kerning(-6)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
                Text("\(txtStringArr2[safe: 0] ?? "9")")
                        .font(.custom("Inter-Bold", size: 77.0))
                        .frame(width: 55, height: 20, alignment: .top)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .position(x: 73, y: 154)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
                Text("\(txtStringArr2[safe: 1] ?? "9")")
                        .font(.custom("Inter-Bold", size: 77.0))
                        .frame(width: 55, height: 20, alignment: .top)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .position(x: 73, y: 206)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
                Text("\(txtStringArr2[safe: 2] ?? "9")")
                        .font(.custom("Inter-Bold", size: 77.0))
                        .frame(width: 55, height: 20, alignment: .top)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .position(x: 73, y: 258)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
                
                Text("\(txtStringArr2[safe: 3] ?? "9")")
                        .font(.custom("Inter-Bold", size: 77.0))
                        .frame(width: 55, height: 20, alignment: .top)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .position(x: 73, y: 310)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
            }
        }
        .frame(width: 75, height: 400)
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
        .clipped()
        
        
        // 3
        
        let isTodayCounted3: String = ddaySymbolMenu[safe: 2]?.ddayIsCountdown ?? "false"
        let dateInt3: Int = CustomFunctions().calculateDday(ddayRecievedDate: (ddaySymbolMenu[safe: 2]?.ddayDate ??  "2024.02.10"), isTodayCounted: isTodayCounted3)
        let ddayDorPlus3: String = CustomFunctions().ddaySetNoneOrPlus(dateIntParam: dateInt3)
        let _formattedDateInt3: String = CustomFunctions().dateIntSign(dateIntParam: dateInt3)
        
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
            Text(ddaySymbolMenu[safe: 2]?.ddayTitle ?? localizedKey.stringValue())
                .font(.custom("Inter-Bold", size: 11.0))
                .frame(width: 70, height: 55, alignment: .topTrailing)
                .multilineTextAlignment(.trailing)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 243, trailing: 3))
                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
            
            Text(ddaySymbolMenu[safe: 2]?.ddayDate ?? "2019.03.30")
                .font(.custom("Inter-Bold", size: 11.0))
                .rotationEffect(.degrees(-90))
                .frame(width: 70, height: 50, alignment: .topLeading)
                .padding(EdgeInsets(top: 270, leading: 0, bottom: 0, trailing: 40))
                .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
            
            switch txtStringArr3.count {
            case 0...3:
                Text("D")
                    .font(.custom("Inter-Bold", size: 90.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 67, y: 105)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                Text("\(ddayDorPlus3)")
                    .font(.custom("Inter-ExtraBold", size: 50.0))
                    .frame(width: 75, height: 20, alignment: .top)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 35, y: 169)
                    .kerning(-6)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                Text("\(txtStringArr3[safe: 0] ?? "")")
                    .font(.custom("Inter-Bold", size: 90.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 67, y: 169)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                Text("\(txtStringArr3[safe: 1] ?? "")")
                    .font(.custom("Inter-Bold", size: 90.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 67, y: 233)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                Text("\(txtStringArr3[safe: 2] ?? "")")
                    .font(.custom("Inter-Bold", size: 90.0))
                    .frame(width: 55, height: 20, alignment: .top)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 67, y: 297)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
            default:
                Text("D")
                        .font(.custom("Inter-Bold", size: 77.0))
                        .frame(width: 55, height: 20, alignment: .top)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .position(x: 73, y: 99)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                Text("\(ddayDorPlus3)")
                    .font(.custom("Inter-ExtraBold", size: 45.0))
                    .frame(width: 75, height: 20, alignment: .top)
                    .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                    .position(x: 43, y: 154)
                    .kerning(-6)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                Text("\(txtStringArr3[safe: 0] ?? "9")")
                        .font(.custom("Inter-Bold", size: 77.0))
                        .frame(width: 55, height: 20, alignment: .top)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .position(x: 73, y: 154)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                Text("\(txtStringArr3[safe: 1] ?? "9")")
                        .font(.custom("Inter-Bold", size: 77.0))
                        .frame(width: 55, height: 20, alignment: .top)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .position(x: 73, y: 206)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                Text("\(txtStringArr3[safe: 2] ?? "9")")
                        .font(.custom("Inter-Bold", size: 77.0))
                        .frame(width: 55, height: 20, alignment: .top)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .position(x: 73, y: 258)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
                
                Text("\(txtStringArr3[safe: 3] ?? "9")")
                        .font(.custom("Inter-Bold", size: 77.0))
                        .frame(width: 55, height: 20, alignment: .top)
                        .shadow(color: Color("ddayBlack").opacity(0.3), radius: 2.2, x: 0.6, y: 4)
                        .position(x: 73, y: 310)
                    .foregroundColor(Color(hex: ddaySymbolMenu[safe: 0]?.ddayBgColor ?? "ddayBlack"))
            }
        }
        .frame(width: 75, height: 400)
        .background(Color(hex: ddaySymbolMenu[safe: 0]?.ddayTxtColor ?? "ddayWhite"))
        .clipped()
    }
}
