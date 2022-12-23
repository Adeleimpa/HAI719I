#version 330 core

// Output data
out vec4 FragColor;
// Ajouter une variable interpolée o_color venant du vertex shader
//
in vec3 o_color;

uniform sampler2D texture_local;
in vec2 coord_txt;

void main()
{

    // Mettre à jour la couleur avec la variable interpolée venant du vertex shader
    FragColor = texture(texture_local, coord_txt);

    vec4 color;
    float intensity;

    // changer la texture en niveaux de gris
    /*vec4 c = FragColor;
    intensity = c.r * 0.30 + c.g * 0.59 + c.b * 0.11;

    if (intensity <= 0.5){
        color = vec4(0.0+intensity, 0.0+intensity, 0.0+intensity, 1.0);
    }
    else {
        color = vec4(1.0+intensity, 1.0+intensity, 1.0+intensity, 1.0);
    }
    FragColor = color;*/


}
