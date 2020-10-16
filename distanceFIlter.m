    %% Load Data
load('scores_lunge.mat')
load('dist_to_other.mat')

allScores.newPost=allScores.postprocessed;

%% Define Threshold
threshold=4.0;

%% Lines of code to create a new PostProcessed Score
for i=1:24
	allScores.newPost{i}=allScores.newPost{i} & data{i}<threshold;
end
 save allScores allScores;

 origLundges=cellfun(@(x) sum(x), allScores.postprocessed);
 postLundges=cellfun(@(x) sum(x), allScores.newPost);