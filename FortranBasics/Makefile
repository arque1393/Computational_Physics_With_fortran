FC=gfortran
FFLAGS=-O3 -Wall -Wextra -std=f2008

SRC=basic_features.f95 main.f95 array_experiment.f95 strings.f95
# sequence.f95

OBJ=${SRC:.f95=.o}

%.o: %.f95
	$(FC) $(FFLAGS) -o $@ -c $<

main.out: $(OBJ)
	$(FC) $(FFLAGS) -o $@ $(OBJ)

clean:
	@rm -f *.mod *.o 
