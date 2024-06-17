classdef DataFilesClass
    properties
        rootdir     % Répertoire racine
        extension   % Extension des fichiers à rechercher
        files       % Liste des fichiers trouvés
    end
    
    methods
        function obj = DataFilesClass(rootdir, extension)
            % Constructeur
            obj.rootdir = rootdir;
            obj.extension = extension;
            obj.files = obj.findFiles();
        end
        
        function files = findFiles(obj)
            % Méthode pour trouver les fichiers dans le répertoire racine avec l'extension spécifiée
            files = dir(fullfile(obj.rootdir, ['*', obj.extension]));
        end
    end
end
