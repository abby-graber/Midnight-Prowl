varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_flash;

void main()
{
    vec4 base = texture2D(gm_BaseTexture, v_vTexcoord);

    // Red tint
    vec3 redTint = vec3(1.0, 0.0, 0.0);

    // Blend between original color and red
    vec3 finalColor = mix(base.rgb, redTint, u_flash);

    gl_FragColor = vec4(finalColor, base.a) * v_vColour;
}