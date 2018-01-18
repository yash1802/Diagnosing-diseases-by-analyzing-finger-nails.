clear
foldername='D2'
initialfname=strcat('F:\','HackDTU\',foldername, '\');
D=dir([initialfname, '\*.jpg']);
Num=length(D(not([D.isdir])));
for i=1:Num
fullfilename=strcat(initialfname, D(i).name);
if exist(fullfilename)
else
    continue;
end
rgb=imread(fullfilename);
[x, y, ch]=size(rgb);
x=round(x/2);
y=round(y/2);
r=(x+y)/4;
r1=rgb(:,:,1);
r2=rgb(:,:,2);
r3=rgb(:,:,3);
rgbwin1=r1((x-r):(x+r), (y-r):(y+r));
rgbwin2=r2((x-r):(x+r), (y-r):(y+r));
rgbwin3=r3((x-r):(x+r), (y-r):(y+r));
rgbwin=cat(3, rgbwin1, rgbwin2, rgbwin3);
av1=mean(mean(rgbwin1));
av2=mean(mean(rgbwin2));
av3=mean(mean(rgbwin3));
av(i,1)=av1;
av(i,2)=av2;
av(i,3)=av3;
%figure;imshow(rgbwin);
end


