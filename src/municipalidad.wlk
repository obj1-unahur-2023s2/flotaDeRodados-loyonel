import rodados.*
class Dependencia
{
	var flotaDeRodados = []
	method agregarAFlota(rodado)
	{
		flotaDeRodados.add(rodado)
	}
	method quitarDeFlota(rodado)
	{
		flotaDeRodados.remove(rodado)
	}
	method pesoTotalFlota() = flotaDeRodados.sum({flota => flota.peso()})
	method estaBienEquipada() = flotaDeRodados.size() >= 3 and flotaDeRodados.all({flota => flota.velocidadMaxima() >= 100})
	method capacidadTotalEnColor(color) = self.rodadosDeColor(color).sum({flota => flota.capacidad()})
	method colorDelRodadoMasRapido() = null //hacer
	method rodadosDeColor(color) = flotaDeRodados.filter({flota => flota.color() == color})
	method rodadoMasRapido() = flotaDeRodados.max({flota => flota.velocidadMaxima()})
}