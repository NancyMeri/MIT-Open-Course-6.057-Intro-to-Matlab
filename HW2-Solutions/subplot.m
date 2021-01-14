%% Subplot and axis modes
figure
subplot(2, 2, 1)
load mitMap
image(mit)
colormap(cMap)
axis square
title('Square')
subplot(2, 2, 2)
load mitMap
image(mit)
colormap(cMap)
axis tight
title('Tight')
subplot(2, 2, 3)
load mitMap
image(mit)
colormap(cMap)
axis equal
title('Equal')
subplot(2, 2, 4)
load mitMap
image(mit)
colormap(cMap)
axis xy
title('XY')



