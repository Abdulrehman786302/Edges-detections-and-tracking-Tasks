function circ_1(im,s)
figure
subplot(211)
imshow(im)
[centers, radii] = imfindcircles(im,[15 30]);
centersStrong5 = centers(1:s,:);
radiiStrong5 = radii(1:s);
subplot(212)
imshow(im)
hold on;
viscircles(centersStrong5, radiiStrong5,'EdgeColor','b');
end