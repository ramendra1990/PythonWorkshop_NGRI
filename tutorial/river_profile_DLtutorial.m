% EVOLUTION OF river PROFILeS for different
% uplift rate (can vary in space or in time)
% and variable lithology
% Please check line 85 for initial profile

clear all % For deleting any existing variables
close all % For deleting any plots

%% reading the river profile
% This is the final profile.
[dataN, dataT] = xlsread('River_profile.xlsx');
Xriv=dataN(:,1)*1000;   % distance in m
Zriv=dataN(:,2);
Area=dataN(:,3)*1E+6;   % area in m2

figure(1)
hold on
plot(Xriv/1000,Zriv,'b','Linewidth',2)
xlabel('distance (km)')
ylabel('elevation (m)')

%% Parameter definition 

    % ------ Incision Parameters  ----------
m = 0.5; % incision law area exponent 
n = 1; % incision law slope exponent 

ka = 6.69; % area length coefficient (Hack 1957 _ L en m et A en m2)
h = 1.67; % réciproque de l'exposant de Hack (valeur observée, Hack 1957)
theta = h*m/n; % index of concavity between z and x (not between z and A)

    % ------ River spatial caracteristics ------
    
L = 20000; % river length (m) - CAN BE MODIFIED 
zi = 0;    % z(L) = altitude of the base level (m) - CAN BE MODIFIED 
Asource=0.5E+6;   % area of the  sources in m2
xmin=(Asource/ka)^(1/h);  % distance between the crest and the source = limit of application of the fluvial incision law
dx = 50; % spatial step (m) - CAN BE MODIFIED>. The evolution equation will be numerically solved on this spatial scale

x = 0:dx:L;    % downstream distance vector (m). Discretiaztion of spatial domain
nx = length(x);
n0 = find(x<xmin,1,'last');  % index of the start of the fluvial drain. This is the last position of the spatial domain where we have channels.

    % ------ Time caracteristics ------
T_end = 3E+5; % duration of the run in year 300 kyr  
dt = 100;    % time step in year
time = 0:dt:T_end;   % time vector. Discretization of time domain
nt = length(time);


    % ------- Uplift, erodibility coefficient and their variations ------ 
    %  spatial variations in local uplift rate or erodibility
Xt=[1 10000 15000]; % Spatial domain is broadly divide into 3 physiographic domains
ntX=length(Xt);  % number of spatial transition
% K = 0.00002; % coefficient of érosion or erodibility kept constant. for n=1 - expressed in  (Whipple and Tucker 1999)
Up = [2 6 2];  % uplift rate in mm/yr _ Must be same length as Xt. Uplift rate in the 3 separate domain 
Up = Up/1000;    % uplift rate in m/an
K = [2E-5 2E-5 2E-5];  % erosion coefficient related to rock erodibility _ Must be same length as Xt 
    %  temporal variations in regional uplift rate
Timing = [0 1E+5 2E+5];  % timing in yr of the change in regional uplift rate 
ntT=length(Timing);  % number of temporal transition
Ufac = [1 1 1];  % uplift temporal change factor _ Must be same length as Xt

    % index linked to these variations
nxt1 = find(x<Xt(2),1,'last');
nxt2 = find(x<Xt(3),1,'last');

UpV=zeros(1,nx);   % spatial vector of the local uplift value
UpV(1:nxt1)=Up(1);   
UpV(nxt1:nxt2)=Up(2);
UpV(nxt2+1:nx)=Up(3);
KV=zeros(1,nx);   % spatial vector of the local uplift value
KV(1:nxt1)=K(1);   
KV(nxt1:nxt2)=K(2);
KV(nxt2+1:nx)=K(3);

it1 = find(time<Timing(2),1,'last');
it2 = find(time<Timing(3),1,'last');
UfacV=zeros(1,nt);   % spatial vector of the local uplift value
% Assign temporal uplift change factor to each time window
UfacV(1:it1)=Ufac(1);   
UfacV(it1:it2)=Ufac(2);
UfacV(it2+1:nt)=Ufac(3);

%%   % ----- initial profile = arbitrary --------
% Initial state parameter
Ui = 0.001; % rock uplift initial (m/an) 
Ki = 0.00002;
z0=zeros(1,nx);
% Steady state solution (dz/dt = 0) with the initial parameters
z0(n0:nx) = zi + ((Ui/Ki/ka^m)^(1/n))*((L^(1-theta)-x(n0:nx).^(1-theta))/(1-theta));   % initial profil 
plot(x(n0:nx)/1000,z0(n0:nx),'g','Linewidth',2)

% For animation purpose
nbr = 20; % number of transient profile for display _ CAN BE MODIFIED 

   % area interpolation to define the drainage area in any point of the
   % numeric river
AreaX = interp1(Xriv',Area',x,'linear','extrap');
AreaX = max(AreaX,Asource/2);  % to avoid to have negative area

%% ----------  finite difference solution

zz_num = z0; % creation of the vector containing the elevation of the transient profile

iC=round(nt/nbr);

for i=1:nt    % time iteration
    S = max(0,-diff(zz_num))/dx;   % gradient of the river ; in x=L (index nx) S=0 permanently
                                   % the max value prevents to get negative slopes
    zz_num(1:nx-1) = zz_num(1:nx-1) + dt*(UfacV(i)*UpV(1:nx-1) - KV(1:nx-1).*(AreaX(1:nx-1).^m).*(S.^n));
    
    % Plot every 150th iteration result in our case
    if (mod(i,iC)==0)
      plot(x(n0:nx)/1000,zz_num(n0:nx),'r');  % display of the intermediate profiles
      pause(0.1); % After evry plot the program is pausing for 0.1 sec
    end
end

hold off

%%
