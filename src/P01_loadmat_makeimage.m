clear all
close all
clc

%addpath('../subroutines')
map = F_colormap_org('jet',255);

for cs = {'18deg'}
case_num = char(cs);
disp(case_num)
[wingx,wingy]=F_wingread('NACA0015.txt');
%%
mkdir(['..\work\' case_num '\PIV_flowfield\u'])
mkdir(['..\work\' case_num '\PIV_flowfield\v'])
%%
load(['..\work\' case_num '\PIV_flowfield\NUM_t.mat'])
load(['..\work\' case_num '\PIV_flowfield\ufield_allt.mat']);
load(['..\work\' case_num '\PIV_flowfield\vfield_allt.mat']);
load(['..\work\' case_num '\PIV_flowfield\ufield_ave.mat']);
load(['..\work\' case_num '\PIV_flowfield\vfield_ave.mat']);
%%
range_min_u = -10;
range_max_u = 20;
range_min_v = -5;
range_max_v = 5;
%%   
for i = 1 %: NUM_t
u_field = ufield_allt(:,:,i);
u_field = F_rangemod(u_field,range_min_u,range_max_u);
    
figure(1)
  F_ffvis(u_field,range_min_u,range_max_u)
  colormap(map);
  hold on
  F_wingdraw(case_num,wingx,wingy);
  ss=num2str(i,'00%04d'); 
  print(gcf,['..\work\' case_num '\PIV_flowfield\u\' ss '_u'],'-dpng');
  hold off

end

for i = 1 %: NUM_t
v_field = vfield_allt(:,:,i);
v_field = F_rangemod(v_field,range_min_v,range_max_v);

figure(2)
  F_ffvis(v_field,range_min_v,range_max_v)
  colormap(map);
  hold on
  F_wingdraw(case_num,wingx,wingy);
  ss=num2str(i,'00%04d'); 
  print(gcf,['..\work\' case_num '\PIV_flowfield\v\' ss '_v'],'-dpng');
  hold off
  
end

ufield_ave = F_rangemod(ufield_ave,range_min_u,range_max_u);
vfield_ave = F_rangemod(vfield_ave,range_min_v,range_max_v);

figure(3)
  F_ffvis(ufield_ave,range_min_u,range_max_u)
  colormap(map);
  hold on
  F_wingdraw(case_num,wingx,wingy);
  print(gcf,['..\work\' case_num '\PIV_flowfield\u\u_ave'],'-dpng');
  hold off
  
figure(4)
  F_ffvis(vfield_ave,range_min_v,range_max_v)
  colormap(map);
  hold on
  F_wingdraw(case_num,wingx,wingy);
  print(gcf,['..\work\' case_num '\PIV_flowfield\v\v_ave'],'-dpng');
  hold off

end