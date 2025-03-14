run-script:
	python3 $(WAR)/${COUNTRY}/${SECTOR}/${CHANNEL}/$(SCRIPT_NAME).py

aussiecossack:
	make run-script WAR=Russia-Ukraine COUNTRY=Russia SECTOR=Abroad CHANNEL=AussieCossack SCRIPT_NAME=aussiecossack
ddgeopolitics:
	make run-script WAR=Russia-Ukraine COUNTRY=Russia SECTOR=Abroad CHANNEL=DDGeopolitics SCRIPT_NAME=ddgeopolitics
intelslava:
	make run-script WAR=Russia-Ukraine COUNTRY=Russia SECTOR=Abroad CHANNEL=IntelSlavaZ SCRIPT_NAME=intelslavaz
kalibrated:
	make run-script WAR=Russia-Ukraine COUNTRY=Russia SECTOR=Abroad CHANNEL=Kalibrated SCRIPT_NAME=kalibrated
ukrainewatch:
	make run-script WAR=Russia-Ukraine COUNTRY=Russia SECTOR=Abroad CHANNEL=UkraineWatch SCRIPT_NAME=ukrainewatch

mash:
	make run-script WAR=Russia-Ukraine COUNTRY=Russia SECTOR=Media CHANNEL=Mash SCRIPT_NAME=mash
readovka:
	make run-script WAR=Russia-Ukraine COUNTRY=Russia SECTOR=Media CHANNEL=Readovka SCRIPT_NAME=readovka
rybar:
	make run-script WAR=Russia-Ukraine COUNTRY=Russia SECTOR=Media CHANNEL=Rybar SCRIPT_NAME=rybar
shot:
	make run-script WAR=Russia-Ukraine COUNTRY=Russia SECTOR=Media CHANNEL=Shot SCRIPT_NAME=shot
tass:
	make run-script WAR=Russia-Ukraine COUNTRY=Russia SECTOR=Media CHANNEL=TASS SCRIPT_NAME=tass

archangel:
	make run-script WAR=Russia-Ukraine COUNTRY=Russia SECTOR=Milbloggers CHANNEL=Archangel SCRIPT_NAME=archangel
borisrozhin:
	make run-script WAR=Russia-Ukraine COUNTRY=Russia SECTOR=Milbloggers CHANNEL=BorisRozhin SCRIPT_NAME=borisrozhin
milinfolive:
	make run-script WAR=Russia-Ukraine COUNTRY=Russia SECTOR=Milbloggers CHANNEL=MilinfoLive SCRIPT_NAME=milinfolive
rvvoenkor:
	make run-script WAR=Russia-Ukraine COUNTRY=Russia SECTOR=Milbloggers CHANNEL=RVvoenkor SCRIPT_NAME=rvvoenkor
yurasumy:
	make run-script WAR=Russia-Ukraine COUNTRY=Russia SECTOR=Milbloggers CHANNEL=YuraSumy SCRIPT_NAME=yurasumy

medvedev:
	make run-script WAR=Russia-Ukraine COUNTRY=Russia SECTOR=Politicians CHANNEL=Medvedev SCRIPT_NAME=medvedev
modru:
	make run-script WAR=Russia-Ukraine COUNTRY=Russia SECTOR=Politicians CHANNEL=MODRU SCRIPT_NAME=modru
volodin:
	make run-script WAR=Russia-Ukraine COUNTRY=Russia SECTOR=Politicians CHANNEL=Volodin SCRIPT_NAME=volodin
zakharova:
	make run-script WAR=Russia-Ukraine COUNTRY=Russia SECTOR=Politicians CHANNEL=Zakharova SCRIPT_NAME=zakharova


censornet:
	make run-script WAR=Russia-Ukraine COUNTRY=Ukraine SECTOR=Media CHANNEL=CensorNET SCRIPT_NAME=censornet
kyivindependent:
	make run-script WAR=Russia-Ukraine COUNTRY=Ukraine SECTOR=Media CHANNEL=KyivIndependent SCRIPT_NAME=kyivindependent
truexanews:
	make run-script WAR=Russia-Ukraine COUNTRY=Ukraine SECTOR=Media CHANNEL=TruexaNews SCRIPT_NAME=truexanews
ukrainenow:
	make run-script WAR=Russia-Ukraine COUNTRY=Ukraine SECTOR=Media CHANNEL=UkraineNow SCRIPT_NAME=ukrainenow
ukrainskapravda:
	make run-script WAR=Russia-Ukraine COUNTRY=Ukraine SECTOR=Media CHANNEL=UkrainskaPravda SCRIPT_NAME=ukrainskapravda

deepstateua:
	make run-script WAR=Russia-Ukraine COUNTRY=Ukraine SECTOR=Milbloggers CHANNEL=DeepStateUA SCRIPT_NAME=deepstateua
officer:
	make run-script WAR=Russia-Ukraine COUNTRY=Ukraine SECTOR=Milbloggers CHANNEL=Officer SCRIPT_NAME=officer
okogora:
	make run-script WAR=Russia-Ukraine COUNTRY=Ukraine SECTOR=Milbloggers CHANNEL=OkoGora SCRIPT_NAME=okogora
petrenko:
	make run-script WAR=Russia-Ukraine COUNTRY=Ukraine SECTOR=Milbloggers CHANNEL=Petrenko SCRIPT_NAME=petrenko
stanislav:
	make run-script WAR=Russia-Ukraine COUNTRY=Ukraine SECTOR=Milbloggers CHANNEL=Stanislav SCRIPT_NAME=stanislav

modua:
	make run-script WAR=Russia-Ukraine COUNTRY=Ukraine SECTOR=Politicians CHANNEL=MODUA SCRIPT_NAME=modua
smyhal:
	make run-script WAR=Russia-Ukraine COUNTRY=Ukraine SECTOR=Politicians CHANNEL=Smyhal SCRIPT_NAME=smyhal
yermak:
	make run-script WAR=Russia-Ukraine COUNTRY=Ukraine SECTOR=Politicians CHANNEL=Yermak SCRIPT_NAME=yermak
zelenskiy:
	make run-script WAR=Russia-Ukraine COUNTRY=Ukraine SECTOR=Politicians CHANNEL=Zelenskiy SCRIPT_NAME=zelenskiy



flashnews:
	make run-script WAR=Israel-Palestine COUNTRY=Israel SECTOR=Media CHANNEL=FlashNews SCRIPT_NAME=flashnews
israelhayom:
	make run-script WAR=Israel-Palestine COUNTRY=Israel SECTOR=Media CHANNEL=IsraelHayom SCRIPT_NAME=israelhayom
n12:
	make run-script WAR=Israel-Palestine COUNTRY=Israel SECTOR=Media CHANNEL=N12 SCRIPT_NAME=n12
yediotnews:
	make run-script WAR=Israel-Palestine COUNTRY=Israel SECTOR=Media CHANNEL=YediotNews SCRIPT_NAME=yediotnews
ynet:
	make run-script WAR=Israel-Palestine COUNTRY=Israel SECTOR=Media CHANNEL=Ynet SCRIPT_NAME=ynet

amarassadi:
	make run-script WAR=Israel-Palestine COUNTRY=Israel SECTOR=Military CHANNEL=AmarAssadi SCRIPT_NAME=amarassadi
amitsegal:
	make run-script WAR=Israel-Palestine COUNTRY=Israel SECTOR=Military CHANNEL=AmitSegal SCRIPT_NAME=amitsegal
arabworld301news:
	make run-script WAR=Israel-Palestine COUNTRY=Israel SECTOR=Military CHANNEL=ArabWorld301News SCRIPT_NAME=arabworld301news
idf:
	make run-script WAR=Israel-Palestine COUNTRY=Israel SECTOR=Military CHANNEL=IDF SCRIPT_NAME=idf
moriahdoron:
	make run-script WAR=Israel-Palestine COUNTRY=Israel SECTOR=Military CHANNEL=MoriahDoron SCRIPT_NAME=moriahdoron


geopwatch:
	make run-script WAR=Israel-Palestine COUNTRY=Palestine SECTOR=Channels CHANNEL=GeoPWatch SCRIPT_NAME=geopwatch
middleeastspectator:
	make run-script WAR=Israel-Palestine COUNTRY=Palestine SECTOR=Channels CHANNEL=MiddleEastSpectator SCRIPT_NAME=middleeastspectator
politicsgr:
	make run-script WAR=Israel-Palestine COUNTRY=Palestine SECTOR=Channels CHANNEL=PoliticsGR SCRIPT_NAME=politicsgr
resistancetrench:
	make run-script WAR=Israel-Palestine COUNTRY=Palestine SECTOR=Channels CHANNEL=ResistanceTrench SCRIPT_NAME=resistancetrench
snn:
	make run-script WAR=Israel-Palestine COUNTRY=Palestine SECTOR=Channels CHANNEL=SNN SCRIPT_NAME=snn

ajpalestine:
	make run-script WAR=Israel-Palestine COUNTRY=Palestine SECTOR=Media CHANNEL=AJPalestine SCRIPT_NAME=ajpalestine
almayadeen:
	make run-script WAR=Israel-Palestine COUNTRY=Palestine SECTOR=Media CHANNEL=AlMayadeen SCRIPT_NAME=almayadeen
iswnews:
	make run-script WAR=Israel-Palestine COUNTRY=Palestine SECTOR=Media CHANNEL=ISWNews SCRIPT_NAME=iswnews
qnn:
	make run-script WAR=Israel-Palestine COUNTRY=Palestine SECTOR=Media CHANNEL=QNN SCRIPT_NAME=qnn
sabereen:
	make run-script WAR=Israel-Palestine COUNTRY=Palestine SECTOR=Media CHANNEL=Sabereen SCRIPT_NAME=sabereen

ansarullah:
	make run-script WAR=Israel-Palestine COUNTRY=Palestine SECTOR=Organisations CHANNEL=Ansarullah SCRIPT_NAME=ansarullah
cmilitary1:
	make run-script WAR=Israel-Palestine COUNTRY=Palestine SECTOR=Organisations CHANNEL=CMilitary1 SCRIPT_NAME=cmilitary1
elamalmoqawama:
	make run-script WAR=Israel-Palestine COUNTRY=Palestine SECTOR=Organisations CHANNEL=ElamAlMoqawama SCRIPT_NAME=elamalmoqawama
hamas:
	make run-script WAR=Israel-Palestine COUNTRY=Palestine SECTOR=Organisations CHANNEL=Hamas SCRIPT_NAME=hamas
hezbollah:
	make run-script WAR=Israel-Palestine COUNTRY=Palestine SECTOR=Organisations CHANNEL=Hezbollah SCRIPT_NAME=hezbollah