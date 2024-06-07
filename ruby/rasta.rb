
en la documentacion de ruby doc de los hash esta esto

default_proc → anObjectclick to toggle source
If Hash::new was invoked with a block, return that block, otherwise return nil.

1. ¿ que quiere decir → en este contexto ?
2. ¿ que quiere decir :: en este contexto ?
3. ¿ la fuente es esta es ese codigo C  ?

             static VALUE
rb_hash_default_proc(hash) 
  VALUE hash;
{
  if (FL_TEST(hash, HASH_PROC_DEFAULT)) {
      return RHASH(hash)->ifnone;
  }
  return Qnil;
} 
    
Dan este ejemplo
h = Hash.new {|h,k| h[k] = k*k }   #=> {}
p = h.default_proc                 #=> #<Proc:0x401b3d08@-:1>
a = []                             #=> []
p.call(a, 2)
a                                  #=> [nil, nil, 4]

4. ¿ en este acaso h se refiera a hash y k se refiere a key ?
5. ¿ Explicame bien este concept de Hash y block al mismo ?
 
 
 											Desarrollo


En este contexto, → se utiliza para indicar que default_proc es un método de la clase Hash que devuelve un objeto (en este caso, un objeto Proc).

:: en este contexto se utiliza para acceder a un método o una constante de una clase sin necesidad de crear una instancia de la misma. Por ejemplo, Hash::new se refiere al método new de la clase Hash.

Sí, el código proporcionado es parte de la implementación interna de Ruby, escrita en C. Esta parte específica del código C maneja la lógica de default_proc.

Sí, en el ejemplo h se refiere al hash y k se refiere a la clave.

En el ejemplo dado (Hash.new {|h,k| h[k] = k*k }), se está inicializando un nuevo hash con un bloque. Este bloque se ejecuta cada vez que se accede a una clave que no está definida en el hash. En este caso, el bloque asigna el cuadrado de la clave como el valor correspondiente a esa clave. Entonces, cuando se llama p.call(a, 2), se ejecuta el bloque y se asigna 2*2 a la clave 2 en el hash h, y se modifica el array a con nil en las posiciones anteriores y 4 en la posición correspondiente a la clave 2.
