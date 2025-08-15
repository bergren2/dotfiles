source ~/.local/share/atuin/init.nu

$env.config.buffer_editor = "vim"

# godotenv shell setup (Updates PATH, and defines GODOT environment variable)

let godot_bin_path = $"($env.HOME)/Library/Application Support/godotenv/godot/bin"

# Check if the godot bin path is already in PATH
if not ($env.PATH | any {|p| $p == $godot_bin_path}) {
    # Prepend to PATH making it the highest priority
    $env.PATH = ([$godot_bin_path] ++ $env.PATH)
}

# Set GODOT environment variable if not already defined or empty
if ($env.GODOT? | is-empty) {
    $env.GODOT = $"($godot_bin_path)/godot"
}

# bun environment variables
$env.BUN_INSTALL = ($env.HOME | path join ".bun")
$env.PATH = ($env.PATH | split row (char esep) | prepend ($env.BUN_INSTALL | path join "bin") | str join (char esep))
