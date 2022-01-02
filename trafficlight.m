clc
r1 = rectangle('Position',[0,0,5,15],'FaceColor','black');
hold on
c1 = nsidedpoly(1000,'Center',[2.5 2.5],'Radius',2);
plot(c1,'FaceColor','r');
hold on
c1 = nsidedpoly(1000,'Center',[2.5 7.5],'Radius',2);
plot(c1,'FaceColor','g');
hold on
c1 = nsidedpoly(1000,'Center',[2.5 12.5],'Radius',2);
plot(c1,'FaceColor','y');
hold off

while 1
    r1 = rectangle('Position',[0,0,5,15],'FaceColor','black');
    hold on
    c1 = nsidedpoly(1000,'Center',[2.5 2.5],'Radius',2);
    plot(c1,'FaceColor','r');
    hold on
    c1 = nsidedpoly(1000,'Center',[2.5 7.5],'Radius',2);
    plot(c1,'FaceColor','black');
    hold on
    c1 = nsidedpoly(1000,'Center',[2.5 12.5],'Radius',2);
    plot(c1,'FaceColor','black');
    hold off
    pause(3)
    r1 = rectangle('Position',[0,0,5,15],'FaceColor','black');
    hold on
    c1 = nsidedpoly(1000,'Center',[2.5 2.5],'Radius',2);
    plot(c1,'FaceColor','black');
    hold on
    c1 = nsidedpoly(1000,'Center',[2.5 7.5],'Radius',2);
    plot(c1,'FaceColor','g');
    hold on
    c1 = nsidedpoly(1000,'Center',[2.5 12.5],'Radius',2);
    plot(c1,'FaceColor','black');
    hold off
    pause(3)
    r1 = rectangle('Position',[0,0,5,15],'FaceColor','black');
    hold on
    c1 = nsidedpoly(1000,'Center',[2.5 2.5],'Radius',2);
    plot(c1,'FaceColor','black');
    hold on
    c1 = nsidedpoly(1000,'Center',[2.5 7.5],'Radius',2);
    plot(c1,'FaceColor','black');
    hold on
    c1 = nsidedpoly(1000,'Center',[2.5 12.5],'Radius',2);
    plot(c1,'FaceColor','y');
    hold off
    pause(3)   
end