figure
subplot(1,2,1)
for i =1:1:10
    f = num2str(i);
    fplot(f,[1 10],'k','MarkerSize',20)
    hold on
end
for i=1:10
    for j =1:10
        plot(i,j,'ws-','MarkerFaceColor','w','MarkerEdgeColor','k','MarkerSize',40)
        hold on
    end
end
axis([0 11 0 11]); 
subplot(1,2,2)
for i =1:1:10
    f = num2str(i);
    fplot(f,[1 10],'k','MarkerSize',20)
    hold on
end
for i=1:10
    for j =1:10
        plot(i,j,'ws-','MarkerFaceColor','w','MarkerEdgeColor','k','MarkerSize',40)
        hold on
    end
end
axis([0 11 0 11]); 
hold on
k=0;m=0;n=0;

time = 0
j=1;
i=1;
while i < length(savetime)
    time = sum(savetime(1:i))
    if find([11,21,31,41,51]==i)
        pause(savetime(i)/10)
        m = m+1
        subplot(1,2,1)
        plot(mod(i,10),10-m,'gs-','MarkerFaceColor','g','MarkerEdgeColor','g','MarkerSize',40)
        title(['time= ',num2str(savetime(i))])
    end
    if time > sum(timelist(1:j))
        pause(timelist(j)/10)
        subplot(1,2,2)
        plot(j,10-n,'rs-','MarkerFaceColor','r','MarkerEdgeColor','r','MarkerSize',40)
        title(['time= ',num2str(timelist(j))])
        j=j+1;
        i = i-1;
        hold on
    else
        pause(savetime(i)/10)
        subplot(1,2,1)
        plot(mod(i,10),10-m,'gs-','MarkerFaceColor','g','MarkerEdgeColor','g','MarkerSize',40)
        title(['time= ',num2str(savetime(i))])
    end
    i=i+1;
end
            
for i = sort([timelist savetime])
    pause(i/10)
    if find(savetime==i)
        j=j+1;
        if j == 11
            j = 1;
            m = m+1
        end
        subplot(1,2,1)
        plot(j,10-m,'gs-','MarkerFaceColor','g','MarkerEdgeColor','g','MarkerSize',40)
        title(['time = ',num2str(i)])
        hold on
    else
        
        k=k+1;
        if k == 11
            k = 1;
            n = n+1
        end
        subplot(1,2,2)
        plot(k,10-n,'rs-','MarkerFaceColor','r','MarkerEdgeColor','r','MarkerSize',40)
        title(['time= ',num2str(i)])
        hold on
    end
end
            
    