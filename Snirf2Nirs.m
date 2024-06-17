function Snirf2Nirs(rootdir, options)
    if ~exist('rootdir','var')
        rootdir = pwd;
    end
    if ~exist('options','var')
        options = 'sort';
    end
    files = DataFilesClass(rootdir, 'snirf');
    files = files.files;
    for ii = 1:length(files)
        if files(ii).isdir
            continue
        end
        fname = fullfile(files(ii).folder, files(ii).name);
        s = SnirfClass(fname);
        n = NirsClass(s);
        if optionExists(options, 'sort')
            n.SortData();
        end
        [~, fnameWithoutExtension] = fileparts(fname);
        fnameNew = fullfile(files(ii).folder, [fnameWithoutExtension, '.nirs']);
        fprintf('Converting %s to %s\n', fname, fnameNew)
        n.Save(fnameNew);
    end 
end
