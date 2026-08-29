let lang = "typescript";
if variable::is_set("language") {
    lang = variable::get("language");
}

if lang == "typescript" {
    file::rename("pkg-ts/package.json", "package.json");
    file::rename("frontend-ts", "frontend");
    file::delete("pkg-ts");
    file::delete("pkg-js");
} else {
    file::rename("pkg-js/package.json", "package.json");
    file::rename("frontend-js", "frontend");
    file::delete("pkg-ts");
    file::delete("pkg-js");
}

file::delete("hooks");
