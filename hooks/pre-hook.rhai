let lang = "typescript";
if variable::is_set("language") {
    lang = variable::get("language");
}

if lang == "typescript" {
    file::rename("frontend-ts", "frontend");
} else {
    file::rename("frontend-js", "frontend");
}

file::delete("hooks");
