main = do
  name <- getLine
  if null name then
    return ()
  else do
    putStrLn name
    main
