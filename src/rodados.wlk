import trafic.*
class ChevroletCorsa
{
	const color = null
	method capacidad() = 4
	method velocidadMaxima() = 150
	method peso() = 1300
	method color() = color
} 
class RenaultKwid
{
	var tienePuestoTanqueDeGas = true
	method capacidad() = if(tienePuestoTanqueDeGas) 3 else 4
	method velocidadMaxima() = if(tienePuestoTanqueDeGas) 120 else 110
	method peso() = if(tienePuestoTanqueDeGas) 1350 else 1200
	method color() = "azul"
} 
object trafic
{
	var interior
	var motor
	method capacidad() = interior.capacidad()
	method velocidadMaxima() = motor.velocidadMaxima()
	method peso() = 4000 + interior.peso() + motor.peso()
	method color() = "blanco"
}
class AutosEspeciales
{
	const color = null
	const capacidad = null
	const peso = null
	const velocidadMaxima = null
	method capacidad() = capacidad
	method velocidadMaxima() = velocidadMaxima
	method peso() = peso
	method color() = color
}