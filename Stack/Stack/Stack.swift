//
//  Stack.swift
//  Stack
//
//  Created by Ashu on 18/08/22.
//

import Foundation
import UIKit

struct Stack<Element> {
    private var storage: [Element] = []
    
    init(_ elements: [Element]) {
        storage = elements
    }
    
    mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    mutating func pop() -> Element? {
        storage.popLast()
    }
    
    func peek() -> Element? {
        storage.last
    }
    
    var isEmpty: Bool {
        peek() == nil
    }
    
}

extension Stack: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: Element...) {
        storage = elements
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        """
        ---top---
        \(storage.map{"\($0)"}.reversed().joined(separator: "\n"))
        ---------
        """
    }
}
