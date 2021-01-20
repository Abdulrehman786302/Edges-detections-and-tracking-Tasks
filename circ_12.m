function circ_12(A,emin,emax)
figure
subplot(211)
imshow(A)
[centersBright,radiiBright]=imfindcircles(A,[emin emax],'ObjectPolarity','bright');
subplot(212)
imshow(A)
hold on;
viscircles(centersBright, radiiBright,'EdgeColor','b');
end