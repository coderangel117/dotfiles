-- On définit notre touche leader sur espace
vim.g.mapleader = " "

-- Raccourci pour la fonction set
local keymap = vim.keymap.set

-- on utilise ;; pour sortir du monde insertion
keymap("i", ";;", "<ESC>", { desc = "Sortir du mode insertion avec ;;" })

-- on efface le surlignage de la recherche
keymap("n", "<leader>nh", ":nohl<CR>", { desc = "Effacer le surlignage de la recherche" })

-- I déplace le texte sélectionné vers le haut en mode visuel (activé avec v)
keymap("v", "<S-i>", ":m .-2<CR>==", { desc = "Déplace le texte sélectionné vers le haut en mode visuel" })
-- K déplace le texte sélectionné vers le bas en mode visuel (activé avec v)
keymap("v", "<S-k>", ":m .+1<CR>==", { desc = "Déplace le texte sélectionné vers le bas en mode visuel" })

-- I déplace le texte sélectionné vers le haut en mode visuel bloc (activé avec V)
keymap(
	"x",
	"<S-i>",
	":move '<-2<CR>gv-gv",
	{ desc = "Déplace le texte sélectionné vers le haut en mode visuel bloc" }
)
-- K déplace le texte sélectionné vers le bas en mode visuel (activé avec V)
keymap(
	"x",
	"<S-k>",
	":move '>+1<CR>gv-gv",
	{ desc = "Déplace le texte sélectionné vers le bas en mode visuel bloc" }
)

-- Changement de fenêtre avec Ctrl + déplacement uniquement au lieu de Ctrl-w + déplacement
keymap("n", "<C-h>", "<C-w>h", { desc = "Déplace le curseur dans la fenêtre de gauche" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Déplace le curseur dans la fenêtre du bas" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Déplace le curseur dans la fenêtre du haut" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Déplace le curseur dans la fenêtre droite" })


-- Navigation entre les buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)


-- Ajout de raccourci en édition de texte

-- Copier (en mode normal ou visuel)
keymap({ "n", "v" }, "<C-c>", '"+y', opts)

-- Coller
keymap("n", "<C-v>", '"+p', opts)
keymap("i", "<C-v>", '<C-r>+', opts)

-- Sauvegarder
keymap("n", "<C-s>", ":w<CR>", opts)
keymap("i", "<C-s>", "<Esc>:w<CR>a", opts)

-- Rechercher un fichier avec Telescope
keymap("n", "<C-p>", ":Telescope find_files<CR>", opts)

-- Supprimer une ligne
keymap("n", "<C-y>", "dd", opts)

-- Revenir en arrière (undo)
keymap("n", "<C-z>", "u", opts)
keymap("i", "<C-z>", "<C-o>u", opts)

-- F12 : Ouvrir / Fermer Neo-tree
keymap("n", "<F12>", ":NvimTreeToggle<CR>", opts)

-- F11 : Vsplit + terminal
keymap("n", "<F10>", ":vsplit | terminal<CR>", opts)