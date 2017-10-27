(* ###################################################################### *)
fun le_arquivo (nome_arquivo : string) = let 

  val reader = TextIO.openIn nome_arquivo 

  fun loop reader = 

   case TextIO.inputLine reader of 

      SOME linha => linha :: loop reader 

    | NONE      => [] 

in 
  loop reader before TextIO.closeIn reader 

end ;

(* ###################################################################### *)
val nome_arquivo = "C:/Users/12111151/Downloads/trab_paradigmas/gen.txt" ;
val lista_strings = le_arquivo(nome_arquivo);