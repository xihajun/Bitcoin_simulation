Hash=''
timelist = []
for i = 1:50
    [Hash, time] = parallelmining(Hash, 4);
    timelist = [timelist time];
end
