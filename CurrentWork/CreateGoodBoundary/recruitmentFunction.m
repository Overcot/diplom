function x0 = recruitmentFunction(model, time, x, params)
global ssb a b
%   function to count x(0,t) for any given t
%       input:
%           model - suitable options: 'Tahvonen' and 'New'(to be implemented)
%           time - we search for x(1, time)
%           x - all matrix of solution
%           params - [Ds, Dt, (params for each model)]
%               for Tahvonen: (gamma, p(time))
%               for New: ...
%       output:
%           x(0,time) = -1 (in matlab its x(1,time))(-1 by default for
%           error check(to be implemented)
%           
%
    x0 = -1;
    Ds = params(1); Dt = params(2);
    model
    if strcmp(model,'Tahvonen')
        gamma = params(3); p = params(4);
        x0 = (p + trapz(gamma*x(2:end, time)*Ds))/(1-gamma*Ds);
    elseif strcmp(model,'Anna')
        % gamma = params(3); p = params(4);
        % a = params(5); b = params(6); allee = params(7);
        % ssbCurr = (p + trapz(gamma*x(2:end, time)*Ds))/(1-gamma*Ds);
        
        % ssb = [ssb, ssbCurr];
        % if ssbCurr/max(ssb) > allee
        %     value = log(ssbCurr) + a - b*ssbCurr;
        % else
        %     value = log(ssbCurr) + a - b*ssbCurr + (ssbCurr/max(ssb)-allee);
        % end
        % x0 = value;
    end
end