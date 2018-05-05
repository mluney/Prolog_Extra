;Michael Luney Program
program(begin,stmt_list,end).
id(assign,expr,";").
read(id,";").
write(id,expr,";").
if(id,'(',expr,')',then,stmt_list,else,stmt_list,endif).
while(id,'(', expr,')',stmt_list,endwh).
expr(term,term_tail).
term_tail(add_opp,term,term_tail).
term(factor,factor_tail).
factor_tail(mult_opp,factor).
factor(id).
factor(number).
stmt_list(id).
stmt_list(read).
stmt_list(write).
stmt_list(if).
stmt_list(while).
read:-(   id,";").
write:-(   expr,";").
id("read").
id("write").
id("begin").
id("end").
id("if").
id("else").
id("endif").
id("then").
id("while").
id("endwh").
