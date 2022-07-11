-- packer config --

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'gruvbox-community/gruvbox'

    if packer_bootstrap then
        require("packer").sync()
    end
end)

