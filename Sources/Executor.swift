//
//  Executor.swift
//  ExecutorKit
//
//  Created by dcilia on 10/25/16.
//
//

import Foundation

public protocol Executor {
    
    var observers : Array<ExecutorObserver> { get set }
    func execute() -> Void
    func finish() -> Void
    mutating func add(observer: ExecutorObserver) -> Void
}

extension Executor {
    
    public mutating func add(observer: ExecutorObserver) -> Void {
        observers.append(observer)
    }
}
