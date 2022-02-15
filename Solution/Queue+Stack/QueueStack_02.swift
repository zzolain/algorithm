//
//  Queue+Stack_02.swift
//  algorithm (iOS)
//
//  Created by 김진솔 on 2022/02/13.
//

import Foundation

struct QueueStack_02 {
    func solution(
        _ priorities: [Int],
        _ location: Int
    ) -> Int {
        var list = priorities.enumerated().map { (index: $0.offset, value: $0.element) }
        var order = 0
        while true {
            let first = list.remove(at: 0)
            if list.contains(where: { $0.value > first.value }) {
                list.append(first)
            } else {
                order += 1
                if first.index == location {
                    break
                }
            }
        }
        return order
    }
}
