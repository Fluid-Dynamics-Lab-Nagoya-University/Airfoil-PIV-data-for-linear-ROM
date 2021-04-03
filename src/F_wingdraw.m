function [amp,xpos,ypos] = F_wingdraw(case_num,wingx,wingy)

amp = 88;

if strcmp(case_num,'14deg') == 1
    aoa = 14;
    xpos = 6;
    ypos = 70;
    
elseif strcmp(case_num,'16deg') == 1
    aoa = 16;
    xpos = 6;
    ypos = 69; 
    
elseif strcmp(case_num,'18deg') == 1
    aoa = 18;
    xpos = 6;
    ypos = 68;
    
elseif strcmp(case_num,'20deg') == 1
    aoa = 20;
    xpos = 6;
    ypos = 68; 
    
elseif strcmp(case_num,'22deg') == 1
    aoa = 22;
    xpos = 6;
    ypos = 67;
end

aoa = -aoa;
    
[wingx,wingy]=F_rotatewing(wingx,wingy,aoa-2,0.25);

fill(wingx*amp+xpos,wingy*amp+ypos,[.7 .7 .7])
    
end