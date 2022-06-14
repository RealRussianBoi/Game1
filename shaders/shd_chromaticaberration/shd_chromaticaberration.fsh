//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float OffsetX;
uniform float OffsetY;

void main()
{
	vec4 col = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	if(col != vec4(0.0)){
		gl_FragColor = vec4(texture2D(gm_BaseTexture, 
									  vec2(v_vTexcoord.x - OffsetX*0.142, v_vTexcoord.y - OffsetY*0.0948)).r, 
									  texture2D(gm_BaseTexture, 
									  vec2(v_vTexcoord.x + OffsetX*0.0943, v_vTexcoord.y - OffsetY*0.05829)).g, 
									  texture2D(gm_BaseTexture, vec2(v_vTexcoord.x - OffsetX*0.042, v_vTexcoord.y + OffsetY*0.0624)).b, 
									  1.0);
	}
	else{
		gl_FragColor = col;	
	}
}
