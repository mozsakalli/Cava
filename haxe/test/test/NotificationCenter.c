//
//  NotificationCenter.c
//  test
//
//  Created by Mustafa Özsakallı on 17.10.2019.
//  Copyright © 2019 Mustafa Özsakallı. All rights reserved.
//

#include "NotificationCenter.h"

typedef struct Notification {
    char* name;
    void* method;
} Notification;
