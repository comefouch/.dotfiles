local prettier = {
    formatCommand = "prettier --stdin --stdin-filepath ${INPUT}",
    formatStdin = true
}

return prettier
