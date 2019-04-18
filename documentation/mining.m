function [Hash, time] = mining(Hash)
    tic
    for i = 1:1000000
        data = [Hash,num2str(i)];
        Hash = DataHash(data,'SHA-256');
        if strcmp(Hash(1:4), '0000')
            Hash;
            time = toc;
            break
        end
    end
end
