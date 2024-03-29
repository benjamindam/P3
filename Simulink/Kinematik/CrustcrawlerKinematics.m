%% Crustecrwler forward kinematics
% Denne section udregner Matricen T04, med de vinkler vi selv s?tter ind
% t1, t2, t3 og t4 beskriver theta vinklerne i hver motor
syms t1 t2 t3 t4
PI=sym(pi);
%Her kan man s?tte vinkler ind i hver motor:
%t1=10*pi/180;
t1 = 10
%t2=20*pi/180;
t2 = 20
%t3=30*pi/180;
t3 = 30
%t4=40*pi/180;
t4=40
%Vinklerne inds?ttes i denavit hartenberg parameterne for vores robot:
T01=TDH(0,0,0,t1+90*pi/180)
T12=TDH(-90*pi/180,0,0,t2-90*pi/180)
T23=TDH(0,218.5,0,t3);
T34=TDH(0,145,0,t4);
%Base to final link
T04=T01*T12*T23*T34
%simplify(T04)
%% Crustcrawler inverse kinematics:
syms x y z
x= -173.5986;
y= 173.5986;
z= 139.6336;
%Formler til inverse kinematics:
L = sqrt((x^2)+(y^2)+(z^2))
phi1 = asin(z/L)
phi2 = acos(((218.5^2)+(L^2)-145^2)/(2*218.5*L))
phi3 = acos(((218.5^2)+(145^2)-L^2)/(2*218.5*145))

% Endelige formler hvor x, y og z indsættes:
t1 = atan2(-x,y)*180/pi
t2 = (90*pi/180-phi1-phi2)*180/pi
t3 = 180-(phi3)*180/pi