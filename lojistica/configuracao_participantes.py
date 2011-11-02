
def play_sound():
    import subprocess
    from time import sleep
    import os
    p = subprocess.Popen('/usr/bin/mpg123 /tmp/music.mp3', shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    sleep(5)
    os.kill(p.pid, 9)


def sleep(minutos):
    from time import sleep as c   
    c(minutos*60)
    #c(minutos)



from random import choice, sample

part = None
participantes = []
while part != '0':
    part = raw_input('Digite o nome de um participante (0 para terminar): ')
    if part != '0': participantes.append(part)

# tira as duplas
amostra = sample(participantes, len(participantes))


a = amostra.pop(0)
b = amostra.pop(0)
amostra.append(a)
amostra.append(b)    

print '***************************'
print 'PRIMEIRO ROUND: PILOTO: %s\nCO-PILOTO: %s' % (a, b)
print '***************************'

sleep(7)
    
while amostra != []:
    a = amostra.pop(0)
    amostra.append(a)
        
    print '***************************'    
    print 'NOVO CO-PILOTO: %s' % a
    print '***************************'
    play_sound()
    sleep(7)
        
        
        
               


    

    


