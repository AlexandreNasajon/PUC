def exibeHora(min):
    print('Tempo de permanÃªncia na escola - %02d:%02d'%(min//60,min%60))
    
def converteHorario(hora):
    hh=int(hora[0:2])
    mm=int(hora[3:5])    
    return hh*60+mm



ent=input('Hora de entrada (hh:mm)?')
sai=input('Hora de saÃ­da (hh:mm)?')

ent=converteHorario(ent)
sai=converteHorario(sai)
exibeHora(sai-ent)
