{ name = "ps-0.0.1-hello-world"
, dependencies =
  [ 
  , "console"
  , "prelude"
  , "effect"
  , "aff"
  , "node-fs-aff"
  , "node-path"
  , "node-buffer"
  ]
, packages = ./packages.dhall
, sources = 
  [ 
  , "src/**/*.purs"
  ]
}