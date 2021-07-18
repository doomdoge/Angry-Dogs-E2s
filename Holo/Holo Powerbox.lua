@name angry_dog/angry dog's Holo PowerBox
@inputs Open
@outputs 
@persist Color:vector Offset:vector Size:vector Angle:angle

#Config

Color = vec(100,100,100)
Offset = vec(0,0,0)
Size = vec(1,1,1)
Angle = ang(-90,0,0)


#entity():setMaterial("models/proppertextures/invisible")
holoCreate(0)
holoParent(0,entity())
holoModel(0,"models/anytrains/props/electrics/powerbox01.mdl")
holoColor(0,Color)
holoPos(0,entity():toWorld(Offset))
holoScale(0,Size)
holoAng(0,entity():toWorld(Angle))
holoBodygroup(0,1,Open)
