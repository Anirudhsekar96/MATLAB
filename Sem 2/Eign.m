% Eign Values etc

clc
clear all

A = input('Enter the Square matrix: ');
[m n] = size(A)      

% Modal Matrix F and Eign values

[P D] = eig(A);

% Starting Point

starts = zeros(n,n)

% Ending Point ~ Eign vectors of each eign Values

if n==2
    ends = [P(:,1)';P(:,2)'];
    quiver(starts(:,1),starts(:,2),ends(:,1),ends(:,2),'r')
    
    hold on
    pause
    
    % Multiplying Eign Values with the corresponding Eign vector to
    % visualize Shrink/ Strech
    
    ends = [P(:,1)';P(:,2)';P(:,3)'];
    quiver3(starts(:,1),starts(:,2),starts(:,3),ends(:,1),ends(:,2),ends(:,3),'r');
    
    % Multiply Eign Values with the corresponding Eign values to visualize
    % shrink strech
    
    ends = [D(1,1)*P(:,1)', D(2,2)*P(:,2)', D(3,3)*P(:,3)']
    
    quiver3(starts(:,1),starts(:,2),starts(:,3),ends(:,1),ends(:,2),ends(:,3),'b');
    
end

axis equal
grid on

% Simmilarity( Non-Symetric)/ Orthogonal(Symmetric Transform))

option = input('Press 1 for Diagonlisation using simmilarity Transformation: ');

if(option==1)
    
    D1 = inv(P)*A*P
    
else
    
    D1 = P'*A*P

end

    