//
//  func.swift
//  test
//
//  Created by Duy  Tran on 03/12/2021.
//

import Foundation


func minigame() {
    print("Nhập số may mắn: ", terminator: "")
    let a = Int(readLine() ?? "") ?? 0

    var b = Int.random(in: 1...100)

    if(a == b){
        print("Chúc mừng, bạn là người may mắn nhất hôm nay! Số \(a) bạn nhập, trùng khớp với số random của chúng tôi!")
    }
    else if(a > b){
        print("Số \(a) bạn nhập lớn hơn số random(\(b)) của chúng tôi!")
    }
    else{
        print("Số \(a) bạn nhập nhỏ hơn số random(\(b)) của chúng tôi!")
    }
}




func Taxi() {
    
    print("Nhập số Km: ", terminator: "")
    let km = Float(readLine() ?? "") ?? 0
    var monney: Float

    if(km > 0 && km <= 1){
        monney = 1 * 5000
        print("Số tiền cần thanh toán cho \(km) km là: \(monney) đ")
    }

    if(km > 1 && km <= 31){
        monney = 5000 + (km-1) * 4000
        print("Số tiền cần thanh toán cho \(km) km là: \(monney) đ")
    }
    if(km > 31){
        monney = 5000 + 30 * 4000 + (km - 31)*3000
        print("Số tiền cần thanh toán cho \(km) km là: \(monney) đ")
    }



}



func Date() {
    var year: Int
    var month: Int
    repeat {
        print("Nhập năm: ", terminator: "")
        year = Int(readLine() ?? "") ?? 0

    } while (year < 0)
    
    repeat {
        print("Nhập tháng: ", terminator: "")
        month = Int(readLine() ?? "") ?? 0
    } while (month > 12 )

    if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0){
        print("Năm \(year) là năm nhuận!")
        if(month == 2){
            print("Tháng \(month), năm \(year) có 29 ngày!")
        }
        if(month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12){
            print("Tháng \(month), năm \(year) có 31 ngày!")
        }
        else if(month == 4 || month == 6 || month == 9 || month == 11){
            print("Tháng \(month), năm \(year) có 30 ngày!")
        }
    }
    else{
        print("Năm \(year) không là năm nhuận")
        if(month == 2){
            print("Tháng \(month), năm \(year) có 28 ngày!")
        }
        if(month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12){
            print("Tháng \(month), năm \(year) có 31 ngày!")
        }
        else if(month == 4 || month == 6 || month == 9 || month == 11){
            print("Tháng \(month), năm \(year) có 30 ngày!")
        }
    }
}





func sxgd() {
    // Sắp xếp mảng số nguyên theo chiều và giảm dần:
    var Arr = [1,2,4,-2,6,-42,5,9,-23,54,75]
    var tg: Int
    print("Mảng vừa nhập là: \(Arr)")
    for i in (0..<Arr.count) {
        for j in (i + 1 ..< Arr.count){
            if(Arr[i] < Arr[j]){
                tg = Arr[i]
                Arr[i] = Arr[j]
                Arr[j] = tg
            }
        }

    }
    print("Mảng sau khi đã sắp xếp: \(Arr)")

}




func swc() {
    print("Lựa chọn của bạn: ", terminator: "")
    let ax = readLine() ?? ""
    let a = Int(ax) ?? 0
    
    switch a {
    case 1:
        minigame()
        swc()
    case 2:
        Taxi()
        swc()
    case 3:
        Date()
        swc()
    case 4:
        sxgd()
        swc()
    case 0:
        print("Thoát!")
        break

    default:
        swc()
            
    }
}
