import XMonad
import XMonad.Config.Desktop
import XMonad.Config.Gnome
import XMonad.Layout.MouseResizableTile
import XMonad.Layout.Tabbed

main = xmonad gnomeConfig
    { modMask = mod4Mask
    , layoutHook = desktopLayoutModifiers myLayout
    }

myLayout = simpleTabbed ||| tiledMirrored ||| tiled
  where
    tiled = mouseResizableTile --nmaster delta ratio --slav
    tiledMirrored = mouseResizableTileMirrored
