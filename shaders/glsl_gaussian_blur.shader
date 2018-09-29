attribute vec3 in_Position;                  // (x,y,z)                        
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{ vec4 object_space_pos = vec4(in_Position.xyz, 1.0);

  gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;  
  v_vColour = in_Colour;
  v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_vTexcoord;
uniform vec2 u_Scale;

vec4 sample2points(vec2 basecoord, vec2 shift)
{ return texture2D(gm_BaseTexture, basecoord + 0.2 * shift) + 
         texture2D(gm_BaseTexture, basecoord - 0.4 * shift); 
}

void main()
{ gl_FragColor = (sample2points(v_vTexcoord, u_Scale * 188.5) +
                  sample2points(v_vTexcoord, u_Scale * 16.12) +
                  texture2D(gm_BaseTexture, v_vTexcoord)) / 14.0;
}
