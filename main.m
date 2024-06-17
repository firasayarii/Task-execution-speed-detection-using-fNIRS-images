donnees_nirs = load('2022_06_03_Time_10_16_49_conv.nirs', '-mat');

% Calculer le minimum pour chaque colonne
min_values = min(d);

% Calculer le maximum pour chaque colonne
max_values = max(d);

% Calculer la moyenne pour chaque colonne
mean_values = mean(d);
