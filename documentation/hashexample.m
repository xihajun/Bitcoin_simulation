
figure
a = [30 25]; % ??
b = 1; % ??
rectangle('Position',[a(1)-b/2,a(2)-b/2 b b])
axis([0 1000 0 100])
axis equal
axis off

text(25,25,['Hash(' "Junfan pays Shanglin 9 pounds, " "1" ')'],'FontSize',30,'BackgroundColor','w')
pause(15)

for i = [0:100 73800:73830]
    pause(0.08)
    data =['Junfan pays Shanglin 9 pounds\n', num2str(i)];
    Hashtemp =DataHash(data,'SHA-256');
    text(25,25,['Hash(' "Junfan pays Shanglin 9 pounds," num2str(i) ')'],'FontSize',30,'BackgroundColor','w')
    text(25,-225,[ Hashtemp],'FontSize',30,'BackgroundColor','w')   
    if strcmp(Hashtemp(1:4), '0000')
        Hashtemp
        text(25,25,['Hash(' "Junfan pays Shanglin 9 pounds," num2str(i) ')'],'FontSize',30,'BackgroundColor','g')
        text(25,-225,Hashtemp,'FontSize',30,'BackgroundColor','g')   
        break
    end
    
end


