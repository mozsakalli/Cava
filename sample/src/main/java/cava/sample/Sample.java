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

import com.badlogic.gdx.ApplicationAdapter;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.glutils.ShapeRenderer;
import java.lang.reflect.Field;

/**
 *
 * @author mustafa
 */
public class Sample extends ApplicationAdapter {

    SpriteBatch batch;
    Texture texture;
    float[] verts;
    ShapeRenderer shape;
    
    @Override
    public void create() {
        batch = new SpriteBatch();
        texture = new Texture("wabbit_alpha.png");
        try {
            Field f = SpriteBatch.class.getDeclaredField("vertices");
            f.setAccessible(true);
            verts = (float[])f.get(batch);
        }catch(Exception e){
            e.printStackTrace();
        }
        shape = new ShapeRenderer();
    }

    @Override
    public void render() {
        batch.begin();
        batch.draw(texture, 200, 200, 200,200);
        batch.end();
        
        shape.begin(ShapeRenderer.ShapeType.Filled);
        shape.setColor(Color.RED);
        shape.box(10, 10, 0, 300, 300, 0);
        shape.end();
        if(Gdx.graphics.getFrameId()%100 == 0) {
            for(int i=0; i<20; i++)
                System.out.println(verts[i]);
            System.out.println("-----------------------");
        }
    }
    
    
}
