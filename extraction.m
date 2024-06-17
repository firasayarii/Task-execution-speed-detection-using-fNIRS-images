% Initialisation du nouveau tableau
nouveauTableau = zeros(128, 126);

% Parcours de la deuxième colonne
for i = 1:size(Data, 1) % Boucle sur les lignes
    % Accès à la cellule dans la deuxième colonne
    tableau = Data{i,2};
    
    % Vérification des dimensions du tableau
    disp(['Dimensions du tableau pour la ligne ' num2str(i) ': ' num2str(size(tableau))]);
    
    % Convertir le tableau 9x14 en un vecteur colonne
    vecteur = reshape(tableau, [], 1);
    
    % Assignation du vecteur au nouveau tableau
    nouveauTableau(i, :) = vecteur;
end

