	.text
	sub		r0, r0, r0
	b		_min_caml_start
	# main program start
_min_caml_start:
	addi	r28, r0, 0		# 425
	addis	r28, r0, 0
	ori		r28, r28, 0		# 425
	mv		r9, r4
	addi	r4, r4, 0		# 413
	mv		r28, r4
	addi	r4, r4, 2		# 575
	sw		r9, 0(r28)		# 575
	sw		r9, 1(r28)		# 575
	addi	r9, r0, 1		# 609
	addi	r61, r0, 1		# 469
	cmpi	r61, 0
	bge		.b1631		# 469
.b1629:
	mv		r28, r4
	addi	r4, r4, 3		# 575
	sw		r9, 0(r28)		# 575
	sw		r9, 1(r28)		# 575
	sw		r9, 2(r28)		# 575
	addi	r61, r0, 2		# 469
	cmpi	r61, 0
	bge		.b1635		# 469
.b1633:
	mv		r28, r4
	addi	r4, r4, 2		# 575
	sw		r9, 0(r28)		# 575
	sw		r9, 1(r28)		# 575
	addi	r9, r0, 1		# 469
	cmpi	r9, 0
	bge		.b1639		# 469
.b1637:
	lw		r9, 0(r28)		# 716
	addis	r61, r0, 16256
	ori		r61, r61, 0		# 716
	sw		r61, 0(r9)		# 716
	addis	r61, r0, 16384
	ori		r61, r61, 0		# 733
	sw		r61, 1(r9)		# 716
	addis	r61, r0, 16448
	ori		r61, r61, 0		# 750
	sw		r61, 2(r9)		# 716
	lw		r61, 1(r28)		# 767
	addis	r9, r0, 16512
	ori		r9, r9, 0		# 767
	sw		r9, 0(r61)		# 716
	addis	r9, r0, 16544
	ori		r9, r9, 0		# 784
	sw		r9, 1(r61)		# 716
	addis	r9, r0, 16576
	ori		r9, r9, 0		# 801
	sw		r9, 2(r61)		# 716
	lw		r9, 0(r28)		# 818
	addis	r61, r0, 16608
	ori		r61, r61, 0		# 818
	sw		r61, 0(r9)		# 716
	addis	r61, r0, 16640
	ori		r61, r61, 0		# 835
	sw		r61, 1(r9)		# 716
	lw		r9, 1(r28)		# 852
	addis	r61, r0, 16656
	ori		r61, r61, 0		# 852
	sw		r61, 0(r9)		# 716
	addis	r61, r0, 16672
	ori		r61, r61, 0		# 869
	sw		r61, 1(r9)		# 716
	lw		r61, 2(r28)		# 887
	addis	r9, r0, 16688
	ori		r9, r9, 0		# 887
	sw		r9, 0(r61)		# 716
	addis	r9, r0, 16704
	ori		r9, r9, 0		# 905
	sw		r9, 1(r61)		# 716
	addi	r9, r0, 1		# 277
	cmpi	r9, 0
	bge		.b1643		# 277
.b1641:
	lw		r9, 0(r28)		# 961
	lw		r9, 0(r9)		# 951
	ftoi	r9, r9		# 543
	cmpi	r9, 0
	bge		.b1654		# 1797
.b1655:
	addi	r9, r0, 45		# 1823
	out		r9		# 946
	sub		r9, r0, r9
	cmpi	r9, 0
	beq		.b1657		# 1907
.b1658:
	cmpi	r9, 256
	bge		.b1659		# 1942
.b1660:
	cmpi	r9, 200
	bge		.b1737		# 1098
.b1738:
	cmpi	r9, 100
	bge		.b1739		# 1157
.b1740:
	mv		r9, r9		# 1220
	cmpi	r9, 10
	bge		.b1741		# 1245
.b1742:
	addi	r9, r9, 48		# 1264
	out		r9		# 946
		# 962
.b1656:
	addi	r9, r0, 10		# 848
	out		r9		# 880
	lw		r9, 1(r9)		# 1003
	ftoi	r9, r9		# 543
	cmpi	r9, 0
	bge		.b1750		# 1797
.b1751:
	addi	r9, r0, 45		# 1823
	out		r9		# 946
	sub		r9, r0, r9
	cmpi	r9, 0
	beq		.b1753		# 1907
.b1754:
	cmpi	r9, 256
	bge		.b1755		# 1942
.b1756:
	cmpi	r9, 200
	bge		.b1829		# 1098
.b1830:
	cmpi	r9, 100
	bge		.b1831		# 1157
.b1832:
	mv		r9, r9		# 1220
	cmpi	r9, 10
	bge		.b1833		# 1245
.b1834:
	addi	r9, r9, 48		# 1264
	out		r9		# 946
		# 962
.b1752:
	out		r9		# 880
	lw		r9, 1(r28)		# 1065
	lw		r9, 0(r9)		# 1055
	ftoi	r9, r9		# 543
	cmpi	r9, 0
	bge		.b1842		# 1797
.b1843:
	addi	r9, r0, 45		# 1823
	out		r9		# 946
	sub		r9, r0, r9
	cmpi	r9, 0
	beq		.b1845		# 1907
.b1846:
	cmpi	r9, 256
	bge		.b1847		# 1942
.b1848:
	cmpi	r9, 200
	bge		.b1921		# 1098
.b1922:
	cmpi	r9, 100
	bge		.b1923		# 1157
.b1924:
	mv		r9, r9		# 1220
	cmpi	r9, 10
	bge		.b1925		# 1245
.b1926:
	addi	r9, r9, 48		# 1264
	out		r9		# 946
		# 962
.b1844:
	out		r9		# 880
	lw		r9, 1(r9)		# 1107
	ftoi	r9, r9		# 543
	cmpi	r9, 0
	bge		.b1934		# 1797
.b1935:
	addi	r9, r0, 45		# 1823
	out		r9		# 946
	sub		r9, r0, r9
	cmpi	r9, 0
	beq		.b1937		# 1907
.b1938:
	cmpi	r9, 256
	bge		.b1939		# 1942
.b1940:
	cmpi	r9, 200
	bge		.b2013		# 1098
.b2014:
	cmpi	r9, 100
	bge		.b2015		# 1157
.b2016:
	mv		r9, r9		# 1220
	cmpi	r9, 10
	bge		.b2017		# 1245
.b2018:
	addi	r9, r9, 48		# 1264
	out		r9		# 946
		# 962
	out		r9		# 880
		# 896
	blr		# 0
.b2017:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmpi	r9, 10
	bge		.b2021		# 990
.b2022:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
	lw		r9, 1(r61)		# 1295
	lw		r9, 0(r61)		# 1295
	cmpi	r9, 0
	beq		.b2023		# 1326
.b2024:
	addi	r9, r9, 48		# 1383
	out		r9		# 946
	addi	r9, r9, 48		# 1410
	out		r9		# 946
		# 962
	out		r9		# 880
		# 896
	blr		# 0
.b2023:
	addi	r9, r9, 48		# 1346
	out		r9		# 946
		# 962
	out		r9		# 880
		# 896
	blr		# 0
.b2021:
	addi	r9, r9, -10
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmpi	r9, 10
	bge		.b2021		# 990
	b		.b2022
.b2015:
	addi	r9, r0, 49		# 1180
	out		r9		# 946
	addi	r9, r9, -100
	cmpi	r9, 10
	bge		.b2017		# 1245
	b		.b2018
.b2013:
	addi	r9, r0, 50		# 1121
	out		r9		# 946
	addi	r9, r9, -200
	cmpi	r9, 10
	bge		.b2017		# 1245
	b		.b2018
.b1939:
	mv		r61, r4
	addi	r4, r4, 10		# 1984
	sw		r28, 0(r61)		# 1984
	sw		r28, 1(r61)		# 1984
	sw		r28, 2(r61)		# 1984
	sw		r28, 3(r61)		# 1984
	sw		r28, 4(r61)		# 1984
	sw		r28, 5(r61)		# 1984
	sw		r28, 6(r61)		# 1984
	sw		r28, 7(r61)		# 1984
	sw		r28, 8(r61)		# 1984
	sw		r28, 9(r61)		# 1984
	addis	r61, r0, 15258
	ori		r61, r61, 51712		# 2025
	cmp	r61, r9
	ble		.b1942		# 2025
.b1943:
	mv		r9, r9		# 2131
	addis	r61, r0, 1525
	ori		r61, r61, 57600		# 2148
	cmp	r61, r9
	ble		.b1949		# 2148
.b1950:
	mv		r9, r9		# 2252
	addis	r61, r0, 152
	ori		r61, r61, 38528		# 2269
	cmp	r61, r9
	ble		.b1956		# 2269
.b1957:
	mv		r9, r9		# 2371
	addis	r61, r0, 15
	ori		r61, r61, 16960		# 2388
	cmp	r61, r9
	ble		.b1963		# 2388
.b1964:
	mv		r9, r9		# 2488
	addis	r61, r0, 1
	ori		r61, r61, 34464		# 2505
	cmp	r61, r9
	ble		.b1970		# 2505
.b1971:
	mv		r9, r9		# 2603
	cmpi	r9, 10000
	bge		.b1977		# 2620
.b1978:
	mv		r9, r9		# 2716
	cmpi	r9, 1000
	bge		.b1984		# 2733
.b1985:
	mv		r9, r9		# 2827
	cmpi	r9, 100
	bge		.b1991		# 2844
.b1992:
	mv		r9, r9		# 2936
	cmpi	r9, 10
	bge		.b1998		# 2953
.b1999:
	mv		r9, r9		# 3043
.b1997:
	sw		r9, 0(r61)		# 3052
	addi	r9, r0, 9		# 1483
	addi	r9, r0, 0		# 1483
	cmpi	r9, 0
	bge		.b2005		# 1483
.b1936:
	out		r9		# 880
		# 896
	blr		# 0
.b2005:
	lwx		r9, r61, r9,		# 1508
	cmpi	r9, 0
	beq		.b2007		# 1533
.b2008:
	addi	r9, r9, 48		# 1661
	out		r9		# 946
	addi	r9, r9, -1
	mv		r9, r9		# 1688
	mv		r9, r9		# 1688
	cmpi	r9, 0
	bge		.b2005		# 1483
	b		.b1936
.b2007:
	cmpi	r9, 0
	beq		.b2009		# 1555
.b2011:
	addi	r9, r0, 48		# 1571
	out		r9		# 946
		# 962
.b2009:
	addi	r9, r9, -1
	mv		r9, r9		# 1600
	mv		r9, r9		# 1600
	cmpi	r9, 0
	bge		.b2005		# 1483
	b		.b1936
.b1998:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmpi	r9, 10
	bge		.b2002		# 990
.b2003:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b2000:
	lw		r9, 1(r61)		# 2977
	lw		r9, 0(r61)		# 2977
	sw		r9, 1(r61)		# 3010
	mv		r9, r9		# 3030
	b		.b1997		# 3030
.b2002:
	addi	r9, r9, -10
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmpi	r9, 10
	bge		.b2002		# 990
	b		.b2003
.b1991:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmpi	r9, 100
	bge		.b1995		# 990
.b1996:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1993:
	lw		r9, 1(r61)		# 2869
	lw		r9, 0(r61)		# 2869
	sw		r9, 2(r61)		# 2903
	mv		r9, r9		# 2923
	cmpi	r9, 10
	bge		.b1998		# 2953
	b		.b1999
.b1995:
	addi	r9, r9, -100
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmpi	r9, 100
	bge		.b1995		# 990
	b		.b1996
.b1984:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmpi	r9, 1000
	bge		.b1988		# 990
.b1989:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1986:
	lw		r9, 1(r61)		# 2759
	lw		r9, 0(r61)		# 2759
	sw		r9, 3(r61)		# 2794
	mv		r9, r9		# 2814
	cmpi	r9, 100
	bge		.b1991		# 2844
	b		.b1992
.b1988:
	addi	r9, r9, -1000
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmpi	r9, 1000
	bge		.b1988		# 990
	b		.b1989
.b1977:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmpi	r9, 10000
	bge		.b1981		# 990
.b1982:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1979:
	lw		r9, 1(r61)		# 2647
	lw		r9, 0(r61)		# 2647
	sw		r9, 4(r61)		# 2683
	mv		r9, r9		# 2703
	cmpi	r9, 1000
	bge		.b1984		# 2733
	b		.b1985
.b1981:
	addi	r9, r9, -10000
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmpi	r9, 10000
	bge		.b1981		# 990
	b		.b1982
.b1970:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmp	r61, r9
	ble		.b1974		# 990
.b1975:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1972:
	lw		r9, 1(r61)		# 2533
	lw		r9, 0(r61)		# 2533
	sw		r9, 5(r61)		# 2570
	mv		r9, r9		# 2590
	cmpi	r9, 10000
	bge		.b1977		# 2620
	b		.b1978
.b1974:
	sub		r9, r9, r61		# 1005
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmp	r61, r9
	ble		.b1974		# 990
	b		.b1975
.b1963:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmp	r61, r9
	ble		.b1967		# 990
.b1968:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1965:
	lw		r9, 1(r61)		# 2417
	lw		r9, 0(r61)		# 2417
	sw		r9, 6(r61)		# 2455
	mv		r9, r9		# 2475
	addis	r61, r0, 1
	ori		r61, r61, 34464		# 2505
	cmp	r61, r9
	ble		.b1970		# 2505
	b		.b1971
.b1967:
	sub		r9, r9, r61		# 1005
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmp	r61, r9
	ble		.b1967		# 990
	b		.b1968
.b1956:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmp	r61, r9
	ble		.b1960		# 990
.b1961:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1958:
	lw		r9, 1(r61)		# 2299
	lw		r9, 0(r61)		# 2299
	sw		r9, 7(r61)		# 2338
	mv		r9, r9		# 2358
	addis	r61, r0, 15
	ori		r61, r61, 16960		# 2388
	cmp	r61, r9
	ble		.b1963		# 2388
	b		.b1964
.b1960:
	sub		r9, r9, r61		# 1005
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmp	r61, r9
	ble		.b1960		# 990
	b		.b1961
.b1949:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmp	r61, r9
	ble		.b1953		# 990
.b1954:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1951:
	lw		r9, 1(r61)		# 2179
	lw		r9, 0(r61)		# 2179
	sw		r9, 8(r61)		# 2219
	mv		r9, r9		# 2239
	addis	r61, r0, 152
	ori		r61, r61, 38528		# 2269
	cmp	r61, r9
	ble		.b1956		# 2269
	b		.b1957
.b1953:
	sub		r9, r9, r61		# 1005
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmp	r61, r9
	ble		.b1953		# 990
	b		.b1954
.b1942:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmp	r61, r9
	ble		.b1946		# 990
.b1947:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1944:
	lw		r9, 1(r61)		# 2057
	lw		r9, 0(r61)		# 2057
	sw		r9, 9(r61)		# 2098
	mv		r9, r9		# 2118
	addis	r61, r0, 1525
	ori		r61, r61, 57600		# 2148
	cmp	r61, r9
	ble		.b1949		# 2148
	b		.b1950
.b1946:
	sub		r9, r9, r61		# 1005
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmp	r61, r9
	ble		.b1946		# 990
	b		.b1947
.b1937:
	addi	r9, r0, 48		# 1921
	out		r9		# 946
		# 962
	out		r9		# 880
		# 896
	blr		# 0
.b1934:
	mv		r9, r9		# 1883
	cmpi	r9, 0
	beq		.b1937		# 1907
	b		.b1938
.b1925:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmpi	r9, 10
	bge		.b1929		# 990
.b1930:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
	lw		r9, 1(r61)		# 1295
	lw		r9, 0(r61)		# 1295
	cmpi	r9, 0
	beq		.b1931		# 1326
.b1932:
	addi	r9, r9, 48		# 1383
	out		r9		# 946
	addi	r9, r9, 48		# 1410
	out		r9		# 946
		# 962
	b		.b1844		# 962
.b1931:
	addi	r9, r9, 48		# 1346
	out		r9		# 946
		# 962
	b		.b1844		# 962
.b1929:
	addi	r9, r9, -10
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmpi	r9, 10
	bge		.b1929		# 990
	b		.b1930
.b1923:
	addi	r9, r0, 49		# 1180
	out		r9		# 946
	addi	r9, r9, -100
	cmpi	r9, 10
	bge		.b1925		# 1245
	b		.b1926
.b1921:
	addi	r9, r0, 50		# 1121
	out		r9		# 946
	addi	r9, r9, -200
	cmpi	r9, 10
	bge		.b1925		# 1245
	b		.b1926
.b1847:
	mv		r61, r4
	addi	r4, r4, 10		# 1984
	sw		r28, 0(r61)		# 1984
	sw		r28, 1(r61)		# 1984
	sw		r28, 2(r61)		# 1984
	sw		r28, 3(r61)		# 1984
	sw		r28, 4(r61)		# 1984
	sw		r28, 5(r61)		# 1984
	sw		r28, 6(r61)		# 1984
	sw		r28, 7(r61)		# 1984
	sw		r28, 8(r61)		# 1984
	sw		r28, 9(r61)		# 1984
	addis	r61, r0, 15258
	ori		r61, r61, 51712		# 2025
	cmp	r61, r9
	ble		.b1850		# 2025
.b1851:
	mv		r9, r9		# 2131
	addis	r61, r0, 1525
	ori		r61, r61, 57600		# 2148
	cmp	r61, r9
	ble		.b1857		# 2148
.b1858:
	mv		r9, r9		# 2252
	addis	r61, r0, 152
	ori		r61, r61, 38528		# 2269
	cmp	r61, r9
	ble		.b1864		# 2269
.b1865:
	mv		r9, r9		# 2371
	addis	r61, r0, 15
	ori		r61, r61, 16960		# 2388
	cmp	r61, r9
	ble		.b1871		# 2388
.b1872:
	mv		r9, r9		# 2488
	addis	r61, r0, 1
	ori		r61, r61, 34464		# 2505
	cmp	r61, r9
	ble		.b1878		# 2505
.b1879:
	mv		r9, r9		# 2603
	cmpi	r9, 10000
	bge		.b1885		# 2620
.b1886:
	mv		r9, r9		# 2716
	cmpi	r9, 1000
	bge		.b1892		# 2733
.b1893:
	mv		r9, r9		# 2827
	cmpi	r9, 100
	bge		.b1899		# 2844
.b1900:
	mv		r9, r9		# 2936
	cmpi	r9, 10
	bge		.b1906		# 2953
.b1907:
	mv		r9, r9		# 3043
.b1905:
	sw		r9, 0(r61)		# 3052
	addi	r9, r0, 9		# 1483
	addi	r9, r0, 0		# 1483
	cmpi	r9, 0
	bge		.b1913		# 1483
	b		.b1844
.b1913:
	lwx		r9, r61, r9,		# 1508
	cmpi	r9, 0
	beq		.b1915		# 1533
.b1916:
	addi	r9, r9, 48		# 1661
	out		r9		# 946
	addi	r9, r9, -1
	mv		r9, r9		# 1688
	mv		r9, r9		# 1688
	cmpi	r9, 0
	bge		.b1913		# 1483
	b		.b1844
.b1915:
	cmpi	r9, 0
	beq		.b1917		# 1555
.b1919:
	addi	r9, r0, 48		# 1571
	out		r9		# 946
		# 962
.b1917:
	addi	r9, r9, -1
	mv		r9, r9		# 1600
	mv		r9, r9		# 1600
	cmpi	r9, 0
	bge		.b1913		# 1483
	b		.b1844
.b1906:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmpi	r9, 10
	bge		.b1910		# 990
.b1911:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1908:
	lw		r9, 1(r61)		# 2977
	lw		r9, 0(r61)		# 2977
	sw		r9, 1(r61)		# 3010
	mv		r9, r9		# 3030
	b		.b1905		# 3030
.b1910:
	addi	r9, r9, -10
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmpi	r9, 10
	bge		.b1910		# 990
	b		.b1911
.b1899:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmpi	r9, 100
	bge		.b1903		# 990
.b1904:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1901:
	lw		r9, 1(r61)		# 2869
	lw		r9, 0(r61)		# 2869
	sw		r9, 2(r61)		# 2903
	mv		r9, r9		# 2923
	cmpi	r9, 10
	bge		.b1906		# 2953
	b		.b1907
.b1903:
	addi	r9, r9, -100
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmpi	r9, 100
	bge		.b1903		# 990
	b		.b1904
.b1892:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmpi	r9, 1000
	bge		.b1896		# 990
.b1897:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1894:
	lw		r9, 1(r61)		# 2759
	lw		r9, 0(r61)		# 2759
	sw		r9, 3(r61)		# 2794
	mv		r9, r9		# 2814
	cmpi	r9, 100
	bge		.b1899		# 2844
	b		.b1900
.b1896:
	addi	r9, r9, -1000
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmpi	r9, 1000
	bge		.b1896		# 990
	b		.b1897
.b1885:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmpi	r9, 10000
	bge		.b1889		# 990
.b1890:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1887:
	lw		r9, 1(r61)		# 2647
	lw		r9, 0(r61)		# 2647
	sw		r9, 4(r61)		# 2683
	mv		r9, r9		# 2703
	cmpi	r9, 1000
	bge		.b1892		# 2733
	b		.b1893
.b1889:
	addi	r9, r9, -10000
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmpi	r9, 10000
	bge		.b1889		# 990
	b		.b1890
.b1878:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmp	r61, r9
	ble		.b1882		# 990
.b1883:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1880:
	lw		r9, 1(r61)		# 2533
	lw		r9, 0(r61)		# 2533
	sw		r9, 5(r61)		# 2570
	mv		r9, r9		# 2590
	cmpi	r9, 10000
	bge		.b1885		# 2620
	b		.b1886
.b1882:
	sub		r9, r9, r61		# 1005
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmp	r61, r9
	ble		.b1882		# 990
	b		.b1883
.b1871:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmp	r61, r9
	ble		.b1875		# 990
.b1876:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1873:
	lw		r9, 1(r61)		# 2417
	lw		r9, 0(r61)		# 2417
	sw		r9, 6(r61)		# 2455
	mv		r9, r9		# 2475
	addis	r61, r0, 1
	ori		r61, r61, 34464		# 2505
	cmp	r61, r9
	ble		.b1878		# 2505
	b		.b1879
.b1875:
	sub		r9, r9, r61		# 1005
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmp	r61, r9
	ble		.b1875		# 990
	b		.b1876
.b1864:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmp	r61, r9
	ble		.b1868		# 990
.b1869:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1866:
	lw		r9, 1(r61)		# 2299
	lw		r9, 0(r61)		# 2299
	sw		r9, 7(r61)		# 2338
	mv		r9, r9		# 2358
	addis	r61, r0, 15
	ori		r61, r61, 16960		# 2388
	cmp	r61, r9
	ble		.b1871		# 2388
	b		.b1872
.b1868:
	sub		r9, r9, r61		# 1005
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmp	r61, r9
	ble		.b1868		# 990
	b		.b1869
.b1857:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmp	r61, r9
	ble		.b1861		# 990
.b1862:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1859:
	lw		r9, 1(r61)		# 2179
	lw		r9, 0(r61)		# 2179
	sw		r9, 8(r61)		# 2219
	mv		r9, r9		# 2239
	addis	r61, r0, 152
	ori		r61, r61, 38528		# 2269
	cmp	r61, r9
	ble		.b1864		# 2269
	b		.b1865
.b1861:
	sub		r9, r9, r61		# 1005
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmp	r61, r9
	ble		.b1861		# 990
	b		.b1862
.b1850:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmp	r61, r9
	ble		.b1854		# 990
.b1855:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1852:
	lw		r9, 1(r61)		# 2057
	lw		r9, 0(r61)		# 2057
	sw		r9, 9(r61)		# 2098
	mv		r9, r9		# 2118
	addis	r61, r0, 1525
	ori		r61, r61, 57600		# 2148
	cmp	r61, r9
	ble		.b1857		# 2148
	b		.b1858
.b1854:
	sub		r9, r9, r61		# 1005
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmp	r61, r9
	ble		.b1854		# 990
	b		.b1855
.b1845:
	addi	r9, r0, 48		# 1921
	out		r9		# 946
		# 962
	b		.b1844		# 962
.b1842:
	mv		r9, r9		# 1883
	cmpi	r9, 0
	beq		.b1845		# 1907
	b		.b1846
.b1833:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmpi	r9, 10
	bge		.b1837		# 990
.b1838:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
	lw		r9, 1(r61)		# 1295
	lw		r9, 0(r61)		# 1295
	cmpi	r9, 0
	beq		.b1839		# 1326
.b1840:
	addi	r9, r9, 48		# 1383
	out		r9		# 946
	addi	r9, r9, 48		# 1410
	out		r9		# 946
		# 962
	b		.b1752		# 962
.b1839:
	addi	r9, r9, 48		# 1346
	out		r9		# 946
		# 962
	b		.b1752		# 962
.b1837:
	addi	r9, r9, -10
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmpi	r9, 10
	bge		.b1837		# 990
	b		.b1838
.b1831:
	addi	r9, r0, 49		# 1180
	out		r9		# 946
	addi	r9, r9, -100
	cmpi	r9, 10
	bge		.b1833		# 1245
	b		.b1834
.b1829:
	addi	r9, r0, 50		# 1121
	out		r9		# 946
	addi	r9, r9, -200
	cmpi	r9, 10
	bge		.b1833		# 1245
	b		.b1834
.b1755:
	mv		r61, r4
	addi	r4, r4, 10		# 1984
	sw		r28, 0(r61)		# 1984
	sw		r28, 1(r61)		# 1984
	sw		r28, 2(r61)		# 1984
	sw		r28, 3(r61)		# 1984
	sw		r28, 4(r61)		# 1984
	sw		r28, 5(r61)		# 1984
	sw		r28, 6(r61)		# 1984
	sw		r28, 7(r61)		# 1984
	sw		r28, 8(r61)		# 1984
	sw		r28, 9(r61)		# 1984
	addis	r61, r0, 15258
	ori		r61, r61, 51712		# 2025
	cmp	r61, r9
	ble		.b1758		# 2025
.b1759:
	mv		r9, r9		# 2131
	addis	r61, r0, 1525
	ori		r61, r61, 57600		# 2148
	cmp	r61, r9
	ble		.b1765		# 2148
.b1766:
	mv		r9, r9		# 2252
	addis	r61, r0, 152
	ori		r61, r61, 38528		# 2269
	cmp	r61, r9
	ble		.b1772		# 2269
.b1773:
	mv		r9, r9		# 2371
	addis	r61, r0, 15
	ori		r61, r61, 16960		# 2388
	cmp	r61, r9
	ble		.b1779		# 2388
.b1780:
	mv		r9, r9		# 2488
	addis	r61, r0, 1
	ori		r61, r61, 34464		# 2505
	cmp	r61, r9
	ble		.b1786		# 2505
.b1787:
	mv		r9, r9		# 2603
	cmpi	r9, 10000
	bge		.b1793		# 2620
.b1794:
	mv		r9, r9		# 2716
	cmpi	r9, 1000
	bge		.b1800		# 2733
.b1801:
	mv		r9, r9		# 2827
	cmpi	r9, 100
	bge		.b1807		# 2844
.b1808:
	mv		r9, r9		# 2936
	cmpi	r9, 10
	bge		.b1814		# 2953
.b1815:
	mv		r9, r9		# 3043
.b1813:
	sw		r9, 0(r61)		# 3052
	addi	r9, r0, 9		# 1483
	addi	r9, r0, 0		# 1483
	cmpi	r9, 0
	bge		.b1821		# 1483
	b		.b1752
.b1821:
	lwx		r9, r61, r9,		# 1508
	cmpi	r9, 0
	beq		.b1823		# 1533
.b1824:
	addi	r9, r9, 48		# 1661
	out		r9		# 946
	addi	r9, r9, -1
	mv		r9, r9		# 1688
	mv		r9, r9		# 1688
	cmpi	r9, 0
	bge		.b1821		# 1483
	b		.b1752
.b1823:
	cmpi	r9, 0
	beq		.b1825		# 1555
.b1827:
	addi	r9, r0, 48		# 1571
	out		r9		# 946
		# 962
.b1825:
	addi	r9, r9, -1
	mv		r9, r9		# 1600
	mv		r9, r9		# 1600
	cmpi	r9, 0
	bge		.b1821		# 1483
	b		.b1752
.b1814:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmpi	r9, 10
	bge		.b1818		# 990
.b1819:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1816:
	lw		r9, 1(r61)		# 2977
	lw		r9, 0(r61)		# 2977
	sw		r9, 1(r61)		# 3010
	mv		r9, r9		# 3030
	b		.b1813		# 3030
.b1818:
	addi	r9, r9, -10
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmpi	r9, 10
	bge		.b1818		# 990
	b		.b1819
.b1807:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmpi	r9, 100
	bge		.b1811		# 990
.b1812:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1809:
	lw		r9, 1(r61)		# 2869
	lw		r9, 0(r61)		# 2869
	sw		r9, 2(r61)		# 2903
	mv		r9, r9		# 2923
	cmpi	r9, 10
	bge		.b1814		# 2953
	b		.b1815
.b1811:
	addi	r9, r9, -100
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmpi	r9, 100
	bge		.b1811		# 990
	b		.b1812
.b1800:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmpi	r9, 1000
	bge		.b1804		# 990
.b1805:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1802:
	lw		r9, 1(r61)		# 2759
	lw		r9, 0(r61)		# 2759
	sw		r9, 3(r61)		# 2794
	mv		r9, r9		# 2814
	cmpi	r9, 100
	bge		.b1807		# 2844
	b		.b1808
.b1804:
	addi	r9, r9, -1000
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmpi	r9, 1000
	bge		.b1804		# 990
	b		.b1805
.b1793:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmpi	r9, 10000
	bge		.b1797		# 990
.b1798:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1795:
	lw		r9, 1(r61)		# 2647
	lw		r9, 0(r61)		# 2647
	sw		r9, 4(r61)		# 2683
	mv		r9, r9		# 2703
	cmpi	r9, 1000
	bge		.b1800		# 2733
	b		.b1801
.b1797:
	addi	r9, r9, -10000
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmpi	r9, 10000
	bge		.b1797		# 990
	b		.b1798
.b1786:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmp	r61, r9
	ble		.b1790		# 990
.b1791:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1788:
	lw		r9, 1(r61)		# 2533
	lw		r9, 0(r61)		# 2533
	sw		r9, 5(r61)		# 2570
	mv		r9, r9		# 2590
	cmpi	r9, 10000
	bge		.b1793		# 2620
	b		.b1794
.b1790:
	sub		r9, r9, r61		# 1005
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmp	r61, r9
	ble		.b1790		# 990
	b		.b1791
.b1779:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmp	r61, r9
	ble		.b1783		# 990
.b1784:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1781:
	lw		r9, 1(r61)		# 2417
	lw		r9, 0(r61)		# 2417
	sw		r9, 6(r61)		# 2455
	mv		r9, r9		# 2475
	addis	r61, r0, 1
	ori		r61, r61, 34464		# 2505
	cmp	r61, r9
	ble		.b1786		# 2505
	b		.b1787
.b1783:
	sub		r9, r9, r61		# 1005
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmp	r61, r9
	ble		.b1783		# 990
	b		.b1784
.b1772:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmp	r61, r9
	ble		.b1776		# 990
.b1777:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1774:
	lw		r9, 1(r61)		# 2299
	lw		r9, 0(r61)		# 2299
	sw		r9, 7(r61)		# 2338
	mv		r9, r9		# 2358
	addis	r61, r0, 15
	ori		r61, r61, 16960		# 2388
	cmp	r61, r9
	ble		.b1779		# 2388
	b		.b1780
.b1776:
	sub		r9, r9, r61		# 1005
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmp	r61, r9
	ble		.b1776		# 990
	b		.b1777
.b1765:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmp	r61, r9
	ble		.b1769		# 990
.b1770:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1767:
	lw		r9, 1(r61)		# 2179
	lw		r9, 0(r61)		# 2179
	sw		r9, 8(r61)		# 2219
	mv		r9, r9		# 2239
	addis	r61, r0, 152
	ori		r61, r61, 38528		# 2269
	cmp	r61, r9
	ble		.b1772		# 2269
	b		.b1773
.b1769:
	sub		r9, r9, r61		# 1005
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmp	r61, r9
	ble		.b1769		# 990
	b		.b1770
.b1758:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmp	r61, r9
	ble		.b1762		# 990
.b1763:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1760:
	lw		r9, 1(r61)		# 2057
	lw		r9, 0(r61)		# 2057
	sw		r9, 9(r61)		# 2098
	mv		r9, r9		# 2118
	addis	r61, r0, 1525
	ori		r61, r61, 57600		# 2148
	cmp	r61, r9
	ble		.b1765		# 2148
	b		.b1766
.b1762:
	sub		r9, r9, r61		# 1005
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmp	r61, r9
	ble		.b1762		# 990
	b		.b1763
.b1753:
	addi	r9, r0, 48		# 1921
	out		r9		# 946
		# 962
	b		.b1752		# 962
.b1750:
	mv		r9, r9		# 1883
	cmpi	r9, 0
	beq		.b1753		# 1907
	b		.b1754
.b1741:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmpi	r9, 10
	bge		.b1745		# 990
.b1746:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
	lw		r9, 1(r61)		# 1295
	lw		r9, 0(r61)		# 1295
	cmpi	r9, 0
	beq		.b1747		# 1326
.b1748:
	addi	r9, r9, 48		# 1383
	out		r9		# 946
	addi	r9, r9, 48		# 1410
	out		r9		# 946
		# 962
	b		.b1656		# 962
.b1747:
	addi	r9, r9, 48		# 1346
	out		r9		# 946
		# 962
	b		.b1656		# 962
.b1745:
	addi	r9, r9, -10
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmpi	r9, 10
	bge		.b1745		# 990
	b		.b1746
.b1739:
	addi	r9, r0, 49		# 1180
	out		r9		# 946
	addi	r9, r9, -100
	cmpi	r9, 10
	bge		.b1741		# 1245
	b		.b1742
.b1737:
	addi	r9, r0, 50		# 1121
	out		r9		# 946
	addi	r9, r9, -200
	cmpi	r9, 10
	bge		.b1741		# 1245
	b		.b1742
.b1659:
	addi	r9, r0, 10		# 1994
	mv		r61, r4
	addi	r4, r4, 10		# 1994
	addi	r9, r9, -1
	addi	r9, r0, 0		# 1994
	cmp	r9, r9
	ble		.b1663		# 1994
.b1661:
	mv		r61, r61		# 1984
	addis	r61, r0, 15258
	ori		r61, r61, 51712		# 2025
	cmp	r61, r9
	ble		.b1666		# 2025
.b1667:
	mv		r9, r9		# 2131
	addis	r61, r0, 1525
	ori		r61, r61, 57600		# 2148
	cmp	r61, r9
	ble		.b1673		# 2148
.b1674:
	mv		r9, r9		# 2252
	addis	r61, r0, 152
	ori		r61, r61, 38528		# 2269
	cmp	r61, r9
	ble		.b1680		# 2269
.b1681:
	mv		r9, r9		# 2371
	addis	r61, r0, 15
	ori		r61, r61, 16960		# 2388
	cmp	r61, r9
	ble		.b1687		# 2388
.b1688:
	mv		r9, r9		# 2488
	addis	r61, r0, 1
	ori		r61, r61, 34464		# 2505
	cmp	r61, r9
	ble		.b1694		# 2505
.b1695:
	mv		r9, r9		# 2603
	cmpi	r9, 10000
	bge		.b1701		# 2620
.b1702:
	mv		r9, r9		# 2716
	cmpi	r9, 1000
	bge		.b1708		# 2733
.b1709:
	mv		r9, r9		# 2827
	cmpi	r9, 100
	bge		.b1715		# 2844
.b1716:
	mv		r9, r9		# 2936
	cmpi	r9, 10
	bge		.b1722		# 2953
.b1723:
	mv		r9, r9		# 3043
.b1721:
	sw		r9, 0(r61)		# 3052
	addi	r9, r0, 9		# 1483
	addi	r9, r0, 0		# 1483
	cmpi	r9, 0
	bge		.b1729		# 1483
	b		.b1656
.b1729:
	lwx		r9, r61, r9,		# 1508
	cmpi	r9, 0
	beq		.b1731		# 1533
.b1732:
	addi	r9, r9, 48		# 1661
	out		r9		# 946
	addi	r9, r9, -1
	mv		r9, r9		# 1688
	mv		r9, r9		# 1688
	cmpi	r9, 0
	bge		.b1729		# 1483
	b		.b1656
.b1731:
	cmpi	r9, 0
	beq		.b1733		# 1555
.b1735:
	addi	r9, r0, 48		# 1571
	out		r9		# 946
		# 962
.b1733:
	addi	r9, r9, -1
	mv		r9, r9		# 1600
	mv		r9, r9		# 1600
	cmpi	r9, 0
	bge		.b1729		# 1483
	b		.b1656
.b1722:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmpi	r9, 10
	bge		.b1726		# 990
.b1727:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1724:
	lw		r9, 1(r61)		# 2977
	lw		r9, 0(r61)		# 2977
	sw		r9, 1(r61)		# 3010
	mv		r9, r9		# 3030
	b		.b1721		# 3030
.b1726:
	addi	r9, r9, -10
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmpi	r9, 10
	bge		.b1726		# 990
	b		.b1727
.b1715:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmpi	r9, 100
	bge		.b1719		# 990
.b1720:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1717:
	lw		r9, 1(r61)		# 2869
	lw		r9, 0(r61)		# 2869
	sw		r9, 2(r61)		# 2903
	mv		r9, r9		# 2923
	cmpi	r9, 10
	bge		.b1722		# 2953
	b		.b1723
.b1719:
	addi	r9, r9, -100
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmpi	r9, 100
	bge		.b1719		# 990
	b		.b1720
.b1708:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmpi	r9, 1000
	bge		.b1712		# 990
.b1713:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1710:
	lw		r9, 1(r61)		# 2759
	lw		r9, 0(r61)		# 2759
	sw		r9, 3(r61)		# 2794
	mv		r9, r9		# 2814
	cmpi	r9, 100
	bge		.b1715		# 2844
	b		.b1716
.b1712:
	addi	r9, r9, -1000
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmpi	r9, 1000
	bge		.b1712		# 990
	b		.b1713
.b1701:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmpi	r9, 10000
	bge		.b1705		# 990
.b1706:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1703:
	lw		r9, 1(r61)		# 2647
	lw		r9, 0(r61)		# 2647
	sw		r9, 4(r61)		# 2683
	mv		r9, r9		# 2703
	cmpi	r9, 1000
	bge		.b1708		# 2733
	b		.b1709
.b1705:
	addi	r9, r9, -10000
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmpi	r9, 10000
	bge		.b1705		# 990
	b		.b1706
.b1694:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmp	r61, r9
	ble		.b1698		# 990
.b1699:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1696:
	lw		r9, 1(r61)		# 2533
	lw		r9, 0(r61)		# 2533
	sw		r9, 5(r61)		# 2570
	mv		r9, r9		# 2590
	cmpi	r9, 10000
	bge		.b1701		# 2620
	b		.b1702
.b1698:
	sub		r9, r9, r61		# 1005
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmp	r61, r9
	ble		.b1698		# 990
	b		.b1699
.b1687:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmp	r61, r9
	ble		.b1691		# 990
.b1692:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1689:
	lw		r9, 1(r61)		# 2417
	lw		r9, 0(r61)		# 2417
	sw		r9, 6(r61)		# 2455
	mv		r9, r9		# 2475
	addis	r61, r0, 1
	ori		r61, r61, 34464		# 2505
	cmp	r61, r9
	ble		.b1694		# 2505
	b		.b1695
.b1691:
	sub		r9, r9, r61		# 1005
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmp	r61, r9
	ble		.b1691		# 990
	b		.b1692
.b1680:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmp	r61, r9
	ble		.b1684		# 990
.b1685:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1682:
	lw		r9, 1(r61)		# 2299
	lw		r9, 0(r61)		# 2299
	sw		r9, 7(r61)		# 2338
	mv		r9, r9		# 2358
	addis	r61, r0, 15
	ori		r61, r61, 16960		# 2388
	cmp	r61, r9
	ble		.b1687		# 2388
	b		.b1688
.b1684:
	sub		r9, r9, r61		# 1005
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmp	r61, r9
	ble		.b1684		# 990
	b		.b1685
.b1673:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmp	r61, r9
	ble		.b1677		# 990
.b1678:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1675:
	lw		r9, 1(r61)		# 2179
	lw		r9, 0(r61)		# 2179
	sw		r9, 8(r61)		# 2219
	mv		r9, r9		# 2239
	addis	r61, r0, 152
	ori		r61, r61, 38528		# 2269
	cmp	r61, r9
	ble		.b1680		# 2269
	b		.b1681
.b1677:
	sub		r9, r9, r61		# 1005
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmp	r61, r9
	ble		.b1677		# 990
	b		.b1678
.b1666:
	mv		r9, r9		# 990
	addi	r9, r0, 0		# 990
	cmp	r61, r9
	ble		.b1670		# 990
.b1671:
	mv		r61, r4
	addi	r4, r4, 2		# 1032
	sw		r9, 0(r61)		# 1032
	sw		r9, 1(r61)		# 1032
	mv		r61, r61		# 1032
.b1668:
	lw		r9, 1(r61)		# 2057
	lw		r9, 0(r61)		# 2057
	sw		r9, 9(r61)		# 2098
	mv		r9, r9		# 2118
	addis	r61, r0, 1525
	ori		r61, r61, 57600		# 2148
	cmp	r61, r9
	ble		.b1673		# 2148
	b		.b1674
.b1670:
	sub		r9, r9, r61		# 1005
	addi	r9, r9, 1		# 1005
	mv		r9, r9		# 1005
	mv		r9, r9		# 1005
	cmp	r61, r9
	ble		.b1670		# 990
	b		.b1671
.b1663:
	swx		r28, r9, r61		# 1994
	addi	r9, r9, 1		# 1994
	mv		r9, r9		# 1994
	cmp	r9, r9
	ble		.b1663		# 1994
	b		.b1661
.b1657:
	addi	r9, r0, 48		# 1921
	out		r9		# 946
		# 962
	b		.b1656		# 962
.b1654:
	mv		r9, r9		# 1883
	cmpi	r9, 0
	beq		.b1657		# 1907
	b		.b1658
.b1643:
	addi	r9, r0, 1		# 166
	cmpi	r9, 0
	bge		.b1647		# 166
.b1645:
	addi	r9, r9, -1
	mv		r9, r9		# 330
	cmpi	r9, 0
	bge		.b1643		# 277
	b		.b1641
.b1647:
	addi	r9, r0, 2		# 30
	cmpi	r9, 0
	bge		.b1651		# 30
.b1649:
	addi	r9, r9, -1
	mv		r9, r9		# 219
	cmpi	r9, 0
	bge		.b1647		# 166
	b		.b1645
.b1651:
	lwx		r61, r28, r9,		# 55
	lwx		r61, r61, r9,		# 68
	lwx		r61, r28, r9,		# 81
	lwx		r61, r61, r9,		# 81
	lwx		r61, r28, r9,		# 94
	lwx		r9, r61, r9,		# 81
	fmul	r9, r61, r9		# 68
	fadd	r28, r61, r9		# 55
	swx		r28, r9, r61		# 55
	addi	r9, r9, -1
	mv		r9, r9		# 108
	cmpi	r9, 0
	bge		.b1651		# 30
	b		.b1649
.b1639:
	mv		r61, r4
	addi	r4, r4, 2		# 505
	sw		r28, 0(r61)		# 505
	sw		r28, 1(r61)		# 505
	mv		r61, r61		# 494
	swx		r61, r9, r28		# 494
	addi	r9, r9, -1
	mv		r9, r9		# 525
	cmpi	r9, 0
	bge		.b1639		# 469
	b		.b1637
.b1635:
	mv		r9, r4
	addi	r4, r4, 2		# 505
	sw		r28, 0(r9)		# 505
	sw		r28, 1(r9)		# 505
	mv		r9, r9		# 494
	swx		r9, r61, r28		# 494
	addi	r61, r61, -1
	mv		r61, r61		# 525
	cmpi	r61, 0
	bge		.b1635		# 469
	b		.b1633
.b1631:
	mv		r9, r4
	addi	r4, r4, 3		# 505
	sw		r28, 0(r9)		# 505
	sw		r28, 1(r9)		# 505
	sw		r28, 2(r9)		# 505
	mv		r9, r9		# 494
	swx		r9, r61, r28		# 494
	addi	r61, r61, -1
	mv		r61, r61		# 525
	cmpi	r61, 0
	bge		.b1631		# 469
	b		.b1629
	# main program end
_min_caml_end:
	flush
	halt
	halt
	halt
# === .data section ===
	.data