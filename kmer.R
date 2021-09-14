#!/usr/local/bin/R
convert <- function(v) {
    if (v == 'A') {return("C")}
    if (v == 'C') {return("G")}
    if (v == 'G') {return("T")}
    if (v == 'T') {return("A")}
}

s <- c("A","A","A","A","A","A","A","A","A","A","A","A");
s_last <- c("T","T","T","T","T","T","T","T","T","T","T","T");
opt_ar <- c("A","C","G","T");

last=paste(s_last, collapse = '')
len_str <- 12
pos <-0
counter <- 1
while (paste(s, collapse = '') != last) {
  counter<-counter+1;
  change_next <- 1
  for (i in c(1,2,3,4,5,6,7,8,9,10,11,12)) {
    if (change_next == 1 ) {
      if (s[i] ==  opt_ar[length(opt_ar)]) {
                  s[i]=convert(s[i]);
                  change_next <- 1;                
      } else {
                  s[i]=convert(s[i]);
                  break;
      }      
    }

  }
  
}
