//
//  CSwiftTools.h
//  SmartDumbbell
//
//  Created by 张健 on 2018/10/26.
//  Copyright © 2018 张健. All rights reserved.
//

#ifndef CSwiftTools_h
#define CSwiftTools_h

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

uint16_t CSwiftTools_LEToHost16(const uint8_t buf[2]);
uint32_t CSwiftTools_LEToHost32(const uint8_t buf[4]);

void CSwiftTools_Host16ToLE(uint16_t value, uint8_t buf[2]);
void CSwiftTools_Host32ToLE(uint32_t value, uint8_t buf[4]);

#ifdef __cplusplus
}
#endif
    
#endif /* CSwiftTools_h */
