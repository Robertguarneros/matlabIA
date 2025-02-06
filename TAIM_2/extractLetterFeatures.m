function [features] = extractLetterFeatures(letter)
%EXTRACTLETTERFEATURES

timeToWrite = letter.Time(end);
letterHeight = range(letter.Y);
letterWidth = range(letter.X);
firstXpos = letter.X(1);
lastXpos = letter.X(end-1);
firstYpos = letter.Y(1);
lastYpos = letter.Y(end-1);
numStrokes = sum(ismissing(letter.P));

features = table(timeToWrite,letterHeight, letterWidth,firstXpos,lastXpos,firstYpos,lastYpos,numStrokes);

end

