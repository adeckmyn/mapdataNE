#-*- Makefile -*-

.SUFFIXES: .G .L .N .gon .line .name

CP = cp
ECHO = echo
RM = rm -f 
PKGNAME = mapdataNE
MKDIR = mkdir

GDATA = world10.G
LDATA = world10.L
NDATA = world10.N

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

ldata: Lmake
	$(MAKE) $(LDATA)

ndata: 
	$(MAKE) $(NDATA)

PacificCentred: world10.line 
	@$(ECHO) "Converting world10 to world10pc"
	$(AWK) -f convert.awk < world10.line > world10pc.line
	@$(CP) world10.linestats world10pc.linestats
	@$(CP) world10.gon world10pc.gon
	@$(CP) world10.gonstats world10pc.gonstats
	@$(CP) world10.name world10pc.name
	$(AWK) -f convert.awk < world50.line > world50pc.line
	@$(CP) world50.linestats world50pc.linestats
	@$(CP) world50.gon world50pc.gon
# add an extra line to Antarctica (nice with fill=T)
# only for pacific centred map!
	$(SED) -i '/^ 153$$/a \ 2102' world50pc.gon
	$(SED) -i '/^ 259$$/a \ 4863' world10pc.gon
	@$(CP) world50.gonstats world50pc.gonstats
	@$(CP) world50.name world50pc.name

clean:
	$(RM) Gmake Lmake ../inst/mapdata/* $(PKGNAME).s[lo] $(PKGNAME).dylib *.exe
	$(RM) -r ../inst
