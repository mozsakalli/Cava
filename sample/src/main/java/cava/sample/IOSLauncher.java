/*
 * Copyright (C) 2019 Digitoy Games.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package cava.sample;

import cava.apple.foundation.NSAutoreleasePool;
import cava.apple.uikit.UIApplication;
import com.cava.gdx.IOSApplication;

/**
 *
 * @author mustafa
 */
public class IOSLauncher extends IOSApplication.Delegate {

    @Override
    protected IOSApplication createApplication() {
        System.out.println("-- create application --");
        return new IOSApplication(new LibgdxSample());
    }

    public static void main() {
        for(int i=0; i<10000; i++) {
            Object[] src = new Object[200];
            for(int k=0; k<src.length; k++)
                src[k] = new Object();
            src = src.clone();
        }
        NSAutoreleasePool pool = new NSAutoreleasePool();
        UIApplication.main((String[])null, null, IOSLauncher.class);
        pool.close();
    }
}
