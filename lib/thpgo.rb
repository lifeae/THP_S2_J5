# Vous avez-besoin pour faire tourner ce programme d'installer : wmctrl qui va permettre de bouger entre vos espaces de travail
# sudo apt-get install wmctrl
require 'launchy' # pour lancer un onglet avec le dashboard THP

system("slack") # ouvre Slack sur l'espace de travail 0
sleep(5) # pause dans le programme de 10 secondes le temps que Slack se lance
system("wmctrl -s 1")# bouger à l'espace de travail 1
Launchy.open("https://calendar.google.com/calendar/r") # ouvre mon calendrier
sleep(1)
Launchy.open("https://todoist.com/app#start") #ouvre mon task manager
sleep(1)
Launchy.open("https://www.thehackingproject.org/dashboard?locale=fr") # ouvre le dashboard THP
sleep(1)
Launchy.open("https://github.com/new") # ouvre un nouveau repository sur GitHub
sleep(1)
system("wmctrl -s 2")# bouger à l'espace de travail 2
system("code") # ouvre Visual Studio Code
sleep(5)
system("wmctrl -s 3")# bouger à l'espace de travail 3
system("terminator") # ouvre un terminal
sleep(1)
system("wmctrl -s 0") # retour à l'espace de travail 0, il ne reste plus qu'à fermer le premier terminal

# spotify et discord font chier quand on les ouvre dans un terminal, le terminal ne passe pas à la ligne suivante et si on fait ctrl+c pour annuler le programme, ça ferme aussi Discord et Spotify
# Impossible sur Ubuntu de passer du workspace 1 au 3 par exemple s'il n'y a rien d'ouvert sur le workspace 2