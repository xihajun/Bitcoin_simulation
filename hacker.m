Hash='00001696fe0cc4ab1131346fde6759503a7eb972bf6a423c9a539eee0e39172e'
timelist = []
HackerHash = {}

for i = 1:10
    [Hash, time] = mining(Hash,4, 1:1000000)
    timelist = [timelist time];
    HackerHash{i} = Hash;

end


save('data/timelist_hacker.mat','timelist')
save('data/Hashlist_hacker.mat','HackerHash')
