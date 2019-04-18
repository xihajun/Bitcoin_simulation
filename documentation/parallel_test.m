
spmd 
    A = 1:100000; 
end
tic
for i = 1:length(A)
    data = [Hash,i];
    Hash = DataHash(data,'SHA-256');
    if strcmp(Hash(1:4), '0000')
        Hash;
        time = toc;
        break
    end
end

