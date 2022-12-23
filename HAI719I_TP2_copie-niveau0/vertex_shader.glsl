#version 330 core
// ajouter une variable uniform pour tous les sommets de type float permettant la mise à l'échelle
uniform float scale;
// ajouter une variable uniform pour tous les sommets de type vec3 permettant d'appliquer une translation au modèle
uniform vec3 translation;
// i.e. a appliquer sur tous les sommets
//---------

//---------
// ajouter une variable o_color de type vec3 interpolée a envoyer au fragment shader
out vec3 o_color;

out vec2 coord_txt;

// Input vertex data, different for all executions of this shader.
layout(location = 0) in vec3 vertexPosition_modelspace;

// Ajouter un attribut de sommet color, contenant les couleurs pour chaque sommet à ( location = 1 )
layout(location = 1) in vec3 color_normals;

layout(location = 2) in vec2 coord;

void main(){

    //Mettre à jour ce code pour appliquer la translation et la mise à l'échelle
    gl_Position =  vec4(vertexPosition_modelspace*scale+ translation,1);

    //Assigner la normale à la variable interpolée color
    o_color = color_normals;

    coord_txt = coord;
}