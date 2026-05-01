varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_flash;

void main()
{
    vec4 base = texture2D(gm_BaseTexture, v_vTexcoord);

    // Red tint
    vec3 purpleTint = vec3(0.2, 0.0, 0.3);
	
	// Limit flash strength
    float strength = u_flash * 0.5;

    // Blend between original color and red
    vec3 finalColor = mix(base.rgb, purpleTint, strength);

    gl_FragColor = vec4(finalColor, base.a) * v_vColour;
}