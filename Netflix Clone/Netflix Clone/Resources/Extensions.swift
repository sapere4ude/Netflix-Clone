//
//  Extensions.swift
//  Netflix Clone
//
//  Created by Kant on 2022/02/22.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
