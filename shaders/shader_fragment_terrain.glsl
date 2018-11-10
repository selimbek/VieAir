#define M_PI 3.1415926535897932384626433832795

varying vec2 v_uv;
varying vec3 v_line_color;
varying float z;
uniform vec4 clippingPlanes[ 1 ];
varying vec3 vViewPosition;

void main()
{

        vec4 plane;


        plane.xyzw = vec4(0.0, 0.0, 1.0, .0);
        if ( dot( vViewPosition, plane.xyz ) > plane.w ) discard;


        vec4 temp;
        
        float alpha = sin(v_uv.y * M_PI) / 4.;
        temp = vec4(v_line_color, alpha);

        gl_FragColor = temp;
}