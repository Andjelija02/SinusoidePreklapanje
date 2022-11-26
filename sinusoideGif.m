close all
clear all
clc

t=0:0.001:10;

n=2;
f1=0.515;
faza1=0;

f2=f1*n;
faza2=-pi/2;
br=10;
korak=faza2/br;

filename = 'sinusoidaPokaz.gif';
DelayTime=0.5;
f=figure;
axis([0 10 -1.5 1.5],"manual")
for i=1:br*2
  
  sin1=sinusoida(f1,t,faza1);
  plot(t, sin1, "c");

  hold on

  sin2=0.3*sinusoida(f2, t, korak*i);
  plot(t,sin2, "b");

  rezultanta=sin1+sin2;
  plot(t, rezultanta, "m", "linewidth", 5);
  
  xlabel("faza [omega]");
  ylabel("amplituda");
  legend({"prva","druga", "rezultanta"});
  
  drawnow
  
  frame=getframe(f);
  im=frame2im(frame);
  [imind,cm]=rgb2ind(im);
  if n==1;
    imwrite(imind,cm,filename,'gif','DelayTime', DelayTime, 'Compression', 'lzw');
  else
    imwrite(imind,cm,filename,'gif','WriteMode','append','DelayTime', DelayTime,'Compression','lzw');
   end
    
  hold off
end