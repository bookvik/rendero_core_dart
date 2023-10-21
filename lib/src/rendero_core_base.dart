typedef MSD = Map<String, dynamic>;

T render<T>(MSD plugins, MSD j) {
  if (plugins[j["module"]] == null) {
    throw Exception("RENDERO ERROR: No have module ${j["module"]}");
  }

  if (plugins[j["module"]][j["type"]] == null) {
    throw Exception(
        "RENDERO ERROR: No have type ${j["type"]} in ${j["module"]}");
  }

  return plugins[j["module"]][j["type"]](
    j["props"],
    j["children"],
    plugins,
    render,
  );
}

