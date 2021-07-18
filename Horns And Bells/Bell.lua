@name angry_dog/angry dog's Bell
@inputs Bell
@outputs
@persist BellLoop:string BellEnd:string BellVolume BellPitch BellLevel BellToggled ToggleBellEnabled
@trigger 
if(first() | duped()){
    ToggleBellEnabled = 0
    BellLoop = "gsgtrainsounds/bells/ge_6731022a_steel_bell_2_loop.wav"
    BellEnd = "gsgtrainsounds/bells/ge_6731022a_steel_bell_2_end.wav"
    BellVolume = 1
    BellPitch = 100
    BellLevel = 100
}
if(ToggleBellEnabled){if(Bell&~Bell){if(!BellToggled){BellToggled=1}else{BellToggled=0} if(BellToggled){soundPlay(2,0,BellLoop) soundVolume(2,BellVolume) soundPitch(2,BellPitch) soundLevel(2,BellLevel)} if(!BellToggled){soundPlay(2,0,"") soundPlay(3,0,BellEnd) soundVolume(3,BellVolume) soundPitch(3,BellPitch) soundLevel(3,BellLevel)}}
}else{if(Bell&~Bell){soundPlay(2,0,BellLoop) soundVolume(2,BellVolume) soundPitch(2,BellPitch) soundLevel(2,BellLevel)} if(!Bell&~Bell){soundPlay(2,0,"") soundPlay(3,0,BellEnd) soundVolume(3,BellVolume) soundPitch(3,BellPitch) soundLevel(3,BellLevel)}}
