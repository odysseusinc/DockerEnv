CRAN_URL="https://cran.asia/"

cat >> /usr/local/lib/R/etc/Rprofile.site <<
local({
  # add MASS to the default packages, set a CRAN mirror
  old <- getOption("defaultPackages"); r <- getOption("repos")
  r["CRAN"] <- "$CRAN_URL"
  options(defaultPackages = c(old, "MASS"), repos = r)
})