library(blogdown)



new_site(theme = NA,
         format = "toml",
         sample = FALSE,
         empty_dirs = TRUE)

file.remove(".gitignore")

file.remove("netlify.toml")


options(blogdown.publishDir = 'docs')

file.create("docs/.nojekyll")


blogdown::build_site()

