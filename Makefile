%.cs : %.tt
	t4 -o $@ $<

all: CompilerDefinitions.cs

clean:
	$(RM) CompilerDefinitions.cs
