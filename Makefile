MaxM=10
MaxEval=1000
semilla=123
prog=pevoca
archivo_configuracion=conf-AK.config
directorio=instancias
ejecutable=AKsh.sh
NSeeds=3
MaxTime=0
Min=0 #1=minimizar, 0=maximizar
isParallel = 1 # 1=paralelo | 0= secuencial
archivo_candidatas=candidatas.config

$(prog): 
	g++ -Wall pevoca.cpp -o pevoca -pthread

clean:
	rm -f pevoca
	rm -f *.res
	rm -f *~
	rm -f *.o
	rm -f *.conv

exe:$(prog)
	./$(prog) $(ejecutable) $(archivo_configuracion) $(directorio) $(semilla) $(NSeeds) $(MaxM) $(MaxEval) $(MaxTime) $(Min) $(archivo_candidatas) $(isParallel)