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

import com.badlogic.gdx.ApplicationListener;

/**
 *
 * @author mustafa
 */
public class LibgdxSample implements ApplicationListener {

    @Override
    public void create() {
    }

    @Override
    public void resize(int i, int i1) {
    }

    @Override
    public void render() {
        byte[] bytes = new byte[1024*1024];
        System.out.println("Not supported render "+bytes.length);
    }

    @Override
    public void pause() {
    }

    @Override
    public void resume() {
    }

    @Override
    public void dispose() {
    }

}
