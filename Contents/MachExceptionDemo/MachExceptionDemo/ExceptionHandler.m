//
//  ExceptionHandler.m
//  TestUncaughtException
//
//  Created by 陆嘉琦 on 16/9/7.
//  Copyright © 2016年 陆嘉琦. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ExceptionHandler.h"
#include <mach/mach.h>
#include <mach/port.h>
#include <mach/task.h>
#include <stdio.h>
#include <signal.h>
#include <pthread.h>
#include <stdlib.h>
#include <unistd.h>

mach_port_t myExceptionPort;
static task_t thisTask;

@implementation ExceptionHandler

+ (void)installHandlers {
    catchMACHExceptions();
}

static void *exc_handler(void *ignored) {
    mach_msg_return_t rc;
    fprintf(stderr, "exc handler listening\n");
    
    /** A mach exception message (according to ux_exception.c, xnu-1699.22.81).
     */
    typedef struct {
        /** Mach header. */
        mach_msg_header_t          header;
        
        // Start of the kernel processed data.
        
        /** Basic message body data. */
        mach_msg_body_t            body;
        
        /** The thread that raised the exception. */
        mach_msg_port_descriptor_t thread;
        
        /** The task that raised the exception. */
        mach_msg_port_descriptor_t task;
        
        // End of the kernel processed data.
        
        /** Network Data Representation. */
        NDR_record_t               NDR;
        
        /** The exception that was raised. */
        exception_type_t           exception;
        
        /** The number of codes. */
        mach_msg_type_number_t     codeCount;
        
        /** Exception code and subcode. */
        // ux_exception.c defines this as mach_exception_data_t for some reason.
        // But it's not actually a pointer; it's an embedded array.
        // On 32-bit systems, only the lower 32 bits of the code and subcode
        // are valid.
        mach_exception_data_type_t code[0];
        
        /** Padding to avoid RCV_TOO_LARGE. */
        char                       padding[512];
    } MachExceptionMessage;
    
    MachExceptionMessage exc;

    for (; ;) {
        fprintf(stderr, "wait\n");
        rc = mach_msg(&exc.header,
                      MACH_RCV_MSG,
                      0,
                      sizeof(MachExceptionMessage),
                      myExceptionPort,
                      MACH_MSG_TIMEOUT_NONE,
                      MACH_PORT_NULL);
        if (rc != MACH_MSG_SUCCESS) {
            return NULL;
        }
        
        fprintf(stderr ,"got message. Exception: %d. Code %lld. Subcode %lld\n", exc.exception, exc.code[0], exc.code[1]);
        break;
    }
    exit(4);
    return NULL;
}

void catchMACHExceptions() {
    kern_return_t rc;
    
    thisTask = mach_task_self();
    exception_mask_t mask = EXC_MASK_BAD_ACCESS |
    EXC_MASK_BAD_INSTRUCTION |
    EXC_MASK_ARITHMETIC |
    EXC_MASK_SOFTWARE |
    EXC_MASK_BREAKPOINT;
    
    // 创建一个异常端口
    rc = mach_port_allocate(thisTask,
                            MACH_PORT_RIGHT_RECEIVE,
                            &myExceptionPort);
    if (rc != KERN_SUCCESS) {
        fprintf(stderr, "unable to allocate port");
        exit(2);
    };
    
    rc = mach_port_insert_right(thisTask,
                                myExceptionPort,
                                myExceptionPort,
                                MACH_MSG_TYPE_MAKE_SEND);
    
    if (rc != KERN_SUCCESS) {
        fprintf(stderr, "unable to insert right");
        exit(2);
    };
    
    rc = task_set_exception_ports(thisTask,
                                  mask,
                                  myExceptionPort,
                                  EXCEPTION_DEFAULT,
                                  THREAD_STATE_NONE);
    
    
    if (rc != KERN_SUCCESS) {
        fprintf(stderr, "unable to set exception");
        exit(3);
    };
    
    pthread_t thread;
    pthread_create(&thread, NULL, exc_handler, NULL);
}

@end
