//
//  InterfaceController.swift
//  TaskMetricsTest WatchKit Extension
//
//  Created by Jon Shier on 10/7/17.
//  Copyright © 2017 Jon Shier. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        let configuration = URLSessionConfiguration.default
        _ = URLSession(configuration: configuration, delegate: self, delegateQueue: .main)
    }

}

extension InterfaceController: URLSessionDelegate, URLSessionTaskDelegate {
    func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) {
        print(metrics)
    }
}
