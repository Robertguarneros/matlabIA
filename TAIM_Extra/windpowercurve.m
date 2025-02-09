% Define the power curve function
function power = windpowercurve(v, cut_in, rated, cut_out, max_power)
    if v < cut_in
        power = 0;  % No power below cut-in speed
    elseif v < rated
        % Increase power with the cube of wind speed between cut-in and rated
        power = max_power * ((v - cut_in) / (rated - cut_in))^3;
    elseif v < cut_out
        power = max_power;  % Constant power output between rated and cut-out speeds
    else
        power = 0;  % No power above cut-out speed
    end
end