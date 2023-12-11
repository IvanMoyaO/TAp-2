temps = readtable("G7.csv");
o2 = readtable("G7_O2.csv");

t = temps{:,2}; % Tiempo
T1 = temps{:,3}; % Agua interior arriba
T2 = temps{:,4}; % AGua interior abajo
T3 = temps{:,5}; % Pared externa calorimetro
T4 = temps{:,6}; % Gases de salida
T5 = temps{:,7}; % Aire ambiente
T6 = temps{:,8}; % Vaso dewar 
T7 = temps{:,9}; % Vaso dewar

to2 = o2{:,2}; % Tiempo 
po2 = o2{:,2}; % %O2


%% General
figure;
title("Tiempo-Temperaturas");
xlabel("Tiempo (hora:minuto)");
ylabel("Temperatura (ºC)");

hold on;
grid on;
plot(t, T1, "DisplayName", "Agua Interior (Arriba)");
plot(t, T2, "DisplayName", "Agua Interior (Abajo)");
plot(t, T3, "DisplayName", "Pared Externa Calorimetro");
plot(t, T4, "DisplayName", "Gases de Salida Calorimetro");
plot(t, T5, "DisplayName", "Aire Ambiente");
plot(t, T6, "DisplayName", "Vaso Dewar");
plot(t, T7, "DisplayName", "Vaso Dewar");
legend;

set(gcf, "PaperPosition", params)
saveas(gcf, "Graficos/general", "png")

%% Agua
figure;
title("Tiempo-Temperatura Agua");
xlabel("Tiempo (hora:minuto)");
ylabel("Temperatura (ºC)");

hold on;
grid on;
plot(t, T1, "DisplayName", "Agua Interior (Arriba)");
plot(t, T2, "DisplayName", "Agua Interior (Abajo)");
legend;

set(gcf, "PaperPosition", params)
saveas(gcf, "Graficos/agua", "png")

%% Pared Calorimetro
figure;
title("Tiempo-Temperatura Calorimetro");
xlabel("Tiempo (hora:minuto)");
ylabel("Temperatura (ºC)");

hold on;
grid on;
plot(t, T3, "DisplayName", "Pared Externa Calorimetro");
legend;

set(gcf, "PaperPosition", params)
saveas(gcf, "Graficos/calorimetro", "png")

%% Gases
figure;
title("Tiempo-Temperatura Gases");
xlabel("Tiempo (hora:minuto)");
ylabel("Temperatura (ºC)");

hold on;
grid on;

plot(t, T4, "DisplayName", "Gases de Salida Calorimetro");
plot(t, T5, "DisplayName", "Aire Ambiente");

legend;

set(gcf, "PaperPosition", params)
saveas(gcf, "Graficos/gases", "png")

%% Vaso Dewar
figure;
title("Tiempo-Temperatura Vaso Dewar");
xlabel("Tiempo (hora:minuto)");
ylabel("Temperatura (ºC)");

hold on;
grid on;
plot(t, T6, "DisplayName", "Vaso Dewar");
plot(t, T7, "DisplayName", "Vaso Dewar");
legend;

set(gcf, "PaperPosition", params)
saveas(gcf, "Graficos/dewar", "png")