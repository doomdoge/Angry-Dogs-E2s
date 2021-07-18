@name angry_dog/angry dog's Horn
@inputs Horn Quil
@outputs
@persist HornLoop:string HornEnd:string HornVolume HornPitch HornLevel QuilLoop:string QuilEnd:string QuilVolume QuilPitch QuilLevel
@trigger 
if(first() | duped()){
    HornLoop = "traincraft101trainsounds/horns/k5la_badass_loop_1.wav"
    HornEnd = "traincraft101trainsounds/horns/k5la_badass_end_1.wav"
    HornVolume = 1
    HornPitch = 100
    HornLevel = 100
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
