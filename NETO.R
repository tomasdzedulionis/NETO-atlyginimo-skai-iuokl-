bruto_neto <- function(x){
        NPD <- 300-0.15*(x-555)
        if(x<=555){NPD=300}
        else if(x>=2555){NPD=0}
        pajamu_mokestis <- (x-NPD)*0.2 
        if(x<=300){pajamu_mokestis=0}
        if(x>=10*1283.2){pajamu_mokestis <- 0.2*10*1283.2+(x-10*1283.2)*0.27}
        pajamu_mokestis
        PSD <- x*0.0698
        pensija <- x*0.1252
        if(x>=10*1283.2){pensija=10*1283.2*0.1252}
        NETO <- (x - PSD - pensija - pajamu_mokestis)
        cat("Jusu atlyginimas atskaicius mokescius:", NETO)

}

