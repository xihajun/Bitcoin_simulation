Hash=''
timelist = []
Hashlist = {}
for i = 1:100
    [Hash, time] = parallelmining(Hash, 4);
    timelist = [timelist time];
    Hashlist{i} = Hash;
end
save('../data/timelist_bitcoinsys.mat','timelist')
save('../data/Hashlist_bitcoinsys.mat','Hashlist')
