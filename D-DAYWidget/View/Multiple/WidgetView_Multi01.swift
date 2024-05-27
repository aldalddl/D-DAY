//
//  WidgetView_Multi01.swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2023/02/26.
//

import SwiftUI
import WidgetKit

struct WidgetView_Multi01EntryView : View { // hex done
    @Environment(\.widgetFamily) var family: WidgetFamily
    
    var entry: Provider.Entry

    var body: some View {
        
        if #available(iOSApplicationExtension 17.0, *) {
            switch self.family {
                
            /// Multiple - Medium Size Widget 01
            case .systemMedium:
                
                let ddaySymbolMenu: [DdaySymbol] = DefaultArrForWidget_MM01().getDaySymbolMenu(entry: self.entry)
                
                let defaultStringArr: [[String]] = DefaultArrForWidget_MM01().getDefaultStringArr()
                
                switch entry.configuration.shadow?.stringValue ?? "0" {
                case "0": // disable shadow
                    
                    switch UIScreen.main.bounds.size { // Depends on Device
                        
                    /// ** iPhone UI **
                    case CGSize(width: 430, height: 932), CGSize(width: 428, height: 926): // (364x170)
                        // Mark : - .containerBackground()는 iOS 17 대응을 위함
                        WidgetView_Multi01_M_Comp01_364x170_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 414, height: 896): // (360x169)
                        WidgetView_Multi01_M_Comp01_360x169_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 414, height: 736), CGSize(width: 393, height: 852), CGSize(width: 390, height: 844): // (348x159, 338x158)
                        WidgetView_Multi01_M_Comp01_338x158_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 375, height: 812): // (329x155)
                        WidgetView_Multi01_M_Comp01_329x155_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 375, height: 667), CGSize(width: 360, height: 780), CGSize(width: 320, height: 568): // (321x148)
                        WidgetView_Multi01_M_Comp01_321x148_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr)
                            .body
                            .containerBackground(for: .widget) {}
                        
                        
                    /// ** iPad UI **
                    case CGSize(width: 768, height: 1024), CGSize(width: 744, height: 1133): // (768x1024, 744x1133)
                        WidgetView_Multi01_M_Comp01_pad120x120_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 810, height: 1080): // (810x1080)
                        WidgetView_Multi01_M_Comp01_pad124x124_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 834, height: 1112): // (834x1112)
                        WidgetView_Multi01_M_Comp01_pad132x132_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 820, height: 1180), CGSize(width: 834, height: 1194): // (820x1180, 834x1194)
                        WidgetView_Multi01_M_Comp01_pad136x136_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 1024, height: 1366): // (1024x1366)
                        WidgetView_Multi01_M_Comp01_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr)
                            .body
                            .containerBackground(for: .widget) {}
                      
                    // 미정
                    case CGSize(width: 954, height: 1373), CGSize(width: 970, height: 1389): // (954x1373, 970x1389) - When Display Zoom is set to More Space.
                        WidgetView_Multi01_M_Comp01_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr)
                            .body
                            .containerBackground(for: .widget) {}
                    
                    // 미정
                    case CGSize(width: 1192, height: 1590): // (1192x1590) - When Display Zoom is set to More Space.
                        WidgetView_Multi01_M_Comp01_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    default:
                        // Default widget
                        WidgetView_Multi01_M_Comp01_360x169_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr)
                            .body
                            .containerBackground(for: .widget) {}
                    }
                    
                    
                case "1": // enable shadow
                    
                    switch UIScreen.main.bounds.size { // Depends on Device
                    
                    /// ** iPhone UI **
                    case CGSize(width: 430, height: 932), CGSize(width: 428, height: 926): // (364x170)
                        WidgetView_Multi01_M_Comp02_364x170_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 414, height: 896): // (360x169)
                        WidgetView_Multi01_M_Comp02_360x169_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 414, height: 736), CGSize(width: 393, height: 852), CGSize(width: 390, height: 844): // (348x159, 338x158)
                        WidgetView_Multi01_M_Comp02_338x158_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 375, height: 812): // (329x155)
                        WidgetView_Multi01_M_Comp02_329x155_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr)
                            .body
                            .containerBackground(for: .widget) {}
                    
                    case CGSize(width: 375, height: 667), CGSize(width: 360, height: 780), CGSize(width: 320, height: 568): // (321x148)
                        WidgetView_Multi01_M_Comp02_321x148_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    
                    
                    /// ** iPad UI **
                    case CGSize(width: 768, height: 1024), CGSize(width: 744, height: 1133): // (768x1024, 744x1133)
                        WidgetView_Multi01_M_Comp02_pad120x120_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 810, height: 1080): // (810x1080)
                        WidgetView_Multi01_M_Comp02_pad124x124_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 834, height: 1112): // (834x1112)
                        WidgetView_Multi01_M_Comp02_pad132x132_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 820, height: 1180), CGSize(width: 834, height: 1194): // (820x1180, 834x1194)
                        WidgetView_Multi01_M_Comp02_pad136x136_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 1024, height: 1366): // (1024x1366)
                        WidgetView_Multi01_M_Comp02_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr)
                            .body
                            .containerBackground(for: .widget) {}
                      
                    // 미정
                    case CGSize(width: 954, height: 1373), CGSize(width: 970, height: 1389): // (954x1373, 970x1389) - When Display Zoom is set to More Space.
                        WidgetView_Multi01_M_Comp02_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr)
                            .body
                            .containerBackground(for: .widget) {}
                    
                    // 미정
                    case CGSize(width: 1192, height: 1590): // (1192x1590) - When Display Zoom is set to More Space.
                        WidgetView_Multi01_M_Comp02_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    default:
                        // Default widget
                        WidgetView_Multi01_M_Comp02_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu, defaultStringArr: defaultStringArr)
                            .body
                            .containerBackground(for: .widget) {}
                    }
                
                    
                default:
                    Text("Encountered Error M01-1")
                }
                
            @unknown default:
                Text("Sorry, You have encountered Default Error. M01-2")
            }
        }
    }
}

// Multi Medium03, Large01
struct WidgetView_Multi01: Widget {
    let kind: String = "WidgetView_Multi01"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            WidgetView_Multi01EntryView(entry: entry)
        }
        .configurationDisplayName(LocalizedStringKey("#2 멀티 위젯"))
        .description(LocalizedStringKey("여러 개의 디데이를 표시할 수 있는 위젯입니다."))
        .supportedFamilies([.systemMedium])
        .contentMarginsDisabled() // Mark : - iOS 17.0 safe area padding 대응
        .containerBackgroundRemovable(false)
    }
}

struct WidgetView_Multi01_Previews: PreviewProvider {
    static var previews: some View {
        WidgetView_Multi01EntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}
