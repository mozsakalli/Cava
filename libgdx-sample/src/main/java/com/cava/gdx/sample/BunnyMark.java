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

package com.cava.gdx.sample;

import cava.annotation.Resource;
import com.badlogic.gdx.ApplicationAdapter;
import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.InputAdapter;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author mustafa
 */
@Resource({
"bunnymark/wabbit_alpha.png",
"bunnymark/font.fnt",
"bunnymark/font.png"
})
public class BunnyMark extends ApplicationAdapter {

    Texture texture;
    SpriteBatch batch;
    List<Bunny> bunnies;
    BitmapFont labelFont;
    
    class Bunny {
        public float x,y,vx,vy,r,vr;
        public Bunny() {
            x = (float)Math.random() * Gdx.graphics.getWidth();
            y = (float)Math.random() * Gdx.graphics.getHeight();
            r = (float)(Math.random() * 360);
            vx = (float)(-10 + Math.random() * 20);
            vy = (float)(-10 + Math.random() * 20);
            vr = (float)(-3 + Math.random() * 6);
        }
        
        public void draw() {
            batch.draw(texture, x, y, texture.getWidth()/2, texture.getHeight()/2, texture.getWidth(),texture.getHeight(),
                    1,1,r,0,0,texture.getWidth(),texture.getHeight(),false,false);
        }
    }
    
    @Override
    public void create() {
        texture = new Texture("wabbit_alpha.png");
        batch = new SpriteBatch(5000);
        bunnies = new ArrayList();
        labelFont = new BitmapFont(Gdx.files.internal("font.fnt"), Gdx.files.internal("font.png"), false);
        
        moreBunnies(100);
        Gdx.input.setInputProcessor(new InputAdapter() {
            @Override
            public boolean touchDown(int screenX, int screenY, int pointer, int button) {
                moreBunnies(100);
                return true;
            }
        });
    }

    void moreBunnies(int amount) {
        for(int i=0; i<amount; i++)
            bunnies.add(new Bunny());
    }
    @Override
    public void render() {
        Gdx.gl.glClearColor(0, 0, 0, 1);
        Gdx.gl.glClear(GL20.GL_COLOR_BUFFER_BIT);

        Graphics g = Gdx.graphics;
        int w = g.getWidth();
        int h = g.getHeight();
        
        batch.begin();
        for(Bunny b : bunnies) {
            b.x += b.vx;
            if(b.x < 0) {
                b.x = 0;
                b.vx = (float)(Math.random() * 4);
            } else if(b.x > w) {
                b.x = w;
                b.vx = -(float)(Math.random() * 4);
            }
            b.y += b.vy;
            if(b.y < 0) {
                b.y = 0;
                b.vy = (float)(Math.random() * 4);
            } else if(b.y > h) {
                b.y = h;
                b.vy = -(float)(Math.random() * 4);
            }
            b.r += b.vr;
            
            b.draw();
        }
        labelFont.draw(batch, "Bunnies:"+bunnies.size(), 10, h-60);
        labelFont.draw(batch, "FPS:"+Gdx.graphics.getFramesPerSecond(), 10, h-100);
        
        batch.end();
    }

    
}
