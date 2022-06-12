{ name = "ps-0.0.1-hello-world"
, dependencies =
  [ 
  , "console"
  , "prelude"
  , "effect"
  , "numbers"
  , "integers"
  ]
, packages = ./packages.dhall
, sources = 
  [ 
  , "src/**/*.purs"
  ]
}