Dir.mkdir("lib") #Création d'un dossier lib
Dir.mkdir("spec") #Création d'un dossier spec
gemfile = File.open("README.md", "w") #Création d'un fichier README.md
gemfile = File.open("Gemfile", "a") #Création d'un fichier Gemfile
gemfile.puts("source 'https://rubygems.org'")
gemfile.puts("ruby '2.5.1'")
gemfile.puts("gem 'pry'")
gemfile.puts("gem 'rubocop', '~> 0.57.2'")
gemfile.puts("gem 'rspec'")
gemfile.close #Fermeture du Gemfile
system("bundle install") #Fais un bundle install
system("git init")
system("git add --all")
system("git commit -m \"create skeleton of the working directory\"")