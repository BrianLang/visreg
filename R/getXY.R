getXY <- function(fit, f, name, nn, cond, type, trans, xtrans, alpha, jitter, forcexvalues, ...) {
  if (type=="conditional") {
    x <- setupD(fit, f, name, nn, cond, forcexvalues, ...)
    y <- Response(fit, x, trans, alpha, ...)
  } else if (type=="contrast") {
    x <- setupX(fit, f, name, nn, cond, forcexvalues, ...)
    y <- Terms(fit, f, x, trans, alpha, ...)
    x <- setupD(fit, f, name, nn, cond, forcexvalues, ...)
  }
  
  if (jitter && is.numeric(x$x)) x$x <- jitter(x$x)
  if (!missing(xtrans)) {
    x$xx <- xtrans(x$xx)
    x$x <- xtrans(x$x)
  }
  list(x=x, y=y)
}
