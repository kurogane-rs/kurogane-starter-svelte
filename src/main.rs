#![cfg_attr(target_os = "windows", windows_subsystem = "windows")]

use kurogane::App;

fn main() {
    #[cfg(debug_assertions)]
    App::url("{{dev_url}}").run_or_exit();

    #[cfg(not(debug_assertions))]
    App::new("content").run_or_exit();
}
