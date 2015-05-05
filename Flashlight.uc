class Flashlight extends UTWeapon;

var bool LightIsOn;
var SpotLightComponent FlashLightComponent;
var bool Light2IsOn;
var SpotLightComponent FlashLightComponent2;
var bool Light3IsOn;
var SpotLightComponent FlashLightComponent3;
var bool Light4IsOn;
var SpotLightComponent FlashLightComponent4;


defaultproperties
{
begin object Class=SpotLightComponent Name=SpotLightComponent0
InnerConeAngle=28.000000
OuterConeAngle=30.000000
Brightness=1.5
Radius=350
bEnabled = true

LightColor=(R=0,G=120,B=174)
CastShadows=true
end object
begin object Class=SpotLightComponent Name=SpotLightComponent3
InnerConeAngle=13.000000
OuterConeAngle=25.000000
Brightness=3.1
Radius=400
bEnabled = true

LightColor=(R=255,G=255,B=255)
CastShadows=true
end object

begin object Class=SpotLightComponent Name=SpotLightComponent2
InnerConeAngle=7.000000
OuterConeAngle=13.000000
Brightness=3.0
Radius=400
bEnabled = true
LightColor=(R=255,G=255,B=255)
CastShadows=true
end object

begin object Class=SpotLightComponent Name=SpotLightComponent4
InnerConeAngle=25.000000
OuterConeAngle=28.000000
Brightness=3.0
Radius=400
bEnabled = true
LightColor=(R=168,G=204,B=255)
CastShadows=true
end object


Components.Add(SpotLightComponent0)
Components.Add(SpotLightComponent3)
Components.Add(SpotLightComponent2)
Components.Add(SpotLightComponent4)

FlashLightComponent = SpotLightComponent0
FlashLightComponent3 = SpotLightComponent3
FlashLightComponent2 = SpotLightComponent2
FlashLightComponent4 = SpotLightComponent4
}

simulated function StopFire(byte FireModeNum)
{
	Super.StopFire(FireModeNum);

	if(LightIsOn) {
		LightIsOn = false;
		FlashLightComponent.SetEnabled(false);
	}
	else {
		LightIsOn = true;
		FlashLightComponent.SetEnabled(true);
	}
	if(Light2IsOn) {
		Light2IsOn = false;
		FlashLightComponent2.SetEnabled(false);
	}
	else {
		Light2IsOn = true;
		FlashLightComponent2.SetEnabled(true);
	}
	if(Light3IsOn) {
		Light3IsOn = false;
		FlashLightComponent3.SetEnabled(false);
	}
	else {
		Light3IsOn = true;
		FlashLightComponent3.SetEnabled(true);
	}
	if(Light4IsOn) {
		Light4IsOn = false;
		FlashLightComponent4.SetEnabled(false);
	}
	else {
		Light4IsOn = true;
		FlashLightComponent4.SetEnabled(true);
	}
}