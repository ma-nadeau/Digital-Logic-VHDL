set_max_delay -from [get_ports A[*]] -to [get_ports AgtBplusOne] 1
set_max_delay -from [get_ports B[*]] -to [get_ports AgtBplusOne] 1

set_max_delay -from [get_ports A[*]] -to [get_ports AgteBplusOne] 1
set_max_delay -from [get_ports B[*]] -to [get_ports AgteBplusOne] 1

set_max_delay -from [get_ports A[*]] -to [get_ports AltBplusOne] 1
set_max_delay -from [get_ports B[*]] -to [get_ports AltBplusOne] 1

set_max_delay -from [get_ports A[*]] -to [get_ports AlteBplusOne] 1
set_max_delay -from [get_ports B[*]] -to [get_ports AlteBplusOne] 1

set_max_delay -from [get_ports A[*]] -to [get_ports AeqBplusOne] 1
set_max_delay -from [get_ports B[*]] -to [get_ports AeqBplusOne] 1

set_max_delay -from [get_ports B[*]] -to [get_ports overflow] 1