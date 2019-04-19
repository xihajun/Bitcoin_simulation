function [Hash, time] = mining(Hash, num, iteration)
    string = '';
    for j =1:num
        string = [string,'0'];
    end
    tic
    
    for i = iteration
        data = [Hash,num2str(i)];
        Hashtemp = DataHash(data,'SHA-256');

        if strcmp(Hashtemp(1:num), string)
            Hash = Hashtemp;
            time = toc;
            break
        end
    end
    time = toc;
end