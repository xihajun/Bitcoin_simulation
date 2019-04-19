figure

set(gcf, 'Position', get(0, 'Screensize'));
subplot(1,2,1)
for i =1:1:10
    f = num2str(i);
    fplot(f,[1 10],'k','MarkerSize',20)
    hold on
end
for i=1:10
    for j =1:11
        plot(i,j,'ws-','MarkerFaceColor','w','MarkerEdgeColor','k','MarkerSize',40)
        hold on
        if j ==11
            plot(i,j,'ws-','MarkerFaceColor','g','MarkerEdgeColor','g','MarkerSize',40)
        end
    end
end
axis([0 11 0 12]); 
subplot(1,2,2)
for i =1:1:10
    f = num2str(i);
    fplot(f,[1 10],'k','MarkerSize',20)
    hold on
end
for i=1:10
    for j =1:11
        plot(i,j,'ws-','MarkerFaceColor','w','MarkerEdgeColor','k','MarkerSize',40)
        hold on
        if j ==11
            plot(i,j,'ws-','MarkerFaceColor','g','MarkerEdgeColor','g','MarkerSize',40)
        end
    end
end
plot(1,10,'ws-','MarkerFaceColor','g','MarkerEdgeColor','g','MarkerSize',40)
axis([0 11 0 12]); 
hold on
pause(25)
sumtimelist = []
for i =1:length(timelist)
    sumtimelist(i) = sum(timelist(1:i))
end
sumHackertimelist = []
for i =1:length(Hackertimelist)
    sumHackertimelist(i) = sum(Hackertimelist(1:i))
end

m=0; j = 0; k =0; n =0;
for i = sort([sumHackertimelist sumtimelist])
    
    pause(i/100)
    
    if find(sumtimelist==i)
        try
            delete(findall(h1,'type','text'))
        end
        j=j+1;
        if j == 11
            j = 1;
            m = m+1;
        end
        h1 = subplot(1,2,1);
        
        plot(j,10-m,'gs-','MarkerFaceColor','g','MarkerEdgeColor','g','MarkerSize',40)
        text(1,10-m-1,Hashlist{10*m+j}(1:32),'FontSize',30,'BackgroundColor','w')
        text(1,10-m-2,Hashlist{10*m+j}(33:end),'FontSize',30,'BackgroundColor','w')
        %text(1,10-m-2,Hashlist{10*m+j}(33:64),'FontSize',30)
        title(['time = ',num2str(i)])
        hold on
    else
        try
            delete(findall(h2,'type','text'))
        end
        k=k+1;
        if k == 11
            k = 1;
            n = n+1;
        end
        h2 = subplot(1,2,2);
        plot(k,10-n,'rs-','MarkerFaceColor','r','MarkerEdgeColor','r','MarkerSize',40)
        text(1,10-n-1,HackerHash{10*n+k}(1:32),'FontSize',30,'BackgroundColor','w')
        text(1,10-n-2,HackerHash{10*n+k}(33:end),'FontSize',30,'BackgroundColor','w')
        title(['time= ',num2str(i)])
        hold on
    end
end
            
    