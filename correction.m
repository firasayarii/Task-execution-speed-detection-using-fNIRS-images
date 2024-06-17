% Initialiser un cell array pour stocker les matrices résultantes
segments = cell(height(onset), 1);

% Trouver les indices dans 't' les plus proches de chaque valeur dans 'onset'
indices = arrayfun(@(x) find(abs(t-x) == min(abs(t-x)), 1, 'first'), onset);

% Ajouter un point de fin pour gérer le dernier segment
indices(end+1) = length(t) + 1;

% Segmenter 'm' en matrices selon 'onset'
for i = 1:length(indices)-1
    startIdx = indices(i);
    endIdx = indices(i+1)-1; % Soustraire 1 pour ne pas inclure le début du prochain segment
    segments{i} = m(startIdx:endIdx, :);
end

% Maintenant, 'segments' contient vos matrices segmentées
