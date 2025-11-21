# Vim: Конфигурация 
> Базавая конфигурация под Vim.

## Установленные плагины
- [NERDtree]()
- [Bufexplorer]()
- [vim-airline]()
  - [vim-airline-themes]()
- [coc.nvim]()
- [vim-deus]()

## Комбинация клафиш
- **Основаные комбинации Vim**
  - `Space+w` - Сохранение файла (_Собственный_)
- **NERDtree**
  - `Ctrl+n` - Открытие
  - `Ctrl+t` - Закрытие 
- **Bufexplorer**
  - `Space+be` - нормально открытый
  - `Space+bt` - переключение между открытием и закрытием
  - `Space+bs` - принудительное горизонтальное раздвигание
  - `Space+bv` - принудительное вертикальное раздвигание

---

<details>
  <summary>Установка пакетного менеджера</summary>

#### Linux
```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
  
#### Windows
```powershell
  iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
      ni $HOME/vimfiles/autoload/plug.vim -Force
```
  
</details>
