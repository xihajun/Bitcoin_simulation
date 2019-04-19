function [Hash, time] = parallelmining(Hash, num)
    dataset ={};
    for i =1:6
        dataset{i} = ceil(1000000/6*(i-1)):ceil(1000000/6*i);
    end
    spmd
        done = false;
        while ~done
            % each lab does some computation in parallel
            [Hash, time] = mining(Hash, num, dataset{labindex});
            % communicate to see if anyone has found the answer:
            % this ORs together the values of "myDone" from each lab
            done = gop(@or, Hash);
        end
    end
    timelist =[];
    for i =1:6 
        timelist = [timelist time{i}];
    end
    [time index] = min(timelist);
    Hash = Hash{index}
    time
end