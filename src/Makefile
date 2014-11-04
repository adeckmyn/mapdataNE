#-*- Makefile -*-

.SUFFIXES: .G .L .N .gon .line .name

CP = cp
ECHO = echo
RM = rm -f 
PKGNAME = mapdataNE
MKDIR = mkdir

GDATA = world10.G world50.G world10pc.G world50pc.G
LDATA = world10.L world50.L world10pc.L world50pc.L
NDATA = world10.N world50.N world10pc.N world50pc.N

.line.L:
	@$(MKDIR) -p ../inst/mapdata
	./Lmake 0 s b ${*}.line ${*}.linestats ../inst/mapdata/${*}.L

.gon.G:
	./Gmake b ${*}.gon ${*}.gonstats ../inst/mapdata/${*}.G ../inst/mapdata/${*}.L

.name.N:
	@$(MKDIR) -p ../inst/mapdata
	@$(CP) ${*}.name ../inst/mapdata/${*}.N

.PHONY: all gdata ldata ndata

all: gdata ndata

gdata: Gmake ldata
	$(MAKE) $(GDATA)

ldata: Lmake PacificCentred
	$(MAKE) $(LDATA)

ndata:  PacificCentred
	$(MAKE) $(NDATA)

PacificCentred: world10.line world50.line
	@$(ECHO) "Converting world10 to world10pc"
	$(AWK) -f convert.awk < world10.line > world10pc.line
	@$(CP) world10.linestats world10pc.linestats
	@$(CP) world10.gon world10pc.gon
	@$(CP) world10.gonstats world10pc.gonstats
	@$(CP) world10.name world10pc.name
	$(AWK) -f convert.awk < world50.line > world50pc.line
	@$(CP) world50.linestats world50pc.linestats
	@$(CP) world50.gon world50pc.gon
	@$(CP) world50.gonstats world50pc.gonstats
	@$(CP) world50.name world50pc.name

clean:
	$(RM) Gmake Lmake ../inst/mapdata/* world[15]0pc.* $(PKGNAME).s[lo] $(PKGNAME).dylib *.exe
	$(RM) -r ../inst
