function map = F_colormap_org(col_name,num)

    switch(col_name)
        case 'jet'
            map = zeros(num+1,3);
            map(2:num+1,:) = jet(num);
            map(1,:) = 0; 
        case 'BlueWhiteRed'
            map = customcolormap(linspace(0,1,11), {'#68011d','#b5172f','#d75f4e','#f7a580','#fedbc9','#f5f9f3','#d5e2f0','#93c5dc','#4295c1','#2265ad','#062e61'},num);
            map = [[0 0 0];map];
        case 'WhiteRed'
            map = customcolormap(linspace(0,1,11), {'#68011d','#b5172f','#d75f4e','#f7a580','#fedbc9','#f5f9f3','#d5e2f0','#93c5dc','#4295c1','#2265ad','#062e61'},num*2);
            map = map(num+1:end,:);
            map = [[0 0 0];map];
        case 'BlueWhite'
            map = customcolormap(linspace(0,1,11), {'#68011d','#b5172f','#d75f4e','#f7a580','#fedbc9','#f5f9f3','#d5e2f0','#93c5dc','#4295c1','#2265ad','#062e61'},num*2);
            map = map(1:num,:);
            map = [[0 0 0];map];
        case 'BlueWhiteRed_cy'
            map = customcolormap(linspace(0,1,9),{'#7f0000','#ee0000','#ff7000','#ffee00','#ffffff','#0fffee','#0090ff','#000fff','#000090'},num);
            map = [[0 0 0];map];
        case 'WhiteRed_y'
            map = customcolormap(linspace(0,1,9),{'#7f0000','#ee0000','#ff7000','#ffee00','#ffffff','#0fffee','#0090ff','#000fff','#000090'},num*2);
            map = map(num+1:end,:);
            map = [[0 0 0];map];
        case 'BlueWhite_c'
            map = customcolormap(linspace(0,1,9),{'#7f0000','#ee0000','#ff7000','#ffee00','#ffffff','#0fffee','#0090ff','#000fff','#000090'},num*2);
            map = map(1:num,:);
            map = [[0 0 0];map];
        case 'BlueWhiteRed_simple'
            aaa = 120 ;        %  red   range
            bbb = 120 ;        %  blue  range
            ccc = 15  ;        %  white range    aaa + bbb + ccc = num 
            r = [1 0 0];       %# start
            w = [.9 .9 .9];    %# middle
            b = [0 0 1];       %# end
            c1 = zeros(aaa,3);  
            c2 = zeros(bbb,3);
            c3 = zeros(ccc,3);
            for i=1:3
                c1(:,i) = linspace(r(i), w(i), aaa);
                c3(:,i) = linspace(0.9 , 0.9 , ccc);
                c2(:,i) = linspace(w(i), b(i), bbb);
            end
            cfull = [c1;c3;c2];
            cfull=flipud(cfull);
            map = zeros(num+1,3);
            map(2:num+1,:) = cfull;
            map(1,:) = 0;
    end


end