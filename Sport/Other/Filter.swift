//
//  Filter.swift


//MARK: Prototype file need custom to current API
import Foundation
import UIKit

class Filter : Equatable{
    var name: String
    var isSelected: Bool
    
    static func == (lhs: Filter, rhs: Filter) -> Bool {
        return lhs.name == rhs.name
    }

    init (name: String) {
        self.name = name
        self.isSelected = false
    }
}
