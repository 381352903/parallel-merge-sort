CC = icpc
CFLAGS =
COPTFLAGS = -O3 -g
LDFLAGS =

default:
	@echo "=================================================="
	@echo "To build your sorting code, use:"
	@echo "  make quicksort    	 # For Quicksort"
	@echo "  make mergesort    	 # For Mergesort"
	@echo ""
	@echo "To clean this subdirectory (remove object files"
	@echo "and other junk), use:"
	@echo "  make clean"
	@echo "=================================================="

# Quicksort driver 
quicksort: driver.o sort.o parallel-qsort.o
	$(CC) $(COPTFLAGS) -o $@ $^

# Mergesort driver
mergesort: driver.o sort.o parallel-mergesort.o
	$(CC) $(COPTFLAGS) -o $@ $^

%.o: %.cc
	$(CC) $(CFLAGS) $(COPTFLAGS) -o $@ -c $<

clean:
	rm -f core *.o *~ quicksort mergesort

# eof
