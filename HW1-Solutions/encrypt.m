%% Encryption Algorithm (optional)
original = 'This is my top secret message!';
encodingVec = randperm(length(original));
encoded = original(encodingVec);
temp = [encodingVec.' (1:length(original)).'];
temp = sortrows(temp);
decodingVec = temp(:, 2).';
decoded = encoded(decodingVec);
disp(['Original: ' original;])
disp(['Encoded: ' encoded])
disp(['Decoded: ' decoded])
correct = strcmp(original, decoded);
disp(['Decoded correctly (1 true, 0 false):' num2str(correct)])

