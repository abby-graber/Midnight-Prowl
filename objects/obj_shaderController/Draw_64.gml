shader_set(sh_ambiance);

var u_strength = shader_get_uniform(sh_ambiance, "u_strength");
var u_radius   = shader_get_uniform(sh_ambiance, "u_radius");
var u_softness = shader_get_uniform(sh_ambiance, "u_softness");

// tweak these values
shader_set_uniform_f(u_strength, 0.1);
shader_set_uniform_f(u_radius, 0.5);
shader_set_uniform_f(u_softness, 0.5);

draw_surface(application_surface, 0, 0);

shader_reset();