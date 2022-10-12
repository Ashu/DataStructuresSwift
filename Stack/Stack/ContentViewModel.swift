//
//  ContentViewModel.swift
//  Stack
//
//  Created by Ashu on 06/09/22.
//

import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var stack : Stack<Int> = []
}
