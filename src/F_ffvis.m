function F_ffvis(data,min,max)

imshow(data,[min max],'Border','tight','InitialMagnification',500)
daspect([1 1 1])
set(gcf,'PaperPositionMode','auto')
axis off

end