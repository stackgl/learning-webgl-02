precision mediump float;

attribute vec3 aPosition;
attribute vec3 aColor;

uniform mat4 uModelView;
uniform mat4 uProjection;

varying vec3 vColor;

void main() {
  gl_Position = uProjection * uModelView * vec4(aPosition, 1.0);
  vColor = aColor;
}
