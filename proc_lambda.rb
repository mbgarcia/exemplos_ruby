def testando_proc
  p = Proc.new{return "Bum! "}
  p.call
  "Nunca imprime isso"
end
puts testando_proc

def testando_lambda
	l = lambda{ return "Oi!"}
	l.call
	"Imprime isso"
end
puts testando_lambda