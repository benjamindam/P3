clear clc;
%A1 is torque in nm
%A2 is velocity in rad/s
%A is a matrix containing torque(A1) and velocity(A2)
%B is PWM
%C is defined by the motor constants in the frequency and time domain

A1 = [0.074172424
0.074172424
0.074172424
0.074172424
0.074172424
0.074172424
0.074172424
0.074172424
0.074172424
0.074172424
0.220800736
0.220800736
0.220800736
0.220800736
0.220800736
0.220800736
0.220800736
0.220800736
0.220800736
0.90389172
0.90389172
0.90389172
0.90389172
0.90389172
0.90389172
1.253523
1.253523
1.253523
1.253523];

A2 = [0.167865767
0.647482245
1.079137075
1.510791905
1.894485088
2.302159094
2.7098331
3.093526282
3.477219465
3.884893471
0.335731535
0.767386365
1.247002843
1.702638497
2.110312503
2.517986509
2.925660515
3.309353698
3.717027704
0.623501421
1.055156251
1.462830258
1.870504264
2.254197446
2.661871452
0.767386365
1.318945314
1.72661932
2.158274151];

A=[A1(:),A2(:)];
B=[50
100
150
200
250
300
350
400
450
500
100
150
200
250
300
350
400
450
500
250
300
350
400
450
500
350
400
450
500];

C=A\B