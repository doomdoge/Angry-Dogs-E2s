@name angry_dog/angry dog's Horn & Bell
@inputs Horn Quil Bell
@outputs
@persist HornLoop:string HornEnd:string HornVolume HornPitch HornLevel BellLoop:string BellEnd:string BellVolume BellPitch BellLevel BellToggled ToggleBellEnabled QuilLoop:string QuilEnd:string QuilVolume QuilPitch QuilLevel
@trigger 
#better than magnums lol
if(first() | duped()){
    ToggleBellEnabled = 0
    HornLoop = "traincraft101trainsounds/horns/k5la_badass_loop_1.wav"
    HornEnd = "traincraft101trainsounds/horns/k5la_badass_end_1.wav"
    HornVolume = 1
    HornPitch = 100
    HornLevel = 100
    BellLoop = "gsgtrainsounds/bells/ge_6731022a_steel_bell_2_loop.wav"
    BellEnd = "gsgtrainsounds/bells/ge_6731022a_steel_bell_2_end.wav"
    BellVolume = 1
    BellPitch = 100
    BellLevel = 100    
    QuilLoop = "traincraft101trainsounds/horns/k5la_badass_quill_loop_1.wav"
    QuilEnd = "traincraft101trainsounds/horns/k5la_badass_quill_end_1.wav"
    QuilVolume = 1
    QuilPitch = 100
    QuilLevel = 100
    
}
if(Horn&~Horn){soundPlay(0,0,HornLoop) soundVolume(0,HornVolume) soundPitch(0,HornPitch) soundLevel(0,HornLevel)}
if(!Horn&~Horn){soundPlay(0,0,"") soundPlay(1,0,HornEnd) soundVolume(1,HornVolume) soundPitch(1,HornPitch) soundLevel(1,HornLevel)}
if(Quil&~Quil){soundPlay(5,0,QuilLoop) soundVolume(5,QuilVolume) soundPitch(5,QuilPitch) soundLevel(5,QuilLevel)}
if(!Quil&~Quil){soundPlay(5,0,"") soundPlay(6,0,QuilEnd) soundVolume(6,QuilVolume) soundPitch(6,QuilPitch) soundLevel(6,QuilLevel)}
if(ToggleBellEnabled){if(Bell&~Bell){if(!BellToggled){BellToggled=1}else{BellToggled=0} if(BellToggled){soundPlay(2,0,BellLoop) soundVolume(2,BellVolume) soundPitch(2,BellPitch) soundLevel(2,BellLevel)} if(!BellToggled){soundPlay(2,0,"") soundPlay(3,0,BellEnd) soundVolume(3,BellVolume) soundPitch(3,BellPitch) soundLevel(3,BellLevel)}}
}else{if(Bell&~Bell){soundPlay(2,0,BellLoop) soundVolume(2,BellVolume) soundPitch(2,BellPitch) soundLevel(2,BellLevel)} if(!Bell&~Bell){soundPlay(2,0,"") soundPlay(3,0,BellEnd) soundVolume(3,BellVolume) soundPitch(3,BellPitch) soundLevel(3,BellLevel)}}
