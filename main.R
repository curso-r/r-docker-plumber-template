p <- plumber::plumb("endpoints.R")

p$run(host='0.0.0.0', port = as.integer(Sys.getenv("PORT", unset = 3232)))
