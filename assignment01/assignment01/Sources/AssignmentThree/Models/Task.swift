//
//  Task.swift
//  HIEHJ
//
//  Created by Sanghun K. on 2023/08/27.
//

import Foundation

struct Task: Codable {
    var taskId: UUID // 할일 ID
    var description: String // 할일 내용
    var createdDate: Date // 할일 생성일
    var completedDate: Date // 할일 완료일
    var deadlineDate: Date // 할일 마감기한
    var isCompleted: Bool // 할일 완료여부
    var priority: String // 할일 우선순위
}
