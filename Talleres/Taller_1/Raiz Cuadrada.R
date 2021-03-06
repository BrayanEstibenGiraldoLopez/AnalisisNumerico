
trunc_number_n_decimals <- function(numberToTrunc, nDecimals)
{
  numberToTrunc <- numberToTrunc + (10^-(nDecimals+5))
  splitNumber <- strsplit(x=format(numberToTrunc, digits=20, format=f), split="\\.")[[1]]
  decimalPartTrunc <- substr(x=splitNumber[2], start=1, stop=nDecimals)
  truncatedNumber <- as.numeric(paste0(splitNumber[1], ".", decimalPartTrunc))
  return(truncatedNumber)
}

valor_original = 536.78
cont = 0

for (i in 1:100)
{
  valor_original = valor_original / 10
  temp = valor_original - 1
  cont = cont + 1
  
  if (temp < 0)
  {
    break
  }
}

num_trunc = trunc_number_n_decimals(valor_original, 4)

error = (valor_original - num_trunc)*10^cont

valor_almacenado = num_trunc*10^cont

cat("valor almacenado: ",valor_almacenado)
cat("error:",error)
