﻿select * from (values (1),(2)) a(b) cross apply (select * from (values(1),(2)) c(d)