
%A.
function [IN,FN,RN,ND]=EXISTENTES(IE,RE,FE)
FN=[0 0 0 0 0 0 0 0 1 1 0 5 2 7 13 6 19 31 47 60 99 50 149 147 195 210 335 394 410 514 738 655 769 836 838 808 849 864 950 932 809 674 637 743 757 728 605 510 574 517 567 523 551 585 565 410 399 430 435 440];
RN=[0 0 0 0 0 0 0 0 0 1 2 7 7 0 13 105 3 51 4 324 0 13 498 53 26 481 537 450 780 439 1573 1648 2342 2928 2424 2071 2479 3388 4096 3770 3706 3861 2357 2771 4813 4144 3503 3441 3282 2336 2777 3349 3944 853 853 854 3230 1927 3401 3335];
IN=[1 4 6 12 19 14 25 41 44 59 54 83 65 244 557 464 583 869 2086 1100 1512 2098 1236 3591 3308 2333 4964 3394 4321 6584 7937 8578 7871 8189 6549 6398 9222 7719 8102 7472 7026 6023 4273 5478 6180 5756 4576 4830 4167 3477 3045 5092 5183 5252 3658 4128 4266 3968 4211 4635];
ND=60;
IE(1)=4;
RE(1)=0;
FE(1)=1;
for J=2:1:ND
    IE(J)=IE(J-1)+IN(J)-RN(J)-FN(J);
    RE(J)=RE(J-1)+RN(J);
    FE(J)=FE(J-1)+FN(J);

end
 



    
    

    



