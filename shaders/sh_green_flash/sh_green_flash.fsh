//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
uniform float u_time;

void main() {
    vec4 base = texture2D(gm_BaseTexture, v_vTexcoord);

    // Create a horizontal moving band (left → right)
    float wave = abs(v_vTexcoord.x - u_time);

    // Thin band
    float band = 1.0 - smoothstep(0.0, 0.1, wave);

    // Green flash color
    vec3 green = vec3(0.0, 1.0, 0.0);

    // Mix original color with green based on band
    vec3 final_color = mix(base.rgb, green, band);

    gl_FragColor = vec4(final_color, base.a);
}
