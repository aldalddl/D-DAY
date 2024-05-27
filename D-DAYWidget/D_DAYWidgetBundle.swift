//
//  D_DAYWidgetBundle.swift
//  D-DAYWidget
//
//  Created by MinJi Kang on 2023/02/26.
//

import WidgetKit
import SwiftUI

@main
struct D_DAYWidgetBundle: WidgetBundle {
    
    @WidgetBundleBuilder
    var body: some Widget {
        /// Multiple - Extra large Size for iPad
        WidgetView_Multi06()
        WidgetView_Multi07()
        
        /// Single - Small Size 01, Medium Size 01 for iPhone, iPad
        WidgetView_Single01()
        
        /// Single - Medium Size 02, Large Size 01 for iPhone, iPad
        WidgetView_Single02()
        
        /// Multiple - Medium Size 01 for iPhone, iPad
        WidgetView_Multi01()
        
        /// Multiple - Medium Size 03 for iPhone, iPad
        WidgetView_Multi02()
        
        /// Multiple - Large Size 02 for iPhone, iPad
        WidgetView_Multi04()
        
        /// Multiple - Large Size 03 for iPhone, iPad
        WidgetView_Multi05()
        
        /// Multiple - Large Size 01 for iPhone, iPad
        WidgetView_Multi03()
        
        //WidgetView_Multi08()
    }
}
