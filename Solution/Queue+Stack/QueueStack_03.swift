//
//  QueueStack__03.swift
//  algorithm (iOS)
//
//  Created by 김진솔 on 2022/02/13.
//

import Foundation

struct QueueStack_03 {
    func solution(
        _ bridge_length: Int,
        _ weight: Int,
        _ truck_weights: [Int]
    ) -> Int {
        var time = 1
        var queue = 0
        var bridge = [(weight: truck_weights[queue], progress: 1)]
        var progressWeight = truck_weights[queue]

        while(bridge.count > 0) {
            time += 1
            if bridge[0].progress == bridge_length {
                progressWeight -= bridge.removeFirst().weight
            }
            bridge.indices.forEach {
                bridge[$0].progress += 1
            }
            if queue + 1 < truck_weights.endIndex,
               bridge.count + 1 <= bridge_length,
               truck_weights[queue + 1] + progressWeight <= weight {
                queue += 1
                let next = truck_weights[queue]
                bridge.append((weight: next, progress: 1))
                progressWeight += next
            }
        }
        
        return time
    }
}
