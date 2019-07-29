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
import com.cava.gdx.IOSApplicationConfiguration;
import java.util.Random;

/**
 *
 * @author mustafa
 */
public class IOSLauncher extends IOSApplication.Delegate {

    @Override
    protected IOSApplication createApplication() {
        IOSApplicationConfiguration cfg = new IOSApplicationConfiguration();
        cfg.hideHomeIndicator = true;
        cfg.statusBarVisible = false;
        return new IOSApplication(new BunnyMark(), cfg);
    }

    public static void main() {
        Random r = new Random();
        for(int i=0; i<10; i++) System.out.println("r = "+r.nextInt());
        NSAutoreleasePool pool = new NSAutoreleasePool();
        UIApplication.main((String[])null, null, IOSLauncher.class);
        pool.close();
    }
}
