cbuffer cbPerVertex : register(b0)
{
    float4x4 wvp;
}

struct VS_INPUT
{
    float4 inPos : POSITION;
    float4 inColor : COLOR;
};

struct VS_OUTPUT
{
    float4 outPosition : SV_POSITION;
    float4 outColor : COLOR;
};

VS_OUTPUT main(VS_INPUT input)
{
    VS_OUTPUT output;
    output.outPosition = mul(input.inPos, wvp);
    output.outColor = input.inColor;
    return output;
}