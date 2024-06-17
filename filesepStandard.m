function path = filesepStandard(path)
    % Remplace les séparateurs de fichier non standard par le séparateur standard du système
    path = strrep(path, '\', filesep);
    path = strrep(path, '/', filesep);
end