
error=1; %error del 100%
P1=200; %presion en el estado uno
V1=2; %volumen 1 en pies (ft)
X=0; % desplazamiento
V2=3; % volumen en 2 para iteracion 0
P2=(P1*V1)/V2% Presion dos para iteracion cero
Vdes=0;%volumen desplazado o de desplazamiento
t=0;%numero de iteraciones 
while error>0.001 %inicio de iteraciones
 Ppas=P2;%guardado de Presion dos anterior
 X=(P2*(pi/4)*(100))/4;% se calcula el valor del desplazamiento in
 Xf=X/12;%desplazamiento en pies (ft)
 Wf=(1/2)*4*(X^2);%Trabajo 
 Vdes=X*(100)*(pi/4);%Volumen desplazado o de desplazamiento in3
 Vdes=Vdes/1728;%Volumen desplazado o de desplazamiento en ft3
 V2=Vdes+3;% volumen final
 P2=(P1*V1)/V2;%presion final
 error=abs(P2-Ppas);%calculo del erro
 t=t+1;%numero de iteraciones
end
t
P2 %muestra de resultados
X
V2