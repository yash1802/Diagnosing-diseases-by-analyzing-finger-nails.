y2=y1(:,:,3);
for k=2:532
    for l=2:532
        f2(k,l)=(y2(k+1,l+1)-y2(k,l))/2;
    end
end
figure;imshow(f2,[]);