function line_D(im)
figure;
subplot(221)
imshow(im);
im_1= edge(im,'canny');
subplot(222)
imshow(im_1);
title('canny');
[Hou,Theta,Rho_1] = hough(im_1,'RhoResolution',1,'Theta',-90:1:89);
subplot(223)
imshow((rescale(Hou)),'XData',Theta,'YData',Rho_1,'InitialMagnification','fit');
title('Limited Theta Range Hough Transform of Gantrycrane Image');
xlabel('\theta')
ylabel('\rho');
axis on, axis normal;
colormap(gca,hsv);
P=houghpeaks(Hou,9,'Threshold',0.5*max(Hou(:)));
hold on;
i=1;j=2;
plot(Theta(P(:,j)),Rho_1(P(:,i)),'s','color','black');hold on
plot(Theta(P(:,2)),Rho_1(P(:,1)),'s','color','black');hold on
plot(Theta(P(:,2)),Rho_1(P(:,1)),'s','color','black');hold on

lines = houghlines(im_1,Theta,Rho_1,P,'FillGap',5,'MinLength',7);
subplot(224)
imshow(im), hold on
max_len = 0;
for k = 1:length(lines)
   Points_1 = [lines(k).point1; lines(k).point2];
   
   plot(Points_1(:,1),Points_1(:,2),'LineWidth',1.5,'Color','green');
   % Plot beginnings and ends of lines
   plot(Points_1(1,1),Points_1(1,2),'x','LineWidth',1.5,'Color','yellow');
   plot(Points_1(2,1),Points_1(2,2),'x','LineWidth',1.5,'Color','red');
    %Determine the endpoints of the longest line segment
%    len = norm(lines(k).point1 - lines(k).point2);
%    if ( len > max_len)
%       max_len = len;
%       Points_1_long = Points_1;
%    end
end
end


