function J=skeleton(J)
% I=imread('�Ǽ�.bmp');
% figure;subplot(1,2,1);imshow(I);title('ԭͼ');
%J=1-I;
% subplot(1,2,2);imshow(J);title('����');
rows=size(J,1);
cols=size(J,2);
for m=1:50
J1=zeros(rows,cols);
  for i=2:rows-1
    for j=2:cols-1
          k=0;
          s=0;
         if J(i,j)==1&J(i-1,j)*J(i+1,j)*J(i,j-1)*J(i,j+1)*J(i-1,j-1)*J(i-1,j+1)*J(i+1,j+1)*J(i+1,j-1)==0;
             %ͳ�Ʒ����������ظ���*************
            k=J(i-1,j)+J(i+1,j)+J(i,j-1)+J(i,j+1)+J(i-1,j-1)+J(i-1,j+1)+J(i+1,j+1)+ J(i+1,j-1);
              %ͳ������������0��1�Ĵ���****************
                if J(i-1,j)==0 &J(i-1,j+1)==1
                 s=s+1;
                end
               if J(i-1,j+1)==0 &J(i,j+1)==1
                 s=s+1;
              end
                if J(i,j+1)==0 &J(i+1,j+1)==1
                 s=s+1;
                end
                if J(i+1,j+1)==0 &J(i+1,j)==1
                 s=s+1;
                end
                if J(i+1,j)==0 &J(i+1,j-1)==1
                 s=s+1;
                end
                if J(i+1,j-1)==0 &J(i,j-1)==1
                 s=s+1;
                end
                if J(i,j-1)==0 &J(i-1,j-1)==1
                 s=s+1;
                end
                if J(i-1,j-1)==0 &J(i-1,j)==1
                 s=s+1;
                end
         if (J(i,j+1)*J(i+1,j)==0|(J(i-1,j)==0&J(i,j-1)==0))&k<=6&k>=2&s==1
            J1(i,j)=1; 
         end
         end
    end
  end
   J=J-J1;
         
J2=zeros(rows,cols);
for i=2:rows-1
    for j=2:cols-1
          k=0;
          s=0;
         if J(i,j)==1&J(i-1,j)*J(i+1,j)*J(i,j-1)*J(i,j+1)*J(i-1,j-1)*J(i-1,j+1)*J(i+1,j+1)*J(i+1,j-1)==0;
             %ͳ�Ʒ����������ظ���*************
            k=J(i-1,j)+J(i+1,j)+J(i,j-1)+J(i,j+1)+J(i-1,j-1)+J(i-1,j+1)+J(i+1,j+1)+ J(i+1,j-1);
              %ͳ������������0��1�Ĵ���****************
                if J(i-1,j)==0 &J(i-1,j+1)==1
                 s=s+1;
                end
               if J(i-1,j+1)==0 &J(i,j+1)==1
                 s=s+1;
              end
                if J(i,j+1)==0 &J(i+1,j+1)==1
                 s=s+1;
                end
                if J(i+1,j+1)==0 &J(i+1,j)==1
                 s=s+1;
                end
                if J(i+1,j)==0 &J(i+1,j-1)==1
                 s=s+1;
                end
                if J(i+1,j-1)==0 &J(i,j-1)==1
                 s=s+1;
                end
                if J(i,j-1)==0 &J(i-1,j-1)==1
                 s=s+1;
                end
                if J(i-1,j-1)==0 &J(i-1,j)==1
                 s=s+1;
                end


         if (J(i-1,j)*J(i,j-1)==0|(J(i,j+1)==0&J(i+1,j)==0))&k<=6&k>=2&s==1
            J2(i,j)=1; 
  
         end
       end
          
    end
end
 J3=J-J2;
  if J1==0&J2==0;
     break
  else
      J=J3;
   end
end