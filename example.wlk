class Arma {
  method valorDeAtaque()
}

class ArmaDeFilo inherits Arma {
  const filo
  const longitud 

  override method valorDeAtaque() = filo * longitud 
}

class Contundente inherits Arma {
  const peso 

  override method valorDeAtaque() = peso
}

object casco {
  method armadura(gladiador) = 10
}

object escudo {
  method armadura(gladiador) = 5 + gladiador.destreza()
}

class Gladiador {
  var vida = 100
  method atacar(atacado) {
   gladiador.recibirDanio(self)
  }

  method recibirDanio(atacante) {
    vida = vida - (atacante.poderAtaque() - self.defensa())
  }

  method defensa()

  method defenderse()

  method pelearCon(gladiador) {
   self.atacar(gladiador)
   gladiador.atacar(self)
  }
}

class Mirmillones inherits Gladiador {
  var Arma
  var armadura 
  var property fuerza
  method destreza() = 15
  method cambiarArmadura(otraArmadura){armadura = otraArmadura}
  method poderDeAtaque() = fuerza + arma.valorDeAtaque()
  override method defensa() = armadura.valorArmadura(self)+ self.destreza()

  method creargrupocon(gladiador) return new Grupo nombre Mirmillolandia, miembros self, gladiador 
}

class Dimachaerus inherits Gladiador {
  const armas = []
  const destreza 
  method fuerza() = 10
  method poderDeAtaque() = self.fuerza() + armas.sum({a => a.valorDeAtaque()})
  override method atacar(atacado) {
    super(atacado)
    destreza += 1
  }
  override method defensa(){
   defensa = destreza/2
  }

  creargrupocon gladiador 
  const fuerza grupo self.podeataque + gladiador.poderataque
 return new Grupo nombre D- + fuerzagrupo miembros [self, gladiador]
}
  

class Grupo {
  const nombre 
  var peleas = 0
  const miembros=[]
  method agregarMiembro(gladiador){miembro.add(gladiador)}

  method quitar miembro

  method vivos() = miembros.filter(vida()>o

  method campeón selfvibo.maxg.fuerza


}

