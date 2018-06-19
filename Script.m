clc;clear;

Ncases = 8;
Nruns = 26;


for ca = 8:Ncases

    [lb,ub,fobj] = ProblemDetails(ca);

    for rs=1:Nruns

        rng(rs,'twister')

        [~, FVAL(rs,ca), ~, ~] = SanitizedTLBO(fobj,lb,ub,300,100);

    end
end