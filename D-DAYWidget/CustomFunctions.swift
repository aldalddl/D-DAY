//
//  CustomFunctions.swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2023/03/14.
//

import SwiftUI

/****
 Custom Functions
 1. calculateDday (ddayRecievedDate: String) -> Int
 2. ddaySetNoneOrPlus (dateIntParam: Int) -> String
 3. ddaySetDorPlus (dateIntParam: Int) -> String
 4. dateIntSign (dateIntParam: Int) -> String
 5. makeSignedDateNumber (dateIntParam: Int) -> String
*/
struct CustomFunctions {
    func calculateDday(ddayRecievedDate: String, isTodayCounted: String) -> Int {
        // D-day 날짜 계산
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy.MM.dd"
        
        let formattedTargetDate = dateFormatter.date(from: ddayRecievedDate)!
        
        // 현재시간 (formattedCurrentDate)
        let currentDateString = dateFormatter.string(from: Date())
        let formattedCurrentDate = dateFormatter.date(from: currentDateString)!
        
        let timeInterval = Calendar.current.dateComponents([.day], from: formattedTargetDate, to: formattedCurrentDate)
        
        return isTodayCounted.bool ?? false ? (timeInterval.day! + 1) : timeInterval.day!
    }
    
    func ddaySetNoneOrPlus(dateIntParam: Int) -> String {
        if dateIntParam < 0 {
            return ""
        } else {
            return "+"
        }
    }
    
    func ddaySetDorPlus(dateIntParam: Int) -> String {
        if dateIntParam <= 0 {
            return "D"
        } else {
            return "+"
        }
    }
    
    func dateIntSign00(dateIntParam: Int) -> String {
        if dateIntParam < 0 {
            return String(format: "%d", (-1) * dateIntParam)
        } else {
            return String(format: "%d", dateIntParam)
        }
    }
    
    func dateIntSign(dateIntParam: Int) -> String {
        if dateIntParam < 0 {
            return String(format: "%02d", (-1) * dateIntParam)
        } else {
            return String(format: "%02d", dateIntParam)
        }
    }
    
    func dateIntSign3(dateIntParam: Int) -> String {
        if dateIntParam < 0 {
            return String(format: "%03d", (-1) * dateIntParam)
        } else {
            return String(format: "%03d", dateIntParam)
        }
    }
    
    func makeSignedDateNumber(dateIntParam: Int) -> String {
        if dateIntParam >= 0 {
            return "+\(dateIntParam)"
        } else {
            return "\(dateIntParam)"
        }
    }
}


/****
 Extensions
 1 . Color
 2.  Array
 3. String
*/
extension Color {
    init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(
        red: CGFloat(red) / 255.0,
        green: CGFloat(green) / 255.0,
        blue: CGFloat(blue) / 255.0
       )
   }
    
    init(hex: Int) {
       self.init(
           red: (hex >> 16) & 0xFF,
           green: (hex >> 8) & 0xFF,
           blue: hex & 0xFF
       )
    }
    
    init(hex: String) {
        var normalizedHexColor = hex
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .uppercased()

        if normalizedHexColor.hasPrefix("#") {
            normalizedHexColor = String(normalizedHexColor.dropFirst())
            
            // Convert to hexadecimal color (string) to integer
            var hex: UInt64 = 0
            Scanner(string: normalizedHexColor).scanHexInt64(&hex)
            
            self.init(
                hex: Int(hex)
            )
        } else {
            self.init(hex)
        }
    }
}

extension Array {
    subscript (safe index: Int) -> Element? {
        // iOS 9 or later
        return indices ~= index ? self[index] : nil
        // iOS 8 or earlier
        // return startIndex <= index && index < endIndex ? self[index] : nil
        // return 0 <= index && index < self.count ? self[index] : nil
    }
}

extension String {
    var bool: Bool? {
        switch self.lowercased() {
        case "true":
            return true
        case "false":
            return false
        default:
            return nil
        }
    }
}

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}




/****
 Widget Configurations
 1. DefaultArrForWidget_SS01
 2. DefaultArrForWidget_SM01
 3. DefaultArrForWidget_SM02
 4. DefaultArrForWidget_SL01
 5. DefaultArrForWidget_MM01
 6. DefaultArrForWidget_MM03
 7. DefaultArrForWidget_M03
 8. DefaultArrForWidget_M04
 9. DefaultArrForWidget_M05
 10. DefaultArrForWidget_M06
 11. DefaultArrForWidget_M07
 12. DefaultArrForWidget_M08
*/


struct DefaultArrForWidget_SS01 {
    
    func getDaySymbolMenu(entry: Provider.Entry) -> [DdaySymbol] {
        
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        
        let defaultDdaySymbolMenu: [DdaySymbol] = [0].map { index in
            let symbolDdayItem = DdaySymbol (identifier: "identifier", display: "diaplay")
            symbolDdayItem.ddayTitle = localizedKey.stringValue()
            symbolDdayItem.ddayDate = "2025.12.25"
            symbolDdayItem.ddayBgColor = "ddayBlack"
            symbolDdayItem.ddayTxtColor = "ddayWhite"
            symbolDdayItem.ddayIsCountdown = "false"

            return symbolDdayItem
        }
            
        let ddaySymbolMenu: [DdaySymbol] = entry.configuration.ddaySymbol ?? defaultDdaySymbolMenu
        
        return ddaySymbolMenu
    }
}

struct DefaultArrForWidget_SM01 {
    
    func getDaySymbolMenu(entry: Provider.Entry) -> [DdaySymbol] {
        
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        
        let defaultDdaySymbolMenu: [DdaySymbol] = [0].map { index in
            let symbolDdayItem = DdaySymbol (identifier: "identifier", display: "diaplay")
            symbolDdayItem.ddayTitle = localizedKey.stringValue()
            symbolDdayItem.ddayDate = "2025.12.25"
            symbolDdayItem.ddayBgColor = "ddayWhite"
            symbolDdayItem.ddayTxtColor = "ddayBlack"
            symbolDdayItem.ddayIsCountdown = "false"

            return symbolDdayItem
        }
            
        let ddaySymbolMenu: [DdaySymbol] = entry.configuration.ddaySymbol ?? defaultDdaySymbolMenu
        
        return ddaySymbolMenu
    }
}

struct DefaultArrForWidget_SM02 {
    
    func getDaySymbolMenu(entry: Provider.Entry) -> [DdaySymbol] {
        
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        
        let defaultDdaySymbolMenu: [DdaySymbol] = [0].map { index in
            let symbolDdayItem = DdaySymbol (identifier: "identifier", display: "diaplay")
            symbolDdayItem.ddayTitle = localizedKey.stringValue()
            symbolDdayItem.ddayDate = "2026.12.25"
            symbolDdayItem.ddayBgColor = "ddayBlack"
            symbolDdayItem.ddayTxtColor = "ddayWhite"
            symbolDdayItem.ddayLanguage = "English"
            symbolDdayItem.ddayIsCountdown = "false"

            return symbolDdayItem
        }
            
        let ddaySymbolMenu: [DdaySymbol] = entry.configuration.ddaySymbol ?? defaultDdaySymbolMenu
        
        return ddaySymbolMenu
    }
}

struct DefaultArrForWidget_SL01 {
    
    func getDaySymbolMenu(entry: Provider.Entry) -> [DdaySymbol] {
        
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        
        let defaultDdaySymbolMenu: [DdaySymbol] = [0].map { index in
            let symbolDdayItem = DdaySymbol (identifier: "identifier", display: "diaplay")
            symbolDdayItem.ddayTitle = localizedKey.stringValue()
            symbolDdayItem.ddayDate = "2026.12.25"
            symbolDdayItem.ddayBgColor = "ddayWhite"
            symbolDdayItem.ddayTxtColor = "ddayBlack"
            symbolDdayItem.ddayIsCountdown = "false"

            return symbolDdayItem
        }
            
        let ddaySymbolMenu: [DdaySymbol] = entry.configuration.ddaySymbol ?? defaultDdaySymbolMenu
        
        return ddaySymbolMenu
    }
}

struct DefaultArrForWidget_MM01 {
    
    func getDaySymbolMenu(entry: Provider.Entry) -> [DdaySymbol] {
        
        // 0. Default Array for the variable 'defaultDdaySymbolMenu'
        let defaultStringArr: [[String]] = self.getDefaultStringArr()
        
        // 1. 위젯 초기(tableview list읽어온 데이터 없을시) 보여지는 default CustomSymbol array
        let defaultDdaySymbolMenu: [DdaySymbol] = defaultStringArr.map { sArray in
            let symbolDdayItem = DdaySymbol (identifier: "identifier", display: "diaplay")
            symbolDdayItem.ddayTitle = sArray[0]
            symbolDdayItem.ddayDate = sArray[1]
            symbolDdayItem.ddayBgColor = sArray[2]
            symbolDdayItem.ddayTxtColor = sArray[3]
            symbolDdayItem.ddayIsCountdown = sArray[4]
            
            return symbolDdayItem
        }
        
        // 2. 위젯 편집후 불러오는 CustomSymbol array
        let ddaySymbolMenu: [DdaySymbol] = entry.configuration.ddaySymbol ?? defaultDdaySymbolMenu
        
        return ddaySymbolMenu
    }
    
    func getDefaultStringArr() -> [[String]] {
        
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        
        let defaultStringArr: [[String]] = [
            // format: [ddayTitle, ddayDate, ddayBgColor, ddayTxtColor, ddayIsCountdown]
            [localizedKey.stringValue(), "2026.12.25", "ddayBlack", "ddayWhite", "false"],
            [localizedKey.stringValue(), "2026.04.05", "ddayWhite", "ddayBlack", "false"],
            [localizedKey.stringValue(), "2026.05.24", "ddayWhite", "ddayBlack", "false"],
            [localizedKey.stringValue(), "2026.04.02", "ddayBlack", "ddayWhite", "false"],
        ]
        
        return defaultStringArr
    }
}

struct DefaultArrForWidget_MM03 {
    
    func getDaySymbolMenu(entry: Provider.Entry) -> [DdaySymbol] {
        
        let defaultStringArr: [[String]] = self.getDefaultStringArr()
        
        let defaultDdaySymbolMenu: [DdaySymbol] = defaultStringArr.map { sArray in
            let symbolDdayItem = DdaySymbol (identifier: "identifier", display: "diaplay")
            symbolDdayItem.ddayTitle = sArray[0]
            symbolDdayItem.ddayDate = sArray[1]
            symbolDdayItem.ddayBgColor = sArray[2]
            symbolDdayItem.ddayTxtColor = sArray[3]
            symbolDdayItem.ddayIsCountdown = sArray[4]
            
            return symbolDdayItem
        }
        
        let ddaySymbolMenu: [DdaySymbol] = entry.configuration.ddaySymbol ?? defaultDdaySymbolMenu
        
        return ddaySymbolMenu
    }
    
    func getDefaultStringArr() -> [[String]] {
        
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        
        let defaultStringArr: [[String]] = [
            // format: [ddayTitle, ddayDate, ddayBgColor, ddayTxtColor, ddayIsCountdown]
            [localizedKey.stringValue(), "2026.12.25", "ddayWhite", "ddayBlack", "false"],
            [localizedKey.stringValue(), "2026.04.05", "ddayWhite", "ddayBlack", "false"],
            [localizedKey.stringValue(), "2026.05.24", "ddayWhite", "ddayBlack", "false"],
            [localizedKey.stringValue(), "2026.04.02", "ddayWhite", "ddayBlack", "false"],
        ]
        
        return defaultStringArr
    }
}

struct DefaultArrForWidget_M03 {
    
    func getDaySymbolMenu(entry: Provider.Entry) -> [DdaySymbol] {
        
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        
        let defaultStringArr: [[String]] = [
            // format: [ddayTitle, ddayDate, ddayBgColor, ddayTxtColor, ddayIsCountdown]
            [localizedKey.stringValue(), "2026.12.25", "ddayBlack", "ddayWhite", "false"],
            [localizedKey.stringValue(), "2026.04.05", "ddayBlack", "ddayWhite", "false"],
            [localizedKey.stringValue(), "2026.05.24", "ddayBlack", "ddayWhite", "false"],
        ]
        
        let defaultDdaySymbolMenu: [DdaySymbol] = defaultStringArr.map { sArray in
            let symbolDdayItem = DdaySymbol (identifier: "identifier", display: "diaplay")
            symbolDdayItem.ddayTitle = sArray[0]
            symbolDdayItem.ddayDate = sArray[1]
            symbolDdayItem.ddayBgColor = sArray[2]
            symbolDdayItem.ddayTxtColor = sArray[3]
            symbolDdayItem.ddayIsCountdown = sArray[4]
            
            return symbolDdayItem
        }
        
        let ddaySymbolMenu: [DdaySymbol] = entry.configuration.ddaySymbol ?? defaultDdaySymbolMenu
        
        return ddaySymbolMenu
    }
}

struct DefaultArrForWidget_M04 {
    
    func getDaySymbolMenu(entry: Provider.Entry) -> [DdaySymbol] {
        
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        
        let defaultStringArr: [[String]] = [
            // format: [ddayTitle, ddayDate, ddayBgColor, ddayTxtColor, ddayIsCountdown]
            [localizedKey.stringValue(), "2026.12.25", "ddayBlack", "ddayWhite", "false"],
            [localizedKey.stringValue(), "2026.04.05", "ddayBlack", "ddayWhite", "false"],
            [localizedKey.stringValue(), "2026.05.24", "ddayBlack", "ddayWhite", "false"],
        ]
        
        let defaultDdaySymbolMenu: [DdaySymbol] = defaultStringArr.map { sArray in
            let symbolDdayItem = DdaySymbol (identifier: "identifier", display: "diaplay")
            symbolDdayItem.ddayTitle = sArray[0]
            symbolDdayItem.ddayDate = sArray[1]
            symbolDdayItem.ddayBgColor = sArray[2]
            symbolDdayItem.ddayTxtColor = sArray[3]
            symbolDdayItem.ddayIsCountdown = sArray[4]
            
            return symbolDdayItem
        }
        
        let ddaySymbolMenu: [DdaySymbol] = entry.configuration.ddaySymbol ?? defaultDdaySymbolMenu
        
        return ddaySymbolMenu
    }
}

struct DefaultArrForWidget_M05 {
    
    func getDaySymbolMenu(entry: Provider.Entry) -> [DdaySymbol] {
        
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        
        let defaultStringArr: [[String]] = [
            // format: [ddayTitle, ddayDate, ddayBgColor, ddayTxtColor, ddayIsCountdown]
            [localizedKey.stringValue(), "2026.12.25", "ddayBlack", "ddayWhite", "false"],
            [localizedKey.stringValue(), "2026.04.05", "ddayBlack", "ddayWhite", "false"],
            [localizedKey.stringValue(), "2026.05.24", "ddayBlack", "≈", "false"],
        ]
        
        let defaultDdaySymbolMenu: [DdaySymbol] = defaultStringArr.map { sArray in
            let symbolDdayItem = DdaySymbol (identifier: "identifier", display: "diaplay")
            symbolDdayItem.ddayTitle = sArray[0]
            symbolDdayItem.ddayDate = sArray[1]
            symbolDdayItem.ddayBgColor = sArray[2]
            symbolDdayItem.ddayTxtColor = sArray[3]
            symbolDdayItem.ddayIsCountdown = sArray[4]
            
            return symbolDdayItem
        }
        
        let ddaySymbolMenu: [DdaySymbol] = entry.configuration.ddaySymbol ?? defaultDdaySymbolMenu
        
        return ddaySymbolMenu
    }
}

struct DefaultArrForWidget_M06 {
    
    func getDaySymbolMenu(entry: Provider.Entry) -> [DdaySymbol] {
        
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        
        let defaultStringArr: [[String]] = [
            // format: [ddayTitle, ddayDate, ddayBgColor, ddayTxtColor, ddayIsCountdown]
            [localizedKey.stringValue(), "2026.12.25", "ddayBlack", "ddayWhite", "false"],
            [localizedKey.stringValue(), "2026.04.05", "ddayWhite", "ddayBlack", "false"],
            [localizedKey.stringValue(), "2026.05.24", "ddayWhite", "ddayBlack", "false"],
            [localizedKey.stringValue(), "2026.04.02", "ddayBlack", "ddayWhite", "false"],
        ]
        
        let defaultDdaySymbolMenu: [DdaySymbol] = defaultStringArr.map { sArray in
            let symbolDdayItem = DdaySymbol (identifier: "identifier", display: "diaplay")
            symbolDdayItem.ddayTitle = sArray[0]
            symbolDdayItem.ddayDate = sArray[1]
            symbolDdayItem.ddayBgColor = sArray[2]
            symbolDdayItem.ddayTxtColor = sArray[3]
            symbolDdayItem.ddayIsCountdown = sArray[4]
            
            return symbolDdayItem
        }
        
        let ddaySymbolMenu: [DdaySymbol] = entry.configuration.ddaySymbol ?? defaultDdaySymbolMenu
        
        return ddaySymbolMenu
    }
}

struct DefaultArrForWidget_M07 {
    
    func getDaySymbolMenu(entry: Provider.Entry) -> [DdaySymbol] {
        
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        
        let defaultStringArr: [[String]] = [
            // format: [ddayTitle, ddayDate, ddayBgColor, ddayTxtColor, ddayIsCountdown]
            [localizedKey.stringValue(), "2026.12.25", "ddayWhite", "ddayBlack", "false"],
            [localizedKey.stringValue(), "2026.04.05", "ddayWhite", "ddayBlack", "false"],
            [localizedKey.stringValue(), "2026.05.24", "ddayWhite", "ddayBlack", "false"],
            [localizedKey.stringValue(), "2026.04.02", "ddayWhite", "ddayBlack", "false"],
        ]
        
        let defaultDdaySymbolMenu: [DdaySymbol] = defaultStringArr.map { sArray in
            let symbolDdayItem = DdaySymbol (identifier: "identifier", display: "diaplay")
            symbolDdayItem.ddayTitle = sArray[0]
            symbolDdayItem.ddayDate = sArray[1]
            symbolDdayItem.ddayBgColor = sArray[2]
            symbolDdayItem.ddayTxtColor = sArray[3]
            symbolDdayItem.ddayIsCountdown = sArray[4]
            
            return symbolDdayItem
        }
        
        let ddaySymbolMenu: [DdaySymbol] = entry.configuration.ddaySymbol ?? defaultDdaySymbolMenu
        
        return ddaySymbolMenu
    }
}


struct DefaultArrForWidget_M08 {
    
    func getDaySymbolMenu(entry: Provider.Entry) -> [DdaySymbol] {
        
        let localizedKey = LocalizedStringKey("길게 눌러서 디데이 추가하기")
        
        let defaultStringArr: [[String]] = [
            // format: [ddayTitle, ddayDate, ddayBgColor, ddayTxtColor, ddayIsCountdown]
            [localizedKey.stringValue(), "2026.12.25", "ddayNeonGreen", "ddayBlack", "false"],
            [localizedKey.stringValue(), "2023.05.04", "ddayNeonCrimson", "ddayOrangeLighter", "false"],
            [localizedKey.stringValue(), "2024.01.04", "ddayNeonSkyBlue", "ddayYellow", "false"],
            [localizedKey.stringValue(), "2022.10.04", "ddayNeonBlueDarker", "ddayNeonCrimson", "false"],
            [localizedKey.stringValue(), "2023.03.25", "ddayNeonPurple", "ddayNeonEmerald", "false"],
            [localizedKey.stringValue(), "2023.08.15", "ddayToneDownBabyPink", "ddayToneDownHotPink", "false"],
            [localizedKey.stringValue(), "2024.10.24", "ddayNeonOrange", "ddayNeonGreanBrighter", "false"],
            [localizedKey.stringValue(), "2023.05.20", "ddayNeonPink", "ddayNeonYellow", "false"],
        ]
        
        let defaultDdaySymbolMenu: [DdaySymbol] = defaultStringArr.map { sArray in
            let symbolDdayItem = DdaySymbol (identifier: "identifier", display: "diaplay")
            symbolDdayItem.ddayTitle = sArray[0]
            symbolDdayItem.ddayDate = sArray[1]
            symbolDdayItem.ddayBgColor = sArray[2]
            symbolDdayItem.ddayTxtColor = sArray[3]
            symbolDdayItem.ddayIsCountdown = sArray[4]
            
            return symbolDdayItem
        }
        
        let ddaySymbolMenu: [DdaySymbol] = entry.configuration.ddaySymbol ?? defaultDdaySymbolMenu
        
        return ddaySymbolMenu
    }
}


