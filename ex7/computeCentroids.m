function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%
%no1=0;
%no2=0;
%no3=0;
%for i=1:size(idx)
%    if idx(i)==1
%        no1=no1+1;
%    end
%    if idx(i)==2
%        no2=no2+1;
%    end
%    if idx(i)==3
%        no3=no3+1;
%    end
%end
%for i=1:size(idx)
%    if idx(i)==1
%        centroids(1)=centroids(1)+X(i);
%        centroids(1,2)=centroids(1,2)+X(i,2);
%        
%    end
%    
%    if idx(i)==2
%        centroids(2)=centroids(2)+X(i);
%        centroids(2,2)=centroids(2,2)+X(i,2);
%    end
%    if idx(i)==3
%         centroids(3)= centroids(3)+X(i);
%         centroids(3,2)=centroids(3,2)+X(i,2);
%    end
%end
%centroids(1)=centroids(1)/no1;centroids(1,2)=centroids(1,2)/no1;
%centroids(2)=centroids(2)/no2;centroids(2,2)=centroids(2,2)/no2;
%centroids(3)=centroids(3)/no3;centroids(3,2)=centroids(3,2)/no3;

for i = 1:K
      idx_i = find(idx==i);       
      centroids(i,:) = mean(X(idx_i,:)); 
end










% =============================================================


end

