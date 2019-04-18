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

