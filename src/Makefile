#-*- Makefile -*-

.SUFFIXES: .G .L .N .gon .line .name

CP = cp
ECHO = echo
RM = rm -f 
PKGNAME = mapdataNE
MKDIR = mkdir

GDATA = world10.G world50.G
LDATA = world10.L world50.L
NDATA = world10.N world50.N

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

ldata: Lmake # world10pc.line
	$(MAKE) $(LDATA)

ndata:  # world10pc.line
	$(MAKE) $(NDATA)

world10pc.line: world10.line
	@$(ECHO) "Converting world10 to world10pc"
	$(AWK) -f convert.awk < world10.line > world10pc.line
	@$(CP) world10.linestats world10pc.linestats
	@$(CP) world10.gon world10pc.gon
	@$(CP) world10.gonstats world10pc.gonstats
	@$(CP) world10.name world10pc.name

clean:
	$(RM) Gmake Lmake ../inst/mapdata/* world10pc.* $(PKGNAME).s[lo] $(PKGNAME).dylib *.exe
	$(RM) -r ../inst
