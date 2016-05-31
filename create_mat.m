function create_mat(name)
    fprintf('reading X_tr ...... '); X_tr = double(csvread([name, '/X_tr'])); fprintf('done\n');
    fprintf('reading Y_tr ...... '); Y_tr = double(csvread([name, '/Y_tr'])); fprintf('done\n');
    fprintf('reading X_tt ...... '); X_tt = double(csvread([name, '/X_tt'])); fprintf('done\n');
    fprintf('reading Y_tt ...... '); Y_tt = double(csvread([name, '/Y_tt'])); fprintf('done\n');
    
    M = max(max(abs([X_tr; X_tt])));
    X_tr = X_tr ./ M;
    X_tt = X_tt ./ M;
    
    fprintf('proccessing ...... ');
    N = size(X_tr, 1);
    V = round(N / 6);
    randseed = randperm(N);
    X1 = X_tr(randseed(V+1:N), :);
    X2 = Y_tr(randseed(V+1:N), :);
    XV1 = X_tr(randseed(1:V), :);
    XV2 = Y_tr(randseed(1:V), :);
    XTe1 = X_tt;
    XTe2 = Y_tt;
    fprintf('done\n');
    
    fprintf('saving file ...... ');
    filename = [name, '.mat'];
    save(filename, 'X1', 'X2', 'XV1', 'XV2', 'XTe1', 'XTe2', 'randseed');
    fprintf('done\n');
end