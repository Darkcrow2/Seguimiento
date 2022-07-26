clc;
clear; 

distancia = 10;

BarcoX(1) = 0;
BarcoY(1) = 0;
VelocidadBarco = 1;
 
EsquiadorX(1) = distancia;
EsquiadorY(1) = 0;
VelocidadEsquiador = 1;

tiempo(1) = 0;

delta = 0.1;

title('GRÁFICA DE PERSECUCIÓN');
xlabel('EJE X', 'FontWeight', 'bold');
ylabel('EJE Y', 'FontWeight', 'bold');

hold on;

plot(BarcoX, BarcoY, 'r');
plot(EsquiadorX, EsquiadorY, 'b');
legend('Barco', 'Esquiador', 'AutoUpdate','off');

for i = 1: 500
    tiempo(i + 1) = tiempo(i) + delta;
    BarcoX(i + 1) = 0;
    BarcoY(i + 1) = BarcoY(i) + (VelocidadBarco*delta);
    
    EsquiadorX(i + 1) = EsquiadorX(i) - ( (VelocidadEsquiador * delta * EsquiadorX(i) )/distancia );
    EsquiadorY(i + 1) = EsquiadorY(i) + ( VelocidadEsquiador * delta *( ( BarcoY(i) - EsquiadorY(i) )/distancia ) );
    
    pause(0.01);
    
    %plot(BarcoX, BarcoY, 'r', EsquiadorX, EsquiadorY, 'b', 'LineWidth', 2);  
    plot(BarcoX, BarcoY, 'r');
    plot(EsquiadorX, EsquiadorY, 'b');
end
hold off;