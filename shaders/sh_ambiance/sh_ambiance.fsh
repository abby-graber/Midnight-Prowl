varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_strength;   // overall tint strength
uniform float u_radius;     // how far the center color extends
uniform float u_softness;   // smoothness of transition

void main()
{
    vec4 col = texture2D(gm_BaseTexture, v_vTexcoord) * v_vColour;

    // Colors
    vec3 purple = vec3(0.45, 0.25, 0.65);
    vec3 pink   = vec3(0.9, 0.3, 0.6);

    // Distance from center (0.5, 0.5)
    vec2 center = vec2(0.5, 0.5);
    float dist = distance(v_vTexcoord, center);

    // Smooth gradient factor
    float t = smoothstep(u_radius, u_radius + u_softness, dist);

    // Blend center → edge
    vec3 gradientColor = mix(purple, pink, t);

    // Apply tint
    col.rgb = mix(col.rgb, gradientColor, u_strength);

    gl_FragColor = col;
}