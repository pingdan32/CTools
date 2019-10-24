//
//  CTools.c
//  SmartDumbbell
//
//  Created by 张健 on 2018/10/26.
//  Copyright © 2018 张健. All rights reserved.
//

import Foundation
import CToolsC 

public class CTools {
    // Convert Little Endian format to UInt16
    public static func LEToHost16(_ data: Data) -> UInt16? {
        guard data.count == 2 else {
            return nil
        }
        return CSwiftTools_LEToHost16([UInt8](data))
    }
    
    // Convert Little Endian format to UInt16
    public static func LEToHost16<T: RawRepresentable>(_ data: Data, inRange range: Range<T>) -> UInt16? where T.RawValue == Int {
        let array = [UInt8](data.subdata(in: range.lowerBound.rawValue..<range.upperBound.rawValue))
        return CSwiftTools_LEToHost16(array)
    }
    
    // Convert Little Endian format to UInt32
    public static func LEToHost32(_ data: Data) -> UInt32? {
        guard data.count == 4 else {
            return nil
        }
        return CSwiftTools_LEToHost32([UInt8](data))
    }
    
    // Convert Little Endian format to UInt32
    public static func LEToHost32<T: RawRepresentable>(_ data: Data, inRange range: Range<T>) -> UInt32? where T.RawValue == Int {
        let array = [UInt8](data.subdata(in: range.lowerBound.rawValue..<range.upperBound.rawValue))
        return CSwiftTools_LEToHost32(array)
    }
    
    // Store value into a buffer in Little Endian format
    public static func Host16ToLE(_ value: UInt16) -> [UInt8] {
        var buffer = [UInt8]([0, 0])
        CSwiftTools_Host16ToLE(value, &buffer)
        return buffer
    }
    
    // Store value into a buffer in Little Endian format
    public static func Host32ToLE(_ value: UInt32) -> [UInt8] {
        var buffer = [UInt8]([0, 0, 0, 0])
        CSwiftTools_Host32ToLE(value, &buffer)
        return buffer
    }
}
