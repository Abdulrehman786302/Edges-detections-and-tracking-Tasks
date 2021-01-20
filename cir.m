function circ_1(im)
figure;
subplot(221)
imshow(im)
[centers, radii, metric] = imfindcircles(im,[15 30]);
centersStrong5 = centers(1:5,:);
radiiStrong5 = radii(1:5);
metricStrong5 = metric(1:5);
subplot(222)
viscircles(centersStrong5, radiiStrong5,'EdgeColor','b');
end