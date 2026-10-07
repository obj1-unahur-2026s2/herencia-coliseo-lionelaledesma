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
  method armadura(gladiador) = 5 + gladiador.destreza() * 0.1
}

class Gladiador {
  var vida = 100
  method vida() = vida

  method atacar(atacado) {
   atacado.recibirDanio(self)
  }

  method recibirDanio(atacante) {
    vida = vida - (atacante.poderAtaque() - self.defensa())
  }

  method pelearCon(gladiador) {
   self.atacar(gladiador)
   gladiador.atacar(self)
  }

  method defensa()
}

class Mirmillones inherits Gladiador {
  var arma
  var armadura 
  var property fuerza
  method destreza() = 15

  method cambiarArmadura(otraArmadura) {
    armadura = otraArmadura
  }

  method poderDeAtaque() = fuerza + arma.valorDeAtaque()

  override method defensa() = armadura.valorArmadura(self)+ self.destreza()

  method creargrupocon(gladiador) {
    return new Grupo(nombre = "Mirmillolandia", miembros = [self, gladiador])
  } 
    
}

class Dimachaerus inherits Gladiador {
  const armas = []
  var destreza
  method fuerza() = 10

  method poderDeAtaque() = self.fuerza() + armas.sum({a => a.valorDeAtaque()})
  override method atacar(atacado) {
    super(atacado)
    destreza += 1
  }
  override method defensa() = destreza / 2

  method creargrupocon(gladiador) {
    const fuerzaGrupo = self.poderDeAtaque() + gladiador.poderDeAtaque()
    return new Grupo(nombre = "D-" + fuerzaGrupo, miembros = [self, gladiador])
  }
}

class Grupo {
  const nombre 
  var peleas = 0
  const miembros = []

  method agregarMiembro(gladiador) {
    miembros.add(gladiador)
  }

  method quitarMiembro(gladiador) {
    miembros.remove(gladiador)
  }

  method vivos() = miembros.filter({g => g.vida() > 0})

  method campeon() = self.vivos().max({g => g.fuerza()})
}

