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

/**
 *
 * @author mustafa
 */
import org.jbox2d.collision.shapes.CircleShape;
import org.jbox2d.collision.shapes.PolygonShape;
import org.jbox2d.common.Vec2;
import org.jbox2d.dynamics.Body;
import org.jbox2d.dynamics.BodyDef;
import org.jbox2d.dynamics.BodyType;
import org.jbox2d.dynamics.FixtureDef;
import org.jbox2d.dynamics.World;
import org.jbox2d.dynamics.joints.RevoluteJointDef;

/**
 *
 * @author mustafa
 */
public class JBox {
    
    public static class Scene {
        private final World world;
        private Body axis;
        private Body reel;
        private long lastCalculated;
        private final long startTime;

        public Scene() {
            world = new World(new Vec2(0, -9.8f));
            initAxis();
            initReel();
            joinReelToAxis();
            initBalls();
            lastCalculated = System.currentTimeMillis();
            startTime = lastCalculated;
        }

        private void initAxis() {
            final BodyDef axisDef = new BodyDef();
            axisDef.type = BodyType.STATIC;
            axisDef.position = new Vec2(3, 3);
            axis = world.createBody(axisDef);

            final CircleShape axisShape = new CircleShape();
            axisShape.setRadius(0.02f);
            axisShape.m_p.set(0, 0);

            final FixtureDef axisFixture = new FixtureDef();
            axisFixture.shape = axisShape;
            axis.createFixture(axisFixture);
        }

        private void initReel() {
            final BodyDef reelDef = new BodyDef();
            reelDef.type = BodyType.DYNAMIC;
            reelDef.position = new Vec2(3, 3);
            reel = world.createBody(reelDef);

            final FixtureDef fixture = new FixtureDef();
            fixture.friction = 0.5f;
            fixture.restitution = 0.4f;
            fixture.density = 1;

            final int parts = 30;
            for (int i = 0; i < parts; ++i) {
                final PolygonShape shape = new PolygonShape();
                final double angle1 = i / (double) parts * 2 * Math.PI;
                final double x1 = 2.7 * Math.cos(angle1);
                final double y1 = 2.7 * Math.sin(angle1);
                final double angle2 = (i + 1) / (double) parts * 2 * Math.PI;
                final double x2 = 2.7 * Math.cos(angle2);
                final double y2 = 2.7 * Math.sin(angle2);
                final double angle = (angle1 + angle2) / 2;
                final double x = 0.01 * Math.cos(angle);
                final double y = 0.01 * Math.sin(angle);

                shape.set(new Vec2[] { new Vec2((float) x1, (float) y1), new Vec2((float) x2, (float) y2),
                        new Vec2((float) (x2 - x), (float) (y2 - y)), new Vec2((float) (x1 - x), (float) (y1 - y)) }, 4);
                fixture.shape = shape;
                reel.createFixture(fixture);
            }
        }

        private void initBalls() {
            final float ballRadius = 0.15f;

            final BodyDef ballDef = new BodyDef();
            ballDef.type = BodyType.DYNAMIC;
            final FixtureDef fixtureDef = new FixtureDef();
            fixtureDef.friction = 0.3f;
            fixtureDef.restitution = 0.3f;
            fixtureDef.density = 0.2f;
            final CircleShape shape = new CircleShape();
            shape.m_radius = ballRadius;
            fixtureDef.shape = shape;

            for (int i = 0; i < 6; ++i) {
                for (int j = 0; j < 6; ++j) {
                    final float x = (j + 0.5f) * (ballRadius * 2 + 0.01f);
                    final float y = (i + 0.5f) * (ballRadius * 2 + 0.01f);
                    ballDef.position.x = 3 + x;
                    ballDef.position.y = 3 + y;
                    Body body = world.createBody(ballDef);
                    body.createFixture(fixtureDef);

                    ballDef.position.x = 3 - x;
                    ballDef.position.y = 3 + y;
                    body = world.createBody(ballDef);
                    body.createFixture(fixtureDef);

                    ballDef.position.x = 3 + x;
                    ballDef.position.y = 3 - y;
                    body = world.createBody(ballDef);
                    body.createFixture(fixtureDef);

                    ballDef.position.x = 3 - x;
                    ballDef.position.y = 3 - y;
                    body = world.createBody(ballDef);
                    body.createFixture(fixtureDef);
                }
            }
        }

        private void joinReelToAxis() {
            final RevoluteJointDef jointDef = new RevoluteJointDef();
            jointDef.bodyA = axis;
            jointDef.bodyB = reel;
            world.createJoint(jointDef);
        }

        public void calculate() {
            final long currentTime = System.currentTimeMillis();
            int timeToCalculate = (int) (currentTime - lastCalculated);
            final long relativeTime = currentTime - startTime;
            while (timeToCalculate > 10) {
                final int period = (int) ((relativeTime + 5000) / 10000);
                reel.applyTorque(period % 2 == 0 ? 8f : -8f);
                world.step(0.01f, 20, 40);
                lastCalculated += 10;
                timeToCalculate -= 10;
            }
            lastCalculated = System.currentTimeMillis();
        }

        public World getWorld() {
            return world;
        }
    }   
    
    Scene scene = new Scene();
    
    void render() {
        /*
        RenderContext.setFillStyle("white");
        RenderContext.setStrokeStyle("black");
        RenderContext.fillRect(0, 0, 600, 600);
        RenderContext.save();
        RenderContext.translate(0, 600);
        RenderContext.scale(1, -1);
        RenderContext.scale(100, 100);
        RenderContext.setLineWidth(0.01f);
        for (Body body = scene.getWorld().getBodyList(); body != null; body = body.getNext()) {
            final Vec2 center = body.getPosition();
            RenderContext.save();
            RenderContext.translate(center.x, center.y);
            RenderContext.rotate(body.getAngle());
            for (Fixture fixture = body.getFixtureList(); fixture != null; fixture = fixture.getNext()) {
                final Shape shape = fixture.getShape();
                if (shape.getType() == ShapeType.CIRCLE) {
                    final CircleShape circle = (CircleShape) shape;
                    RenderContext.beginPath();
                    RenderContext.arc(circle.m_p.x, circle.m_p.y, circle.getRadius(), 0, Math.PI * 2, true);
                    RenderContext.closePath();
                    RenderContext.stroke();
                } else if (shape.getType() == ShapeType.POLYGON) {
                    final PolygonShape poly = (PolygonShape) shape;
                    final Vec2[] vertices = poly.getVertices();
                    RenderContext.beginPath();
                    RenderContext.moveTo(vertices[0].x, vertices[0].y);
                    for (int i = 1; i < poly.getVertexCount(); ++i) {
                        RenderContext.lineTo(vertices[i].x, vertices[i].y);
                    }
                    RenderContext.closePath();
                    RenderContext.stroke();
                }
            }
            RenderContext.restore();
        }
        RenderContext.restore();    
        */
    }
    
    static JBox jb;
    public static void main() {
        if(jb==null) jb = new JBox();
        final long theStart = System.currentTimeMillis();
        jb.scene.calculate();
        final int theDuration = (int) (System.currentTimeMillis() - theStart);
        jb.render();
    }
    
}
