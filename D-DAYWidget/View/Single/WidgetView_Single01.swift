//
//  WidgetView.swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2023/02/26.
//

import SwiftUI
import WidgetKit

struct WidgetView_Single01EntryView : View {
    @Environment(\.widgetFamily) var family: WidgetFamily
    
    var entry: Provider.Entry

    var body: some View {
        
        switch self.family {
            
        case .systemSmall:
            
            let ddaySymbolMenu: [DdaySymbol] = DefaultArrForWidget_SS01().getDaySymbolMenu(entry: self.entry)
            
            switch entry.configuration.shadow?.stringValue ?? "0" {
            case "0": // disable shadow
                
                switch UIScreen.main.bounds.size { // Depends on Device
                case CGSize(width: 430, height: 932), CGSize(width: 428, height: 926): // (170x170)
                    WidgetView_Single01_S_Comp01_170x170_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                    
                case CGSize(width: 414, height: 896): // (169x169)
                    WidgetView_Single01_S_Comp01_169x169_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                    
                case CGSize(width: 414, height: 736), CGSize(width: 390, height: 844), CGSize(width: 393, height: 852): // (159x159, 158x158)
                    WidgetView_Single01_S_Comp01_159x159_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                    
                case CGSize(width: 375, height: 812), CGSize(width: 360, height: 780): // (155x155)
                    WidgetView_Single01_S_Comp01_155x155_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                    
                case CGSize(width: 375, height: 667), CGSize(width: 320, height: 568): // (148x148)
                    WidgetView_Single01_S_Comp01_148x148_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                    
                default:
                    Text("CGSize default S01-1")
                }
                
                
            case "1": // enable shadow
                
                switch UIScreen.main.bounds.size { // Depends on Device
                case CGSize(width: 430, height: 932), CGSize(width: 428, height: 926): // (170x170)
                    WidgetView_Single01_S_Comp02_170x170_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                    
                case CGSize(width: 414, height: 896): // (169x169)
                    WidgetView_Single01_S_Comp02_169x169_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                    
                case CGSize(width: 414, height: 736), CGSize(width: 390, height: 844), CGSize(width: 393, height: 852):
                    WidgetView_Single01_S_Comp02_159x159_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                        
                case CGSize(width: 375, height: 812), CGSize(width: 360, height: 780):
                    WidgetView_Single01_S_Comp02_155x155_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                        
                case CGSize(width: 375, height: 667), CGSize(width: 320, height: 568):
                    WidgetView_Single01_S_Comp02_148x148_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                    
                default:
                    Text("CGSize default S01-2")
                }
                
                
            default:
                Text("Encountered Error S01-1")
            }
            
            
            
            
        case .systemMedium:
            
            let ddaySymbolMenu: [DdaySymbol] = DefaultArrForWidget_SM01().getDaySymbolMenu(entry: self.entry)
            
            switch entry.configuration.shadow?.stringValue ?? "0" {
            case "0": // disable shadow
                
                switch UIScreen.main.bounds.size { // Depends on Device
                case CGSize(width: 430, height: 932), CGSize(width: 428, height: 926): // (364x170)
                    WidgetView_Single01_M_Comp01_364x170_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                    
                case CGSize(width: 414, height: 896): // (360x169)
                    WidgetView_Single01_M_Comp01_360x169_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                    
                case CGSize(width: 414, height: 736), CGSize(width: 393, height: 852), CGSize(width: 390, height: 844): // (348x159, 338x158)
                    WidgetView_Single01_M_Comp01_348x159_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                    
                case CGSize(width: 375, height: 812): // (329x155)
                    WidgetView_Single01_M_Comp01_329x155_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                    
                case CGSize(width: 375, height: 667), CGSize(width: 360, height: 780), CGSize(width: 320, height: 568): // (321x148)
                    WidgetView_Single01_M_Comp01_321x148_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                    
                default:
                    Text("CGSize default S02-1")
                }
                
                
            case "1": // enable shadow
                
                switch UIScreen.main.bounds.size { // Depends on Device
                case CGSize(width: 430, height: 932), CGSize(width: 428, height: 926): // (364x170)
                    WidgetView_Single01_M_Comp02_364x170_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                    
                case CGSize(width: 414, height: 896): // (360x169)
                    WidgetView_Single01_M_Comp02_360x169_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                    
                case CGSize(width: 414, height: 736), CGSize(width: 393, height: 852), CGSize(width: 390, height: 844): // (348x159, 338x158)
                    WidgetView_Single01_M_Comp02_348x159_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                    
                case CGSize(width: 375, height: 812): // (329x155)
                    WidgetView_Single01_M_Comp02_329x155_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                    
                case CGSize(width: 375, height: 667), CGSize(width: 360, height: 780), CGSize(width: 320, height: 568): // (321x148)
                    WidgetView_Single01_M_Comp02_321x148_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu).body
                    
                default:
                    Text("CGSize default S02-2")
                }
                
            default:
                Text("Encountered Error S02-2")
            }
            
        @unknown default:
            Text("Encountered Error S01-3")
        }
    }
}

// Single Small01, Medium01
struct WidgetView_Single01: Widget {
    let kind: String = "WidgetView_Single01"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            WidgetView_Single01EntryView(entry: entry)
        }
        .configurationDisplayName(LocalizedStringKey("#1 싱글 위젯"))
        .description(LocalizedStringKey("한 개의 디데이를 표시할 수 있는 위젯입니다."))
        .supportedFamilies([.systemSmall, .systemMedium])
    }
}

struct WidgetView_Single01_Previews: PreviewProvider {
    static var previews: some View {
        WidgetView_Single01EntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}

struct WidgetView_Single01_Previews2: PreviewProvider {
    static var previews: some View {
        WidgetView_Single01EntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}
