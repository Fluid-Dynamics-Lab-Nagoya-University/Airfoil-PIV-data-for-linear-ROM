function data = F_rangemod(data,range_min,range_max)

data(data < range_min+((range_max - range_min)/256)+(10^-16)) = range_min+((range_max - range_min)/256)+(10^-16);

end