{ lib, config, pkgs, ... }:
{
  imports = [
    ./waybar.nix
    #./theme.nix
  ]; 
  wayland.windowManager.hyprland.enable = true;
  /*
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";

    exec-once = [
      "hyprctl setcursor Bibata-Modern-Ice 24 &"
      "swww init &"
      "waybar &"
      "mako &"
      "polkit-kde-authentication-agent-1 &"
      "udiskie &"
    ];

    env = [
      "WLR_DRM_NO_ATOMIC, 1"
      "NIXPKGS_ALLOW_UNFREE, 1"
    ];
   
    windowrulev2 = [
      "immediate, class:^(floorp)$"
      "immediate, class:^(Rocket League)$"
      "immediate, class:^(heroic)$"
    ];
    
    monitor = "eDP-1, highres, 0x0, 1.25";

    xwayland = {
    	force_zero_scaling = true;
    };
    
    "$menu" = "rofi -show drun -show-icons";

    input = {
      kb_layout = "us";
      follow_mouse = 1;

      touchpad = {
        natural_scroll = true;
      };

      sensitivity = 0.0;
    };

    general = {
      gaps_in = 5;
      gaps_out = 15;
      border_size = 2;
      "col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
      "col.inactive_border" = "rgba(595959aa)";
      layout = "dwindle";
      allow_tearing = true; # Search Hyprland Tearing
    };

    decoration = {
      rounding = 10;
      blur = {
        enabled = true;
        size = 3;
        passes = 1;
        vibrancy = 0.1696;
      };

      drop_shadow = true;
      shadow_range = 4;
      shadow_render_power = 3;
      "col.shadow" = "rgba(1a1a1aee)";
    };

    animations = {
      enabled = true;

      bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";

      animation = [
        "windows, 1, 7, myBezier"
        "windowsOut, 1, 7, default, popin 80%"
        "border, 1, 10, default"
        "borderangle, 1, 8, default"
        "fade, 1, 7, default"
        "workspaces, 1, 4, default"
      ];
    };

    dwindle = {
      pseudotile = true;
      preserve_split = true;
    };

    master = {
      new_is_master = true;
    };

    gestures = {
      workspace_swipe = true;
    };

    misc = {
      force_default_wallpaper = -1;
    };

    bind = [
      "$mod, T, exec, kitty"
      "$mod, F, exec, floorp"
      "$mod, E, exec, thunar"
      "$mod, Q, killactive"
      "$mod, D, exec, $menu"
      "$mod, space, togglefloating"
      "$mod, P, pseudo"
      "$mod, J, togglesplit"
      "$mod, V, fullscreen"
      "$mod, left, movefocus, l"
      "$mod, right, movefocus, r"
      "$mod, up, movefocus, u"
      "$mod, down, movefocus, d"
      "$mod, 1, workspace, 1"
      "$mod, 2, workspace, 2"
      "$mod, 3, workspace, 3"
      "$mod, 4, workspace, 4"
      "$mod, 5, workspace, 5"
      "$mod, 6, workspace, 6"
      "$mod, 7, workspace, 7"
      "$mod, 8, workspace, 8"
      "$mod, 9, workspace, 9"
      "$mod, 0, workspace, 10"
      "$mod SHIFT, 1, movetoworkspace, 1"
      "$mod SHIFT, 2, movetoworkspace, 2"
      "$mod SHIFT, 3, movetoworkspace, 3"
      "$mod SHIFT, 4, movetoworkspace, 4"
      "$mod SHIFT, 5, movetoworkspace, 5"
      "$mod SHIFT, 6, movetoworkspace, 6"
      "$mod SHIFT, 7, movetoworkspace, 7"
      "$mod SHIFT, 8, movetoworkspace, 8"
      "$mod SHIFT, 9, movetoworkspace, 9"
      "$mod SHIFT, 0, movetoworkspace, 10"
      #"$mod, mouse:273, resizewindow"
    ];
    bindm = [
      "$mod, mouse:272, movewindow"
      "$mod, mouse:273, resizewindow"
    ];

    binde = [
      # Volume and Media Control
      ", XF86AudioRaiseVolume, exec, pamixer -i 5 --allow-boost"
      ", XF86AudioLowerVolume, exec, pamixer -d 5 --allow-boost"
      ", XF86AudioMicMute, exec, pamixer --default-source -m"
      ", XF86AudioMute, exec, pamixer -t"
      ", XF86AudioPlay, exec, playerctl play-pause"
      ", XF86AudioPause, exec, playerctl play-pause"
      ", XF86AudioNext, exec, playerctl next"
      ", XF86AudioPrev, exec, playerctl previous"
      ", XF86MonBrightnessUp, exec, brightnessctl s +5%"
      ", XF86MonBrightnessDown, exec, brightnessctl s 5%-"
    ];
  };
  */
}
