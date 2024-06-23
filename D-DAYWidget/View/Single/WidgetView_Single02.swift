//
//  WidgetView_Single02.swift
//  D-DAYWidgetExtension
//
//  Created by Hakyung Sohn on 2023/02/26.
//

import SwiftUI
import WidgetKit

struct WidgetView_Single02EntryView : View {
    @Environment(\.widgetFamily) var family: WidgetFamily
    
    var entry: Provider.Entry

    var body: some View {
        
        if #available(iOSApplicationExtension 17.0, *) {
            switch self.family {
                
            /// Single - Medium Size Widget 02
            case .systemMedium:
                
                let ddaySymbolMenu: [DdaySymbol] = DefaultArrForWidget_SM02().getDaySymbolMenu(entry: self.entry)
                
                switch entry.configuration.shadow?.stringValue ?? "0" {
                case "0": // disable shadow
                    
                    switch UIScreen.main.bounds.size { // Depends on Device
                        
                    /// ** iPhone UI **
                    case CGSize(width: 430, height: 932), CGSize(width: 428, height: 926): // (364x170)
                        // Mark : - .containerBackground()는 iOS 17 대응을 위함
                        WidgetView_Single02_M_Comp01_364x170_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 414, height: 896): // (360x169)
                        WidgetView_Single02_M_Comp01_360x169_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 414, height: 736), CGSize(width: 393, height: 852), CGSize(width: 390, height: 844): // (348x159, 338x158)
                        WidgetView_Single02_M_Comp01_348x159_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 375, height: 812): // (329x155)
                        WidgetView_Single02_M_Comp01_329x155_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 375, height: 667), CGSize(width: 360, height: 780), CGSize(width: 320, height: 568): // (321x148)
                        WidgetView_Single02_M_Comp01_321x148_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                        
                        
                    /// ** iPad UI **
                    case CGSize(width: 768, height: 1024), CGSize(width: 744, height: 1133): // (768x1024, 744x1133)
                        WidgetView_Single02_M_Comp01_pad120x120_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                            
                    case CGSize(width: 810, height: 1080): // (810x1080)
                        WidgetView_Single02_M_Comp01_pad124x124_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                            
                    case CGSize(width: 834, height: 1112): // (834x1112)
                        WidgetView_Single02_M_Comp01_pad132x132_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                            
                    case CGSize(width: 820, height: 1180), CGSize(width: 834, height: 1194): // (820x1180, 834x1194)
                        WidgetView_Single02_M_Comp01_pad136x136_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                            
                    case CGSize(width: 1024, height: 1366): // (1024x1366)
                        WidgetView_Single02_M_Comp01_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                          
                    // 미정
                    case CGSize(width: 954, height: 1373), CGSize(width: 970, height: 1389): // (954x1373, 970x1389) - When Display Zoom is set to More Space.
                        WidgetView_Single02_M_Comp01_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    // 미정
                    case CGSize(width: 1192, height: 1590): // (1192x1590) - When Display Zoom is set to More Space.
                        WidgetView_Single02_M_Comp01_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                            
                    default:
                        // Default widget
                        WidgetView_Single02_M_Comp01_360x169_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                }
                    
                    
                case "1": // enable shadow
                    
                    switch UIScreen.main.bounds.size { // Depends on Device
                        
                    /// ** iPhone UI **
                    case CGSize(width: 430, height: 932), CGSize(width: 428, height: 926): // (364x170, 360x169)
                        WidgetView_Single02_M_Comp02_364x170_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 414, height: 896): // (360x169)
                        WidgetView_Single02_M_Comp02_360x169_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 414, height: 736), CGSize(width: 393, height: 852), CGSize(width: 390, height: 844): // (348x159, 338x158)
                        WidgetView_Single02_M_Comp02_348x159_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 375, height: 812): // (329x155)
                        WidgetView_Single02_M_Comp02_329x155_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 375, height: 667), CGSize(width: 360, height: 780), CGSize(width: 320, height: 568): // (321x148)
                        WidgetView_Single02_M_Comp02_321x148_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                    
                        
                    /// ** iPad UI **
                    case CGSize(width: 768, height: 1024), CGSize(width: 744, height: 1133): // (768x1024, 744x1133)
                        WidgetView_Single02_M_Comp02_pad120x120_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                            
                    case CGSize(width: 810, height: 1080): // (810x1080)
                        WidgetView_Single02_M_Comp02_pad124x124_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                            
                    case CGSize(width: 834, height: 1112): // (834x1112)
                        WidgetView_Single02_M_Comp02_pad132x132_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                            
                    case CGSize(width: 820, height: 1180), CGSize(width: 834, height: 1194): // (820x1180, 834x1194)
                        WidgetView_Single02_M_Comp02_pad136x136_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                            
                    case CGSize(width: 1024, height: 1366): // (1024x1366)
                        WidgetView_Single02_M_Comp02_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                          
                    // 미정
                    case CGSize(width: 954, height: 1373), CGSize(width: 970, height: 1389): // (954x1373, 970x1389) - When Display Zoom is set to More Space.
                        WidgetView_Single02_M_Comp02_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    // 미정
                    case CGSize(width: 1192, height: 1590): // (1192x1590) - When Display Zoom is set to More Space.
                        WidgetView_Single02_M_Comp02_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                            
                    default:
                        // Default widget
                        WidgetView_Single02_M_Comp02_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                    }
                    
                default:
                    Text("Encountered Error M02")
                }
                
                
            /// Single - Large Size Widget 01
            case .systemLarge:
                
                let ddaySymbolMenu: [DdaySymbol] = DefaultArrForWidget_SL01().getDaySymbolMenu(entry: self.entry)
                
                switch entry.configuration.shadow?.stringValue ?? "0" {
                case "0": // disable shadow
                    
                    switch UIScreen.main.bounds.size { // Depends on Device
                        
                    /// ** iPhone UI **
                    case CGSize(width: 430, height: 932), CGSize(width: 428, height: 926): // (364x382)
                        WidgetView_Single02_L_Comp01_364x382_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 414, height: 896): // (360x379)
                        WidgetView_Single02_L_Comp01_360x379_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 414, height: 736), CGSize(width: 393, height: 852), CGSize(width: 390, height: 844): // (348x357, 338x354)
                        WidgetView_Single02_L_Comp01_338x354_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 375, height: 812): // (329x345)
                        WidgetView_Single02_L_Comp01_329x345_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 375, height: 667), CGSize(width: 360, height: 780), CGSize(width: 320, height: 568): // (321x324)
                        WidgetView_Single02_L_Comp01_321x324_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                    
                        
                            
                    /// ** iPad UI **
                    case CGSize(width: 768, height: 1024), CGSize(width: 744, height: 1133): // (768x1024, 744x1133)
                        WidgetView_Single02_L_Comp01_pad120x120_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                            
                    case CGSize(width: 810, height: 1080): // (810x1080)
                        WidgetView_Single02_L_Comp01_pad124x124_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                            
                    case CGSize(width: 834, height: 1112): // (834x1112)
                        WidgetView_Single02_L_Comp01_pad132x132_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                            
                    case CGSize(width: 820, height: 1180), CGSize(width: 834, height: 1194): // (820x1180, 834x1194)
                        WidgetView_Single02_L_Comp01_pad136x136_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                            
                    case CGSize(width: 1024, height: 1366): // (1024x1366)
                        WidgetView_Single02_L_Comp01_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                          
                    // 미정
                    case CGSize(width: 954, height: 1373), CGSize(width: 970, height: 1389): // (954x1373, 970x1389) - When Display Zoom is set to More Space.
                        WidgetView_Single02_L_Comp01_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    // 미정
                    case CGSize(width: 1192, height: 1590): // (1192x1590) - When Display Zoom is set to More Space.
                        WidgetView_Single02_L_Comp01_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                            
                    default:
                        // Default widget
                        WidgetView_Single02_L_Comp01_360x379_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                    }
                    
                    
                    
                case "1": // enable shadow
                    
                    switch UIScreen.main.bounds.size { // Depends on Device
                        
                    /// ** iPhone UI **
                    case CGSize(width: 430, height: 932), CGSize(width: 428, height: 926): // (364x382)
                        WidgetView_Single02_L_Comp02_364x382_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 414, height: 896): // (360x379)
                        WidgetView_Single02_L_Comp02_360x379_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 414, height: 736), CGSize(width: 393, height: 852), CGSize(width: 390, height: 844): // (348x357, 338x354)
                        WidgetView_Single02_L_Comp02_338x354_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 375, height: 812): // (329x345)
                        WidgetView_Single02_L_Comp02_329x345_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    case CGSize(width: 375, height: 667), CGSize(width: 360, height: 780), CGSize(width: 320, height: 568): // (321x148)
                        WidgetView_Single02_L_Comp02_321x324_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                        
                        
                            
                    /// ** iPad UI **
                    case CGSize(width: 768, height: 1024), CGSize(width: 744, height: 1133): // (768x1024, 744x1133)
                        WidgetView_Single02_L_Comp02_pad120x120_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                            
                    case CGSize(width: 810, height: 1080): // (810x1080)
                        WidgetView_Single02_L_Comp02_pad124x124_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                            
                    case CGSize(width: 834, height: 1112): // (834x1112)
                        WidgetView_Single02_L_Comp02_pad132x132_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                            
                    case CGSize(width: 820, height: 1180), CGSize(width: 834, height: 1194): // (820x1180, 834x1194)
                        WidgetView_Single02_L_Comp02_pad136x136_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                            
                    case CGSize(width: 1024, height: 1366): // (1024x1366)
                        WidgetView_Single02_L_Comp02_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                          
                    // 미정
                    case CGSize(width: 954, height: 1373), CGSize(width: 970, height: 1389): // (954x1373, 970x1389) - When Display Zoom is set to More Space.
                        WidgetView_Single02_L_Comp02_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                        
                    // 미정
                    case CGSize(width: 1192, height: 1590): // (1192x1590) - When Display Zoom is set to More Space.
                        WidgetView_Single02_L_Comp02_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                            
                    default:
                        // Default widget
                        WidgetView_Single02_L_Comp02_pad160x160_(entry: self.entry, ddaySymbolMenu: ddaySymbolMenu)
                            .body
                            .containerBackground(for: .widget) {}
                    }
                    
                default:
                    Text("Encountered Error L01")
                }
                
                
            @unknown default:
                Text("Encountered Error M02-L01")
            }
        }
    }
}

// Single Medium02, Large01
struct WidgetView_Single02: Widget {
    let kind: String = "WidgetView_Single02"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            WidgetView_Single02EntryView(entry: entry)
        }
        .configurationDisplayName(LocalizedStringKey("#1 싱글 위젯"))
        .description(LocalizedStringKey("한 개의 디데이를 표시할 수 있는 위젯입니다."))
        .supportedFamilies([.systemMedium, .systemLarge])
        .contentMarginsDisabled() // Mark : - iOS 17.0 safe area padding 대응
        .containerBackgroundRemovable(false)
    }
}

struct WidgetView_Single02_Previews: PreviewProvider {
    static var previews: some View {
        WidgetView_Single02EntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}

struct WidgetView_Single02_Previews2: PreviewProvider {
    static var previews: some View {
        WidgetView_Single02EntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemLarge))
    }
}
