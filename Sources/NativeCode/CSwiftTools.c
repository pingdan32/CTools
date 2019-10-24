//
//  CSwiftTools.c
//  SmartDumbbell
//
//  Created by 张健 on 2018/10/26.
//  Copyright © 2018 张健. All rights reserved.
//

#include "CSwiftTools.h"

uint16_t CSwiftTools_LEToHost16(const uint8_t buf[2]) {
    return (((uint16_t)(buf[1])) << 8u) + (uint16_t)(buf[0]);
}

uint32_t CSwiftTools_LEToHost32(const uint8_t buf[4]) {
    return ((uint32_t)buf[3] << 24u) + ((uint32_t)buf[2] << 16u) + ((uint32_t)buf[1] << 8u) + buf[0];
}

void CSwiftTools_Host16ToLE(uint16_t value, uint8_t buf[2]) {
    buf[1] = (uint8_t)(value >> 8u);
    buf[0] = (uint8_t)(value);
}

void CSwiftTools_Host32ToLE(uint32_t value, uint8_t buf[4]) {
    buf[3] = (uint8_t)(value >> 24u);
    buf[2] = (uint8_t)(value >> 16u);
    buf[1] = (uint8_t)(value >> 8u);
    buf[0] = (uint8_t)(value);
}
