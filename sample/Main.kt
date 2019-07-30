/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*

  @author mustafa
  Created on Jul 29, 2019
*/
package cava.sample;

import cava.apple.foundation.*;
import cava.apple.uikit.*;


class IOSLauncher : IOSApplication.Delegate() {
    override fun createApplication(): IOSApplication {
        println("Create Application-->");

        return IOSApplication();
    }
}

fun main() {
    var pool = NSAutoreleasePool();
    UIApplication.main(arrayOf<String>(), IOSLauncher::class.java);
    pool.close()
}
    