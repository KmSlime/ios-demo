//
//  Data.swift
//  test
//
//  Created by Liêm Nguyễn on 24/05/2023.
//

import UIKit

struct Cookie {
    var size:Int = 5
    var hasChocolateChips:Bool = false
}

class Bakery {
    func makeCookie() {
        var cookie = Cookie()
        cookie.size = 6
        cookie.hasChocolateChips = true
    }
}
