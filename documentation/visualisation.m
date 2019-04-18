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

%savetime is the bitcoin system, timelist is hackers'
j=0;k=0;
for i = sort([timelist savetime])
    pause(i/100)
    if find(savetime==i)
        j=j+1;
        subplot(1,2,1)
        plot(j,10,'gs-','MarkerFaceColor','g','MarkerEdgeColor','g','MarkerSize',40)
        hold on
    else
        k=k+1;
        subplot(1,2,2)
        plot(k,10,'rs-','MarkerFaceColor','r','MarkerEdgeColor','r','MarkerSize',40)
        hold on
    end
end
            
    
