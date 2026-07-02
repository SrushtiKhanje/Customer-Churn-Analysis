A. customer overview sql results 

1. customer distribution by revenue
	revenue_tier	customer_count	percentage
	Bronze	           2907	        41.28
	Gold	           2202	        31.27
	Silver	           1934	        27.46 

2. average customer lifetime value
    avg_dv
    2279.58

B. Churn analysis sql results 

1. overall churn rate
	Churn	customers	percentage
	No	        5174	73.46
	Yes	        1869	26.54

2. churn by revenue tier
	revenue_tier	total_customers	churned_customers	churn_rate
	Bronze	        2907	        1070	            36.81
	Gold	        2202	        345	                15.67
	Silver	        1934	        454	                23.47

3. churn by contract type
	Contract	    customers	churned	    churn_rate
	Month-to-month	3875	    1655	    42.71
	One year	    1473	    166	        11.27
	Two year	    1695	    48	        2.83

C. Root cause analysis results

1. billing risk vs churn
	billing_risk_score	customers	churn_rate
	0	                1413	    3.33
	1	                1240	    7.26
	2	                170	        9.41
	3	                1181	    23.62
	4	                1189	    37.26
	5	                453	        41.50
	6	                1397	    57.70

2. support frustration vs churn
	support_frustration_score	customers	churn_rate
	0	                        5031	20.14
	1	                        199	    15.58
	2	                        412	    41.26
	3	                        229	    18.78
	4	                        398	    38.69
	5	                        218	    22.94
	6	                        136	    66.18
	7	                        31	    74.19
	8	                        120	    71.67
	9	                        14	    64.29
	10	                        103	    77.67
	11	                        11	    72.73
	12	                        70	    81.43
	13	                        16	    37.50
	14	                        25	    88.00
	15	                        8	    62.50
	16	                        16	    100.00
	17	                        3	    100.00
	18	                        2	    100.00
	19	                        1	    100.00

3. service adoption vs churn 
	service_adoption_score	customers	churn_rate
	0	                    80	        43.75
	1	                    2253	    21.66
	2	                    996	        43.47
	3	                    1041	    34.68
	4	                    1062	    27.21
	5	                    827	        22.01
	6	                    525	        12.57
	7	                    259	        5.79

4. top 10 highest clv customers
	customerID	customer_lifetime_value
	7569-NMZYQ	8550.00
	9924-JPRMC	8510.40
	2889-FPWRM	8481.60
	3810-DVDQQ	8467.20
	9739-JLPQJ	8460.00
	6904-JLBGY	8449.20
	6650-BWFRT	8434.80
	8984-HPEMB	8424.15
	9788-HNGUT	8420.40
	1488-PBLJN	8413.20
		
5. average clv by churn status
	Churn	avg_clv
	No	    2549.77
	Yes	    1531.61

6. churn driver ranking
	churn_risk_segment	customers
	Medium Risk	        2630
	Low Risk	        3202
	High Risk	        1211

D. Revenue analysis sql results

1. revenue lost from churn
	monthly_revenue_lost
	139130.85

2.  high value customer lost
	high_value_customers_lost
	345

3. revenue at risk by segment
	revenue_tier	revenue_lost
	Bronze	        68469.75
	Silver	        37404.40
	Gold	        33256.70

E. Retention stratergy sql results
1.  high risk customers
	customerID	churn_risk_segment	MonthlyCharges
	8199-ZLLSA	High Risk	118.35
	2889-FPWRM	High Risk	117.80
	2302-ANTDP	High Risk	117.45
	6650-BWFRT	High Risk	117.15
	8016-NCFVO	High Risk	116.50
	9053-JZFKV	High Risk	116.20
	1480-BKXGA	High Risk	116.05
	9659-QEQSY	High Risk	115.65
	1444-VVSGW	High Risk	115.65
	1352-HNSAW	High Risk	115.60
	0201-OAMXR	High Risk	115.55
	8029-XYPWT	High Risk	115.05
	0530-IJVDB	High Risk	114.60
	4361-BKAXE	High Risk	114.50
	7929-SKFGK	High Risk	114.30
	1555-DJEQW	High Risk	114.20
	4806-DXQCE	High Risk	113.65
	9158-VCTQB	High Risk	113.60
	7279-BUYWN	High Risk	113.20
	5271-YNWVR	High Risk	113.15
	5236-PERKL	High Risk	112.95
	2403-BCASL	High Risk	111.95
	6664-FPDAC	High Risk	111.95
	2469-DTSGX	High Risk	111.65
	3090-HAWSU	High Risk	111.60
	3584-WKTTW	High Risk	111.55
	2587-EKXTS	High Risk	111.50
	7130-YXBRO	High Risk	111.45
	2659-VXMWZ	High Risk	111.30
	9249-FXSCK	High Risk	111.25
	0115-TFERT	High Risk	111.20
	2067-QYTCF	High Risk	111.15
	8591-TKMZH	High Risk	111.10
	9079-YEXQJ	High Risk	111.10
	9351-HXDMR	High Risk	110.90
	7632-MNYOY	High Risk	110.90
	9835-ZIITK	High Risk	110.85
	4789-KWMXN	High Risk	110.85
	5099-BAILX	High Risk	110.75
	7519-JTWQH	High Risk	110.50
	3336-JORSO	High Risk	110.45
	3870-MQAMG	High Risk	110.35
	2408-TZMJL	High Risk	110.15
	3192-NQECA	High Risk	110.00
	0691-IFBQW	High Risk	110.00
	3331-HQDTW	High Risk	109.80
	1725-IQNIY	High Risk	109.75
	5013-SBUIH	High Risk	109.65
	6295-OSINB	High Risk	109.65
	5945-AZYHT	High Risk	109.60
	6599-RCLCJ	High Risk	109.55
	4176-FXYBO	High Risk	109.55
	9360-AHGNL	High Risk	109.55
	0748-RDGGM	High Risk	109.50
	1984-FCOWB	High Risk	109.50
	5089-IFSDP	High Risk	109.45
	3886-CERTZ	High Risk	109.25
	3571-RFHAR	High Risk	109.15
	9278-VZKCD	High Risk	109.10
	5172-RKOCB	High Risk	108.95
	4350-ZTLPI	High Risk	108.95
	3424-NMNBO	High Risk	108.85
	1150-WFARN	High Risk	108.75
	2027-WKXMW	High Risk	108.75
	6990-YNRIO	High Risk	108.65
	7317-GGVPB	High Risk	108.60
	9101-BWFSS	High Risk	108.55
	4250-ZBWLV	High Risk	108.45
	5440-FLBQG	High Risk	108.40
	1320-GVNHT	High Risk	108.40
	7550-WIQVA	High Risk	108.25
	6179-GJPSO	High Risk	108.15
	0363-QJVFX	High Risk	108.15
	2834-JRTUA	High Risk	108.05
	2081-VEYEH	High Risk	107.95
	6386-SZZKH	High Risk	107.95
	8327-LZKAS	High Risk	107.55
	8800-ZKRFW	High Risk	107.50
	2886-KEFUM	High Risk	107.50
	8024-XNAFQ	High Risk	107.40
	6394-MFYNG	High Risk	107.40
	4566-GOLUK	High Risk	107.35
	6777-TGHTM	High Risk	106.95
	3606-TWKGI	High Risk	106.90
	9137-UIYPG	High Risk	106.90
	9710-ZUSHQ	High Risk	106.75
	9572-MTILT	High Risk	106.75
	9959-WOFKT	High Risk	106.70
	2027-FECZV	High Risk	106.70
	7825-ECJRF	High Risk	106.60
	6804-GDMOI	High Risk	106.60
	3692-JHONH	High Risk	106.50
	6050-IJRHS	High Risk	106.50
	5748-RNCJT	High Risk	106.50
	1502-XFCVR	High Risk	106.45
	8118-LSUEL	High Risk	106.40
	8938-UMKPI	High Risk	106.40
	5380-WJKOV	High Risk	106.35
	4220-TINQT	High Risk	106.35
	3757-NJYBX	High Risk	106.35
	5630-IXDXV	High Risk	106.35
	0337-CNPZE	High Risk	106.30
	3374-TTZTK	High Risk	106.30
	7067-KSAZT	High Risk	106.25
	7599-FKVXZ	High Risk	106.15
	3957-LXOLK	High Risk	106.15
	9651-GTSAQ	High Risk	106.10
	1899-VXWXM	High Risk	106.10
	1309-BXVOQ	High Risk	106.10
	1621-YNCJH	High Risk	106.05
	5804-HYIEZ	High Risk	106.05
	7762-URZQH	High Risk	106.05
	5469-CTCWN	High Risk	106.00
	8651-ENBZX	High Risk	106.00
	3259-FDWOY	High Risk	106.00
	1228-FZFRV	High Risk	105.95
	5130-IEKQT	High Risk	105.95
	6425-YQLLO	High Risk	105.95
	7752-XUSCI	High Risk	105.90
	1400-MMYXY	High Risk	105.90
	2249-YPRNG	High Risk	105.85
	6900-PXRMS	High Risk	105.75
	8999-XXGNS	High Risk	105.75
	8868-WOZGU	High Risk	105.70
	8111-SLLHI	High Risk	105.65
	2722-VOJQL	High Risk	105.65
	4446-BZKHU	High Risk	105.55
	7207-RMRDB	High Risk	105.50
	0193-ESZXP	High Risk	105.50
	4191-XOVOM	High Risk	105.40
	7055-VKGDA	High Risk	105.40
	2697-NQBPF	High Risk	105.35
	2133-TSRRM	High Risk	105.35
	9090-SGQXL	High Risk	105.30
	3419-SNJJD	High Risk	105.25
	2165-VOEGB	High Risk	105.20
	9661-ACXBS	High Risk	105.20
	9408-HRXRK	High Risk	105.15
	5287-QWLKY	High Risk	105.10
	4484-GLZOU	High Risk	105.05
	3838-OZURD	High Risk	105.00
	6769-DCQLI	High Risk	105.00
	6518-LGAOV	High Risk	105.00
	9601-BRXPO	High Risk	104.95
	3170-GWYKC	High Risk	104.95
	3001-CBHLQ	High Risk	104.90
	9221-OTIVJ	High Risk	104.85
	7892-POOKP	High Risk	104.80
	9412-GHEEC	High Risk	104.80
	4612-THJBS	High Risk	104.75
	6661-HBGWL	High Risk	104.75
	9851-QXEEQ	High Risk	104.70
	2001-EWBQU	High Risk	104.70
	2359-QWQUL	High Risk	104.70
	8634-CILSZ	High Risk	104.70
	8625-AZYZY	High Risk	104.65
	3685-YLCMQ	High Risk	104.65
	6680-NENYN	High Risk	104.60
	4913-EHYUI	High Risk	104.55
	6771-XWBDM	High Risk	104.50
	0093-XWZFY	High Risk	104.50
	5732-IKGQH	High Risk	104.45
	5995-SNNEW	High Risk	104.45
	1875-QIVME	High Risk	104.40
	4423-YLHDV	High Risk	104.40
	5219-YIPTK	High Risk	104.40
	7124-UGSUR	High Risk	104.40
	2080-CAZNM	High Risk	104.40
	0654-HMSHN	High Risk	104.40
	2378-VTKDH	High Risk	104.35
	0895-DQHEW	High Risk	104.30
	2360-RDGRO	High Risk	104.25
	6892-XPFPU	High Risk	104.25
	9874-QLCLH	High Risk	104.20
	5385-SUIRI	High Risk	104.20
	4077-CROMM	High Risk	104.20
	0917-EZOLA	High Risk	104.15
	4088-YLDSU	High Risk	104.15
	7694-VLBWQ	High Risk	104.10
	3384-CTMSF	High Risk	104.10
	3763-GCZHZ	High Risk	104.05
	6305-YLBMM	High Risk	104.05
	4391-RESHN	High Risk	104.05
	4853-RULSV	High Risk	104.00
	4488-KQFDT	High Risk	103.95
	5502-RLUYV	High Risk	103.95
	3001-UNBTL	High Risk	103.95
	0877-SDMBN	High Risk	103.95
	5519-YLDGW	High Risk	103.90
	3804-RVTGV	High Risk	103.85
	2038-LLMLM	High Risk	103.85
	6646-VRFOL	High Risk	103.85
	6646-QVXLR	High Risk	103.75
	8267-ZNYVZ	High Risk	103.75
	0280-XJGEX	High Risk	103.70
	5136-KCKGI	High Risk	103.70
	1842-EZJMK	High Risk	103.70
	2750-BJLSB	High Risk	103.70
	2832-KJCRD	High Risk	103.65
	7774-OJSXI	High Risk	103.45
	9801-GDWGV	High Risk	103.45
	1343-EHPYB	High Risk	103.40
	8809-RIHDD	High Risk	103.40
	2357-COQEK	High Risk	103.30
	2239-JALAW	High Risk	103.25
	4800-CZMPC	High Risk	103.25
	2234-XADUH	High Risk	103.20
	3086-RUCRN	High Risk	103.10
	7142-HVGBG	High Risk	103.00
	4550-VBOFE	High Risk	102.95
	2034-CGRHZ	High Risk	102.95
	0639-TSIQW	High Risk	102.95
	4658-HCOHW	High Risk	102.80
	6402-ZFPPI	High Risk	102.80
	4983-CLMLV	High Risk	102.70
	3058-HJCUY	High Risk	102.60
	0365-BZUWY	High Risk	102.55
	6097-EQISJ	High Risk	102.45
	0201-MIBOL	High Risk	102.40
	0520-FDVVT	High Risk	102.35
	0871-URUWO	High Risk	102.25
	0348-SDKOL	High Risk	102.10
	6688-UZPWD	High Risk	102.00
	5445-PZWGX	High Risk	102.00
	8884-ADFVN	High Risk	101.95
	4676-MQUEA	High Risk	101.90
	7056-IMHCC	High Risk	101.90
	0402-CQAJN	High Risk	101.90
	2474-BRUCM	High Risk	101.85
	1723-HKXJQ	High Risk	101.75
	0406-BPDVR	High Risk	101.50
	5419-JPRRN	High Risk	101.45
	4958-XCBDQ	High Risk	101.40
	5298-GSTLM	High Risk	101.40
	9600-NAXZN	High Risk	101.40
	0125-LZQXK	High Risk	101.35
	8429-XIBUM	High Risk	101.35
	3902-FOIGH	High Risk	101.35
	4553-DVPZG	High Risk	101.35
	4289-DTDKW	High Risk	101.30
	5569-OUICF	High Risk	101.30
	3663-MITLP	High Risk	101.25
	4597-NUCQV	High Risk	101.25
	0886-QGENL	High Risk	101.25
	3167-SNQPL	High Risk	101.15
	0302-JOIVN	High Risk	101.15
	6029-WTIPC	High Risk	101.10
	4523-WXCEF	High Risk	101.10
	2430-USGXP	High Risk	101.05
	2521-NPUZR	High Risk	101.00
	4433-JCGCG	High Risk	101.00
	8374-XGEJJ	High Risk	101.00
	2040-VZIKE	High Risk	100.85
	7881-INRLC	High Risk	100.85
	6851-WEFYX	High Risk	100.80
	7216-EWTRS	High Risk	100.80
	1013-QCWAM	High Risk	100.80
	8510-AWCXC	High Risk	100.80
	7587-AOVVU	High Risk	100.75
	5590-BYNII	High Risk	100.75
	7315-WYOAW	High Risk	100.75
	4078-SAYYN	High Risk	100.75
	7641-EUYET	High Risk	100.70
	3791-LGQCY	High Risk	100.65
	5671-UUNXD	High Risk	100.65
	3190-XFANI	High Risk	100.60
	3768-NLUBH	High Risk	100.60
	7549-MYGPK	High Risk	100.55
	6615-NGGZJ	High Risk	100.55
	8761-NSOBC	High Risk	100.55
	8840-DQLGN	High Risk	100.50
	7029-RPUAV	High Risk	100.45
	9139-WQQDY	High Risk	100.45
	0722-SVSFK	High Risk	100.40
	8216-AZUUZ	High Risk	100.40
	9330-IJWIO	High Risk	100.35
	4710-FDUIZ	High Risk	100.30
	3253-HKOKL	High Risk	100.30
	0853-NWIFK	High Risk	100.30
	5816-QVHRX	High Risk	100.30
	5299-RULOA	High Risk	100.25
	0939-YAPAF	High Risk	100.25
	3393-FMZPV	High Risk	100.25
	4817-VYYWS	High Risk	100.20
	0324-BRPCJ	High Risk	100.20
	3621-CEOVK	High Risk	100.20
	2382-BCKQJ	High Risk	100.15
	2754-SDJRD	High Risk	100.15
	0596-BQCEQ	High Risk	100.15
	2612-RANWT	High Risk	100.15
	5515-AKOAJ	High Risk	100.10
	8397-MVTAZ	High Risk	100.05
	9518-RWHZL	High Risk	100.05
	2632-UCGVD	High Risk	100.05
	9647-ERGBE	High Risk	100.05
	8634-MPHTR	High Risk	100.05
	0727-BMPLR	High Risk	100.00
	3473-XIIIT	High Risk	100.00
	7486-KSRVI	High Risk	100.00
	1254-IZEYF	High Risk	99.95
	5883-GTGVD	High Risk	99.95
	2748-MYRVK	High Risk	99.90
	0320-JDNQG	High Risk	99.85
	8443-WVPSS	High Risk	99.85
	4686-UXDML	High Risk	99.85
	5419-CONWX	High Risk	99.80
	6651-AZVTJ	High Risk	99.80
	2845-AFFTX	High Risk	99.80
	0107-YHINA	High Risk	99.75
	7783-YKGDV	High Risk	99.70
	6211-WWLTF	High Risk	99.70
	6543-XRMYR	High Risk	99.70
	4128-ETESU	High Risk	99.70
	8468-EHYJA	High Risk	99.65
	2674-MLXMN	High Risk	99.65
	2265-CYWIV	High Risk	99.60
	8818-XYFCQ	High Risk	99.55
	4803-AXVYP	High Risk	99.55
	2012-NWRPA	High Risk	99.55
	4791-QRGMF	High Risk	99.50
	2003-CKLOR	High Risk	99.50
	1587-FKLZB	High Risk	99.50
	0897-FEGMU	High Risk	99.50
	2568-OIADY	High Risk	99.50
	3349-ANQNH	High Risk	99.50
	4009-ALQFH	High Risk	99.50
	0979-PHULV	High Risk	99.45
	7450-NWRTR	High Risk	99.45
	8019-ENHXU	High Risk	99.45
	7780-OTDSO	High Risk	99.40
	6467-CHFZW	High Risk	99.35
	2519-FAKOD	High Risk	99.25
	3934-HXCFZ	High Risk	99.25
	2153-MREFK	High Risk	99.20
	2995-UPRYS	High Risk	99.20
	0310-MVLET	High Risk	99.15
	6907-NZZIJ	High Risk	99.15
	8065-BVEPF	High Risk	99.10
	7028-DVOIQ	High Risk	99.05
	5536-RTPWK	High Risk	99.05
	3588-WSTTJ	High Risk	99.05
	9705-IOVQQ	High Risk	99.00
	2277-DJJDL	High Risk	99.00
	1545-JFUML	High Risk	99.00
	4315-MURBD	High Risk	98.90
	0354-WYROK	High Risk	98.90
	3312-UUMZW	High Risk	98.85
	3005-NFMTA	High Risk	98.80
	7079-QRCBC	High Risk	98.75
	6845-RGTYS	High Risk	98.75
	1075-BGWOH	High Risk	98.75
	9172-ANCRX	High Risk	98.70
	0946-CLJTI	High Risk	98.70
	4902-OHLSK	High Risk	98.65
	8949-JTMAY	High Risk	98.60
	6683-VLCTZ	High Risk	98.55
	4598-XLKNJ	High Risk	98.50
	1450-GALXR	High Risk	98.50
	4021-RQSNY	High Risk	98.50
	1455-UGQVH	High Risk	98.50
	1323-OOEPC	High Risk	98.40
	1866-RZZQS	High Risk	98.40
	4735-ASGMA	High Risk	98.35
	6797-LNAQX	High Risk	98.30
	2929-QNSRW	High Risk	98.25
	1937-OTUKY	High Risk	98.20
	2454-RPBRZ	High Risk	98.10
	0655-RBDUG	High Risk	98.05
	0011-IGKFF	High Risk	98.00
	0329-GTIAJ	High Risk	97.90
	8168-UQWWF	High Risk	97.85
	8276-MQBYC	High Risk	97.80
	6393-WRYZE	High Risk	97.65
	7969-AULMZ	High Risk	97.35
	9445-SZLCH	High Risk	97.35
	6035-RIIOM	High Risk	97.20
	5981-ITEMU	High Risk	97.10
	5827-MWCZK	High Risk	96.95
	9961-JBNMK	High Risk	96.80
	1264-BYWMS	High Risk	96.80
	0480-BIXDE	High Risk	96.80
	0486-HECZI	High Risk	96.75
	3009-JWMPU	High Risk	96.75
	8547-NSBBO	High Risk	96.75
	9809-IMGCQ	High Risk	96.70
	8844-TONUD	High Risk	96.65
	9057-SIHCH	High Risk	96.60
	6899-PPEEA	High Risk	96.55
	1265-XTECC	High Risk	96.55
	4039-HEUNW	High Risk	96.50
	0898-XCGTF	High Risk	96.50
	8245-UMPYT	High Risk	96.40
	1527-SXDPN	High Risk	96.25
	0963-ZBDRN	High Risk	96.20
	5655-JSMZM	High Risk	96.20
	3737-GCSPV	High Risk	96.20
	5959-BELXA	High Risk	96.15
	5980-NOPLP	High Risk	96.10
	9114-VEPUF	High Risk	96.10
	4829-AUOAX	High Risk	96.05
	7526-BEZQB	High Risk	96.05
	9692-TUSXH	High Risk	96.05
	3158-MOERK	High Risk	96.00
	6365-MTGZX	High Risk	96.00
	2180-DXNEG	High Risk	96.00
	9495-SKLKD	High Risk	95.95
	8393-DLHGA	High Risk	95.90
	1771-OADNZ	High Risk	95.90
	1393-IMKZG	High Risk	95.85
	2037-XJFUP	High Risk	95.80
	0407-BDJKB	High Risk	95.75
	3319-DWOEP	High Risk	95.75
	7480-QNVZJ	High Risk	95.70
	2507-QZPQS	High Risk	95.70
	3269-ATYWD	High Risk	95.65
	2279-AXJJK	High Risk	95.65
	0637-YLETY	High Risk	95.60
	6356-ELRKD	High Risk	95.60
	8610-WFCJF	High Risk	95.60
	0576-WNXXC	High Risk	95.55
	2237-ZFSMY	High Risk	95.55
	4690-PKDQG	High Risk	95.55
	0564-JJHGS	High Risk	95.50
	9412-ARGBX	High Risk	95.50
	1658-BYGOY	High Risk	95.45
	3318-OSATS	High Risk	95.45
	0701-RFGFI	High Risk	95.40
	8357-EQXFO	High Risk	95.35
	2660-EMUBI	High Risk	95.35
	4187-CINZD	High Risk	95.25
	1447-PJGGA	High Risk	95.25
	3207-OYBWH	High Risk	95.25
	7547-EKNFS	High Risk	95.25
	6244-BESBM	High Risk	95.20
	3946-JEWRQ	High Risk	95.20
	3049-SOLAY	High Risk	95.20
	2754-VDLTR	High Risk	95.20
	9512-UIBFX	High Risk	95.15
	3003-CMDUU	High Risk	95.15
	4659-NZRUF	High Risk	95.15
	5183-SNMJQ	High Risk	95.10
	5889-JTMUL	High Risk	95.05
	1095-JUDTC	High Risk	95.05
	2475-MROZF	High Risk	95.00
	1597-LHYNC	High Risk	95.00
	7209-JCUDS	High Risk	94.90
	0691-JVSYA	High Risk	94.85
	5150-ITWWB	High Risk	94.85
	3045-XETSH	High Risk	94.85
	2344-JMOGN	High Risk	94.85
	8945-MUQUF	High Risk	94.80
	7225-CBZPL	High Risk	94.80
	5168-MSWXT	High Risk	94.75
	8017-LXHFA	High Risk	94.75
	5144-TVGLP	High Risk	94.75
	6350-XFYGW	High Risk	94.75
	0148-DCDOS	High Risk	94.70
	5955-ERIHD	High Risk	94.70
	3647-GMGDH	High Risk	94.70
	4124-MMETB	High Risk	94.65
	5364-XYIRR	High Risk	94.65
	4831-EOBFE	High Risk	94.65
	2037-SGXHH	High Risk	94.65
	0129-KPTWJ	High Risk	94.65
	9058-MJLZC	High Risk	94.60
	6522-YRBXD	High Risk	94.55
	1626-ERCMM	High Risk	94.55
	9898-KZQDZ	High Risk	94.55
	5439-WIKXB	High Risk	94.55
	4971-PUYQO	High Risk	94.55
	5244-IRFIH	High Risk	94.50
	5899-OUVKV	High Risk	94.50
	1481-ZUWZA	High Risk	94.50
	4385-GZQXV	High Risk	94.45
	3143-ILDAL	High Risk	94.45
	5197-PYEPU	High Risk	94.45
	7271-AJDTL	High Risk	94.45
	4192-GORJT	High Risk	94.45
	9253-QXKBE	High Risk	94.45
	6270-OMFIW	High Risk	94.40
	2979-SXESE	High Risk	94.40
	9658-WYUFB	High Risk	94.40
	9574-RKJIF	High Risk	94.40
	9223-UCPVT	High Risk	94.40
	3351-NQLDI	High Risk	94.35
	5887-IKKYO	High Risk	94.35
	1374-DMZUI	High Risk	94.30
	3927-NLNRY	High Risk	94.25
	8621-MNIHH	High Risk	94.25
	4094-NSEDU	High Risk	94.25
	8063-RJYNF	High Risk	94.25
	7218-HKQFK	High Risk	94.20
	2929-ERCFZ	High Risk	94.20
	0082-OQIQY	High Risk	94.20
	8708-XPXHZ	High Risk	94.20
	5609-CEBID	High Risk	94.10
	5334-JLAXU	High Risk	94.10
	2533-QVMSK	High Risk	94.10
	0023-XUOPT	High Risk	94.10
	3976-BWUCK	High Risk	94.10
	2931-VUVJN	High Risk	94.05
	9600-UDOPK	High Risk	94.05
	1567-DSCIC	High Risk	94.00
	2982-VPSGI	High Risk	94.00
	2720-WGKHP	High Risk	94.00
	4307-KTUMW	High Risk	93.90
	2225-ZRGSG	High Risk	93.90
	2719-BDAQO	High Risk	93.85
	0397-GZBBC	High Risk	93.85
	4626-GYCZP	High Risk	93.85
	4424-TKOPW	High Risk	93.85
	9912-GVSEQ	High Risk	93.85
	8749-JMNKX	High Risk	93.80
	8914-RBTSB	High Risk	93.80
	1644-IRKSF	High Risk	93.80
	8178-EYZUO	High Risk	93.70
	2530-ENDWQ	High Risk	93.70
	7402-EYFXX	High Risk	93.60
	9497-QCMMS	High Risk	93.55
	9025-AOMKI	High Risk	93.55
	9189-JWSHV	High Risk	93.55
	4075-JFPGR	High Risk	93.50
	1731-TVIUK	High Risk	93.50
	0887-WBJVH	High Risk	93.45
	5708-EVONK	High Risk	93.40
	0236-HFWSV	High Risk	93.35
	4250-WAROZ	High Risk	93.25
	3144-KMTWZ	High Risk	93.25
	8290-YWKHZ	High Risk	93.20
	2840-XANRC	High Risk	93.15
	2371-JQHZZ	High Risk	93.00
	7483-IQWIB	High Risk	92.95
	6986-IXNDM	High Risk	92.90
	5312-IRCFR	High Risk	92.85
	6198-RTPMF	High Risk	92.60
	5977-CKHON	High Risk	92.55
	6100-QQHEB	High Risk	92.55
	2462-XIIJB	High Risk	92.50
	3990-QYKBE	High Risk	92.50
	8580-QVLOC	High Risk	92.45
	3348-CFRNX	High Risk	92.35
	9614-RMGHA	High Risk	91.85
	5442-UTCVD	High Risk	91.85
	4558-FANTW	High Risk	91.85
	2684-EIWEO	High Risk	91.70
	6692-UDPJC	High Risk	91.65
	4001-TSBTV	High Risk	91.55
	3988-RQIXO	High Risk	91.30
	3398-FSHON	High Risk	91.30
	6712-OAWRH	High Risk	91.25
	7402-PWYJJ	High Risk	91.15
	8714-EUHJO	High Risk	91.15
	1195-OIYEJ	High Risk	91.10
	7739-LAXOG	High Risk	91.05
	5213-TWWJU	High Risk	91.00
	3104-OWCGK	High Risk	90.95
	7481-ATQQS	High Risk	90.85
	2988-GBIVW	High Risk	90.85
	5281-BUZGT	High Risk	90.85
	9725-SCPZG	High Risk	90.85
	9172-JITSM	High Risk	90.80
	1891-UAWWU	High Risk	90.80
	8622-ZLFKO	High Risk	90.75
	0577-WHMEV	High Risk	90.70
	0376-YMCJC	High Risk	90.60
	6481-OGDOO	High Risk	90.60
	4325-NFSKC	High Risk	90.60
	7979-CORPM	High Risk	90.55
	6741-EGCBI	High Risk	90.50
	2034-GDRCN	High Risk	90.40
	0139-IVFJG	High Risk	90.35
	4873-ILOLJ	High Risk	90.35
	6032-KRXXO	High Risk	90.25
	8871-JLMHM	High Risk	90.20
	6319-IEJWJ	High Risk	90.20
	9921-QFQUL	High Risk	90.15
	4554-YGZIH	High Risk	90.05
	0634-SZPQA	High Risk	90.05
	4228-ZGYUW	High Risk	90.05
	7270-BDIOA	High Risk	90.00
	8182-BJDSI	High Risk	89.95
	1891-FZYSA	High Risk	89.95
	3027-ZTDHO	High Risk	89.90
	3640-PHQXK	High Risk	89.90
	7529-ZDFXI	High Risk	89.85
	8565-CLBZW	High Risk	89.85
	1112-CUNAO	High Risk	89.85
	8337-UPOAQ	High Risk	89.80
	2114-MGINA	High Risk	89.80
	9526-JAWYF	High Risk	89.80
	0135-NMXAP	High Risk	89.75
	1522-VVDMG	High Risk	89.75
	8079-XRJRS	High Risk	89.75
	8922-LIEGH	High Risk	89.70
	1935-IMVBB	High Risk	89.70
	5922-ABDVO	High Risk	89.65
	6818-WOBHJ	High Risk	89.60
	9565-DJPIB	High Risk	89.60
	0929-PECLO	High Risk	89.60
	0970-ETWGE	High Risk	89.55
	2856-NNASM	High Risk	89.55
	3428-MMGUB	High Risk	89.55
	5666-CYCYZ	High Risk	89.55
	9134-CEQMF	High Risk	89.50
	8739-WWKDU	High Risk	89.50
	2311-QYMUQ	High Risk	89.45
	9611-CTWIH	High Risk	89.45
	1513-XNPPH	High Risk	89.40
	6413-XKKPU	High Risk	89.40
	1902-XBTFB	High Risk	89.40
	3374-LXDEV	High Risk	89.40
	7479-NITWS	High Risk	89.35
	0345-HKJVM	High Risk	89.30
	2869-ADAWR	High Risk	89.30
	1894-IGFSG	High Risk	89.25
	7030-NJVDP	High Risk	89.25
	2082-OJVTK	High Risk	89.20
	1173-XZPYF	High Risk	89.20
	9053-EJUNL	High Risk	89.20
	3801-HMYNL	High Risk	89.15
	1792-UXAFY	High Risk	89.15
	6005-OBZPH	High Risk	89.15
	5828-DWPIL	High Risk	89.10
	3427-GGZZI	High Risk	89.10
	2685-SREOM	High Risk	89.10
	0611-DFXKO	High Risk	89.00
	0187-QSXOE	High Risk	89.00
	6595-YGXIT	High Risk	88.95
	0311-UNPFF	High Risk	88.80
	5366-IJEQJ	High Risk	88.70
	7228-OMTPN	High Risk	88.45
	6345-ULYRW	High Risk	88.40
	3143-JQEGI	High Risk	88.35
	0504-HHAPI	High Risk	88.30
	3254-YRILK	High Risk	88.20
	3753-TSEMP	High Risk	88.15
	6583-QGCSI	High Risk	88.05
	6711-VTNRE	High Risk	87.55
	5498-TXHLF	High Risk	87.45
	3092-IGHWF	High Risk	87.40
	2845-HSJCY	High Risk	87.25
	6979-ZNSFF	High Risk	87.05
	4140-MUHUG	High Risk	86.85
	0168-XZKBB	High Risk	86.85
	2504-DSHIH	High Risk	86.80
	9451-LPGOO	High Risk	86.80
	6986-IJDHX	High Risk	86.30
	8337-MSSXB	High Risk	86.30
	4285-GYRQC	High Risk	86.25
	3540-RZJYU	High Risk	86.20
	2038-OEQZH	High Risk	86.05
	4844-JJWUY	High Risk	86.00
	2960-NKRSO	High Risk	85.95
	8132-YPVBX	High Risk	85.95
	2226-ICFDO	High Risk	85.90
	0869-PAPRP	High Risk	85.70
	7622-FWGEW	High Risk	85.65
	0697-ZMSWS	High Risk	85.65
	2027-CWDNU	High Risk	85.60
	6686-YPGHK	High Risk	85.50
	0533-BNWKF	High Risk	85.45
	1785-BPHTP	High Risk	85.45
	4248-QPAVC	High Risk	85.35
	4143-HHPMK	High Risk	85.35
	6635-MYYYZ	High Risk	85.35
	2952-QAYZF	High Risk	85.30
	2195-ZRVAX	High Risk	85.30
	9445-ZUEQE	High Risk	85.20
	3834-XUIFC	High Risk	85.20
	7248-VZQLC	High Risk	85.20
	4628-WQCQQ	High Risk	85.15
	3541-ZNUHK	High Risk	85.10
	1628-BIZYP	High Risk	85.00
	6769-DYBQN	High Risk	85.00
	9208-OLGAQ	High Risk	84.95
	2657-ALMWY	High Risk	84.95
	8382-SHQEH	High Risk	84.90
	9314-IJWSQ	High Risk	84.80
	4720-VSTSI	High Risk	84.80
	2126-GSEGL	High Risk	84.80
	2362-IBOOY	High Risk	84.75
	3714-NTNFO	High Risk	84.50
	9297-FVVDH	High Risk	84.50
	5520-FVEWJ	High Risk	84.50
	4919-IKATY	High Risk	84.50
	4822-NGOCH	High Risk	84.45
	2683-BPJSO	High Risk	84.45
	6250-CGGUN	High Risk	84.40
	7005-CCBKV	High Risk	84.40
	5609-IMCGG	High Risk	84.35
	8875-AKBYH	High Risk	84.35
	7861-UVUFT	High Risk	84.30
	2013-SGDXK	High Risk	84.30
	5572-ZDXHY	High Risk	84.30
	7530-HDYDS	High Risk	84.25
	8623-TMRBY	High Risk	84.20
	1550-LOAHA	High Risk	84.15
	2834-SPCJV	High Risk	84.10
	3489-HHPFY	High Risk	84.05
	0637-UBJRP	High Risk	84.05
	3223-WZWJM	High Risk	83.95
	1193-RTSLK	High Risk	83.90
	5813-UECBU	High Risk	83.85
	0822-QGCXA	High Risk	83.85
	8802-UNOJF	High Risk	83.80
	0461-CVKMU	High Risk	83.80
	2479-BRAMR	High Risk	83.75
	5949-XIKAE	High Risk	83.55
	2921-XWDJH	High Risk	83.45
	6173-ITPWD	High Risk	83.35
	3550-SAHFP	High Risk	83.35
	0578-SKVMF	High Risk	83.30
	7989-VCQOH	High Risk	83.25
	0689-NKYLF	High Risk	83.20
	2739-CACDQ	High Risk	82.65
	5020-ZSTTY	High Risk	82.45
	7314-OXENN	High Risk	82.00
	3230-WYKIR	High Risk	82.00
	5893-PYOLZ	High Risk	81.80
	4824-GUCBY	High Risk	81.70
	3018-TFTSU	High Risk	81.70
	2826-UWHIS	High Risk	81.40
	9625-QSTYE	High Risk	81.15
	4795-KTRTH	High Risk	81.00
	9560-ARGQJ	High Risk	81.00
	4817-QRJSX	High Risk	81.00
	9823-EALYC	High Risk	80.85
	1704-NRWYE	High Risk	80.85
	9675-ICXCT	High Risk	80.80
	8183-ONMXC	High Risk	80.75
	3404-JNXAX	High Risk	80.75
	9479-HYNYL	High Risk	80.70
	8854-CCVSQ	High Risk	80.65
	2911-WDXMV	High Risk	80.55
	3130-ICDUP	High Risk	80.55
	8166-ZZTFS	High Risk	80.55
	4636-QRJKY	High Risk	80.50
	6357-JJPQT	High Risk	80.50
	9921-ZVRHG	High Risk	80.45
	8198-RKSZG	High Risk	80.45
	3865-QBWSJ	High Risk	80.45
	6961-VCPMC	High Risk	80.40
	6952-OMNWB	High Risk	80.35
	0643-OKLRP	High Risk	80.35
	9897-KXHCM	High Risk	80.30
	0947-IDHRQ	High Risk	80.30
	0137-OCGAB	High Risk	80.20
	7868-BGSZA	High Risk	80.20
	6918-UMQCG	High Risk	80.20
	4759-PXTAN	High Risk	80.10
	4106-HADHQ	High Risk	80.00
	7356-IWLFW	High Risk	80.00
	1184-PJVDB	High Risk	79.95
	6950-TWMYB	High Risk	79.95
	9300-RENDD	High Risk	79.95
	2187-PKZAY	High Risk	79.95
	9170-GYZJC	High Risk	79.90
	7133-VBDCG	High Risk	79.85
	0537-QYZZN	High Risk	79.85
	5364-EVNIB	High Risk	79.80
	4355-HBJHH	High Risk	79.70
	8128-YVJRG	High Risk	79.65
	4248-HCETZ	High Risk	79.65
	8943-URTMR	High Risk	79.65
	5393-RXQSZ	High Risk	79.60
	3420-YJLQT	High Risk	79.55
	2514-GINMM	High Risk	79.50
	2640-PMGFL	High Risk	79.50
	9948-YPTDG	High Risk	79.45
	6302-JGYRJ	High Risk	79.45
	8631-NBHFZ	High Risk	79.40
	5919-TMRGD	High Risk	79.35
	1307-TVUFB	High Risk	79.35
	6298-QDFNH	High Risk	79.35
	1918-ZBFQJ	High Risk	79.25
	1422-DGUBX	High Risk	79.25
	2189-UXTKY	High Risk	79.20
	7957-RYHQD	High Risk	79.20
	3128-YOVTD	High Risk	79.15
	2254-DLXRI	High Risk	79.15
	4818-QIUFN	High Risk	79.15
	8580-AECUZ	High Risk	79.10
	8627-ZYGSZ	High Risk	78.90
	9465-RWMXL	High Risk	78.90
	3855-ONCAR	High Risk	78.90
	9231-ZJYAM	High Risk	78.85
	2971-SGAFL	High Risk	78.75
	0565-IYCGT	High Risk	78.60
	4013-TLDHQ	High Risk	78.25
	3317-VLGQT	High Risk	78.10
	8387-MOJJT	High Risk	77.95
	1121-QSIVB	High Risk	77.55
	8559-CIZFV	High Risk	77.50
	5835-BEQEU	High Risk	76.95
	5928-QLDHB	High Risk	76.25
	4080-IIARD	High Risk	76.20
	7175-NTIXE	High Risk	76.15
	3370-HXOPH	High Risk	76.10
	0231-LXVAP	High Risk	75.90
	4322-RCYMT	High Risk	75.80
	0064-YIJGF	High Risk	75.75
	4431-EDMIQ	High Risk	75.70
	9943-VSZUV	High Risk	75.70
	3987-KQDDU	High Risk	75.60
	5043-TRZWM	High Risk	75.55
	8695-ARGXZ	High Risk	75.55
	1989-PRJHP	High Risk	75.50
	8185-UPYBR	High Risk	75.50
	1320-HTRDR	High Risk	75.50
	6217-TOWGS	High Risk	75.40
	2077-MPJQO	High Risk	75.40
	2122-YWVYA	High Risk	75.40
	1602-IJQQE	High Risk	75.35
	9518-XXBXE	High Risk	75.30
	3199-XGZCY	High Risk	75.25
	9191-MYQKX	High Risk	75.15
	5570-PTWEH	High Risk	75.15
	7993-NQLJE	High Risk	75.10
	8816-VXNZD	High Risk	75.10
	7850-VWJUU	High Risk	75.00
	7993-PYKOF	High Risk	75.00
	9552-TGUZV	High Risk	75.00
	8676-TRMJS	High Risk	75.00
	6996-KNSML	High Risk	74.90
	6856-RAURS	High Risk	74.90
	7235-NXZCP	High Risk	74.85
	6572-ADKRS	High Risk	74.80
	5458-CQJTA	High Risk	74.80
	7401-RUBNK	High Risk	74.80
	8065-YKXKD	High Risk	74.75
	5240-IJOQT	High Risk	74.70
	5399-ZIMKF	High Risk	74.65
	5405-ZMYXQ	High Risk	74.60
	2656-FMOKZ	High Risk	74.45
	8640-SDGKB	High Risk	74.40
	4102-OQUPX	High Risk	74.40
	8372-JUXUI	High Risk	74.35
	4274-OWWYO	High Risk	74.35
	8468-FZTOE	High Risk	74.35
	4441-NIHPT	High Risk	74.30
	8775-ERLNB	High Risk	74.30
	1833-VGRUM	High Risk	74.20
	3714-JTVOV	High Risk	74.15
	0531-ZZJWQ	High Risk	74.00
	0004-TLHLJ	High Risk	73.90
	6289-CPNLD	High Risk	73.90
	6261-RCVNS	High Risk	73.90
	4585-HETAI	High Risk	73.75
	7603-USHJS	High Risk	73.75
	0947-MUGVO	High Risk	73.65
	1196-AMORA	High Risk	73.60
	5108-ADXWO	High Risk	73.50
	8541-QVFKM	High Risk	73.50
	7916-VCCPB	High Risk	73.25
	0471-LVHGK	High Risk	73.00
	2851-STERV	High Risk	73.00
	0260-ZDLGK	High Risk	72.90
	4547-LYTDD	High Risk	72.65
	3295-YVUSR	High Risk	72.60
	0687-ZVTHB	High Risk	72.45
	4489-SNOJF	High Risk	72.25
	5915-DGNVC	High Risk	71.80
	8910-LEDAG	High Risk	71.55
	3420-ZDBMA	High Risk	71.45
	8042-JVNFH	High Risk	71.35
	9488-HGMJH	High Risk	71.15
	7409-KIUTL	High Risk	71.00
	3422-LYEPQ	High Risk	71.00
	3627-FCRDW	High Risk	71.00
	3533-UVMOM	High Risk	70.95
	9722-UJOJR	High Risk	70.75
	8835-VSDSE	High Risk	70.70
	4342-HENTK	High Risk	70.65
	5376-DEQCP	High Risk	70.60
	0515-YPMCW	High Risk	70.45
	6017-PPLPX	High Risk	70.45
	2364-UFROM	High Risk	70.40
	2905-KFQUV	High Risk	70.40
	7147-AYBAA	High Risk	70.35
	7379-POKDZ	High Risk	70.30
	3234-VKACU	High Risk	70.30
	7217-JYHOQ	High Risk	70.30
	7359-SSBJK	High Risk	70.20
	1846-XWOQN	High Risk	70.15
	9506-UXUSK	High Risk	70.15
	9378-FXTIZ	High Risk	70.15
	2262-SLNVK	High Risk	70.10
	2325-ZUSFD	High Risk	70.10
	4702-IOQDC	High Risk	70.10
	3494-JCHRQ	High Risk	70.05
	6715-OFDBP	High Risk	70.05
	3884-HCSWG	High Risk	70.00
	7459-IMVYU	High Risk	69.95
	8097-VBQTZ	High Risk	69.90
	6557-BZXLQ	High Risk	69.65
	1820-TQVEV	High Risk	69.55
	6575-SUVOI	High Risk	69.50
	8401-EMUWF	High Risk	69.40
	9799-CAYJJ	High Risk	69.30
	7206-GZCDC	High Risk	69.25
	9728-FTTVZ	High Risk	69.20
	7660-HDPJV	High Risk	69.20
	3453-RTHJQ	High Risk	69.10
	1303-SRDOK	High Risk	69.05
	8485-GJCDN	High Risk	69.05
	5766-XQXMQ	High Risk	68.85
	4114-QMKVN	High Risk	68.75
	2141-RRYGO	High Risk	68.65
	3780-YVMFA	High Risk	68.55
	1474-JUWSM	High Risk	68.40
	7799-DSEWS	High Risk	68.35
	7112-OPOTK	High Risk	68.25
	6368-NWMCE	High Risk	68.15
	1810-MVMAI	High Risk	67.60
	9207-ZPANB	High Risk	67.45
	4174-LPGTI	High Risk	66.50
	1697-NVVGY	High Risk	66.40
	3850-OKINF	High Risk	66.20
	0708-LGSMF	High Risk	65.85
	9700-ISPUP	High Risk	65.50
	7683-CBDKJ	High Risk	65.45
	7541-YLXCL	High Risk	65.40
	3512-IZIKN	High Risk	65.30
	3969-JQABI	High Risk	65.25
	2930-UOTMB	High Risk	65.25
	9578-VRMNM	High Risk	65.20
	0708-SJDIS	High Risk	65.00
	2937-FTHUR	High Risk	64.80
	3521-SYVOR	High Risk	64.75
	7459-RRWQZ	High Risk	64.65
	0866-QLSIR	High Risk	64.40
	3137-LUPIX	High Risk	64.40
	7905-NJMXS	High Risk	64.20
	3629-WEAAM	High Risk	64.10
	9362-MWODR	High Risk	64.10
	8548-AWOFC	High Risk	63.85
	2274-XUATA	High Risk	63.10
	5309-TAIKL	High Risk	62.80
	0022-TCJCI	High Risk	62.70
	9259-PACGQ	High Risk	62.65
	7931-PXHFC	High Risk	62.30
	4891-NLUBA	High Risk	61.45
	0567-GGCAC	High Risk	61.40
	5317-FLPJF	High Risk	61.35
	8313-KTIHG	High Risk	61.30
	2150-UWTFY	High Risk	61.15
	1353-LJWEM	High Risk	60.90
	0289-IVARM	High Risk	60.55
	2794-XIMMO	High Risk	60.45
	3441-CGZJH	High Risk	60.40
	8201-AAXCB	High Risk	60.35
	8869-TORSS	High Risk	60.35
	0378-XSZPU	High Risk	60.30
	8847-GEOOQ	High Risk	60.20
	8399-YNDCH	High Risk	60.05
	4468-KAZHE	High Risk	60.00
	2931-FSOHN	High Risk	59.90
	7839-NUIAA	High Risk	59.80
	1972-XMUWV	High Risk	59.80
	8624-GIOUT	High Risk	59.75
	6322-HRPFA	High Risk	59.60
	0228-MAUWC	High Risk	59.55
	9474-PHLYD	High Risk	59.45
	2045-BMBTJ	High Risk	59.45
	5294-CDGWY	High Risk	59.30
	2978-XXSOG	High Risk	59.05
	7854-EDSSA	High Risk	59.00
	5154-VEKBL	High Risk	58.50
	9795-SHUHB	High Risk	58.20
	3400-ESFUW	High Risk	57.55
	4695-VADHF	High Risk	57.45
	4510-PYUSH	High Risk	57.15
	9853-JFZDU	High Risk	56.85
	5543-QDCRY	High Risk	56.40
	2851-MMUTZ	High Risk	56.15
	2898-LSJGD	High Risk	55.95
	2911-UREFD	High Risk	55.90
	2460-FPSYH	High Risk	55.80
	9415-TPKRV	High Risk	55.75
	6629-CZTTH	High Risk	55.70
	4680-KUTAJ	High Risk	55.60
	6397-JNZZG	High Risk	55.55
	3656-TKRVZ	High Risk	55.35
	1750-CSKKM	High Risk	55.35
	6682-QJDGB	High Risk	55.25
	1575-KRZZE	High Risk	55.20
	9143-CANJF	High Risk	55.15
	8498-XXGWA	High Risk	55.15
	1114-CENIM	High Risk	55.00
	4351-QLCSU	High Risk	55.00
	8735-DCXNF	High Risk	54.95
	3658-KIBGF	High Risk	54.90
	4385-ZKVNW	High Risk	54.90
	5944-UGLLK	High Risk	54.90
	2430-RRYUW	High Risk	54.80
	4701-AHWMW	High Risk	54.55
	2433-KMEAS	High Risk	54.45
	6313-GIDIT	High Risk	54.45
	9099-FTUHS	High Risk	54.40
	1803-BGNBD	High Risk	54.30

2. customers worth immediate retention
	customerID	revenue_tier	MonthlyCharges	churn_risk_segment
	0280-XJGEX	Gold	103.70	High Risk
	9959-WOFKT	Gold	106.70	High Risk
	6467-CHFZW	Gold	99.35	High Risk
	6572-ADKRS	Gold	74.80	High Risk
	5380-WJKOV	Gold	106.35	High Risk
	3714-NTNFO	Gold	84.50	High Risk
	8627-ZYGSZ	Gold	78.90	High Risk
	3192-NQECA	Gold	110.00	High Risk
	0486-HECZI	Gold	96.75	High Risk
	0691-JVSYA	Gold	94.85	High Risk
	4075-JFPGR	Gold	93.50	High Risk
	7529-ZDFXI	Gold	89.85	High Risk
	4484-GLZOU	Gold	105.05	High Risk
	6851-WEFYX	Gold	100.80	High Risk
	3167-SNQPL	Gold	101.15	High Risk
	5020-ZSTTY	Gold	82.45	High Risk
	4983-CLMLV	Gold	102.70	High Risk
	4322-RCYMT	Gold	75.80	High Risk
	6680-NENYN	Gold	104.60	High Risk
	1343-EHPYB	Gold	103.40	High Risk
	0533-BNWKF	Gold	85.45	High Risk
	0979-PHULV	Gold	99.45	High Risk
	7752-XUSCI	Gold	105.90	High Risk
	8847-GEOOQ	Gold	60.20	High Risk
	1480-BKXGA	Gold	116.05	High Risk
	9412-GHEEC	Gold	104.80	High Risk
	8397-MVTAZ	Gold	100.05	High Risk
	6986-IJDHX	Gold	86.30	High Risk
	4676-MQUEA	Gold	101.90	High Risk
	1352-HNSAW	Gold	115.60	High Risk
	0939-YAPAF	Gold	100.25	High Risk
	4710-FDUIZ	Gold	100.30	High Risk
	6522-YRBXD	Gold	94.55	High Risk
	3419-SNJJD	Gold	105.25	High Risk
	2469-DTSGX	Gold	111.65	High Risk
	4554-YGZIH	Gold	90.05	High Risk
	5099-BAILX	Gold	110.75	High Risk
	7207-RMRDB	Gold	105.50	High Risk
	4913-EHYUI	Gold	104.55	High Risk
	2826-UWHIS	Gold	81.40	High Risk
	6952-OMNWB	Gold	80.35	High Risk
	5244-IRFIH	Gold	94.50	High Risk
	2521-NPUZR	Gold	101.00	High Risk
	1307-TVUFB	Gold	79.35	High Risk
	2037-XJFUP	Gold	95.80	High Risk
	0691-IFBQW	Gold	110.00	High Risk
	3009-JWMPU	Gold	96.75	High Risk
	4289-DTDKW	Gold	101.30	High Risk
	2239-JALAW	Gold	103.25	High Risk
	4853-RULSV	Gold	104.00	High Risk
	4220-TINQT	Gold	106.35	High Risk
	3104-OWCGK	Gold	90.95	High Risk
	9101-BWFSS	Gold	108.55	High Risk
	4250-WAROZ	Gold	93.25	High Risk
	0727-BMPLR	Gold	100.00	High Risk
	2382-BCKQJ	Gold	100.15	High Risk
	1937-OTUKY	Gold	98.20	High Risk
	5073-WXOYN	Gold	50.80	High Risk
	7549-MYGPK	Gold	100.55	High Risk
	3804-RVTGV	Gold	103.85	High Risk
	7028-DVOIQ	Gold	99.05	High Risk
	2834-JRTUA	Gold	108.05	High Risk
	6646-QVXLR	Gold	103.75	High Risk
	8818-XYFCQ	Gold	99.55	High Risk
	9948-YPTDG	Gold	79.45	High Risk
	5981-ITEMU	Gold	97.10	High Risk
	5536-RTPWK	Gold	99.05	High Risk
	4361-BKAXE	Gold	114.50	High Risk
	3312-UUMZW	Gold	98.85	High Risk
	8111-SLLHI	Gold	105.65	High Risk
	5334-JLAXU	Gold	94.10	High Risk
	6270-OMFIW	Gold	94.40	High Risk
	3164-YAXFY	Gold	53.75	High Risk
	0887-WBJVH	Gold	93.45	High Risk
	3927-NLNRY	Gold	94.25	High Risk
	2040-VZIKE	Gold	100.85	High Risk
	9408-HRXRK	Gold	105.15	High Risk
	2226-ICFDO	Gold	85.90	High Risk
	4187-CINZD	Gold	95.25	High Risk
	6818-WOBHJ	Gold	89.60	High Risk
	6244-BESBM	Gold	95.20	High Risk
	2408-TZMJL	Gold	110.15	High Risk
	8800-ZKRFW	Gold	107.50	High Risk
	9795-SHUHB	Gold	58.20	High Risk
	0201-OAMXR	Gold	115.55	High Risk
	6393-WRYZE	Gold	97.65	High Risk
	6599-RCLCJ	Gold	109.55	High Risk
	4791-QRGMF	Gold	99.50	High Risk
	3838-OZURD	Gold	105.00	High Risk
	7130-YXBRO	Gold	111.45	High Risk
	6250-CGGUN	Gold	84.40	High Risk
	8621-MNIHH	Gold	94.25	High Risk
	9518-RWHZL	Gold	100.05	High Risk
	5977-CKHON	Gold	92.55	High Risk
	3253-HKOKL	Gold	100.30	High Risk
	1621-YNCJH	Gold	106.05	High Risk
	9495-SKLKD	Gold	95.95	High Risk
	5469-CTCWN	Gold	106.00	High Risk
	9851-QXEEQ	Gold	104.70	High Risk
	3128-YOVTD	Gold	79.15	High Risk
	2886-KEFUM	Gold	107.50	High Risk
	9651-GTSAQ	Gold	106.10	High Risk
	2003-CKLOR	Gold	99.50	High Risk
	8387-MOJJT	Gold	77.95	High Risk
	3584-WKTTW	Gold	111.55	High Risk
	3092-IGHWF	Gold	87.40	High Risk
	6035-RIIOM	Gold	97.20	High Risk
	2929-QNSRW	Gold	98.25	High Risk
	3533-UVMOM	Gold	70.95	High Risk
	1899-VXWXM	Gold	106.10	High Risk
	3331-HQDTW	Gold	109.80	High Risk
	1228-FZFRV	Gold	105.95	High Risk
	5364-XYIRR	Gold	94.65	High Risk
	4829-AUOAX	Gold	96.05	High Risk
	9659-QEQSY	Gold	115.65	High Risk
	9158-VCTQB	Gold	113.60	High Risk
	6097-EQISJ	Gold	102.45	High Risk
	9705-IOVQQ	Gold	99.00	High Risk
	6950-TWMYB	Gold	79.95	High Risk
	3144-KMTWZ	Gold	93.25	High Risk
	7279-BUYWN	Gold	113.20	High Risk
	7530-HDYDS	Gold	84.25	High Risk
	6701-DHKWQ	Gold	51.35	High Risk
	6990-YNRIO	Gold	108.65	High Risk
	4143-HHPMK	Gold	85.35	High Risk
	3946-JEWRQ	Gold	95.20	High Risk
	8840-DQLGN	Gold	100.50	High Risk
	3143-ILDAL	Gold	94.45	High Risk
	4720-VSTSI	Gold	84.80	High Risk
	6651-AZVTJ	Gold	99.80	High Risk
	4566-GOLUK	Gold	107.35	High Risk
	9614-RMGHA	Gold	91.85	High Risk
	0701-RFGFI	Gold	95.40	High Risk
	2430-RRYUW	Gold	54.80	High Risk
	0565-IYCGT	Gold	78.60	High Risk
	5110-CHOPY	Gold	53.60	High Risk
	9675-ICXCT	Gold	80.80	High Risk
	0348-SDKOL	Gold	102.10	High Risk
	3424-NMNBO	Gold	108.85	High Risk
	1447-PJGGA	Gold	95.25	High Risk
	9139-WQQDY	Gold	100.45	High Risk
	6845-RGTYS	Gold	98.75	High Risk
	7694-VLBWQ	Gold	104.10	High Risk
	6481-OGDOO	Gold	90.60	High Risk
	7519-JTWQH	Gold	110.50	High Risk
	2038-LLMLM	Gold	103.85	High Risk
	6173-ITPWD	Gold	83.35	High Risk
	7483-IQWIB	Gold	92.95	High Risk
	6179-GJPSO	Gold	108.15	High Risk
	5804-HYIEZ	Gold	106.05	High Risk
	2153-MREFK	Gold	99.20	High Risk
	8945-MUQUF	Gold	94.80	High Risk
	9297-FVVDH	Gold	84.50	High Risk
	2931-VUVJN	Gold	94.05	High Risk
	7622-FWGEW	Gold	85.65	High Risk
	8548-AWOFC	Gold	63.85	High Risk
	2659-VXMWZ	Gold	111.30	High Risk
	3207-OYBWH	Gold	95.25	High Risk
	8097-VBQTZ	Gold	69.90	High Risk
	1013-QCWAM	Gold	100.80	High Risk
	5732-IKGQH	Gold	104.45	High Risk
	3571-RFHAR	Gold	109.15	High Risk
	1587-FKLZB	Gold	99.50	High Risk
	4307-KTUMW	Gold	93.90	High Risk
	5440-FLBQG	Gold	108.40	High Risk
	3870-MQAMG	Gold	110.35	High Risk
	4800-CZMPC	Gold	103.25	High Risk
	4612-THJBS	Gold	104.75	High Risk
	6650-BWFRT	Gold	117.15	High Risk
	3757-NJYBX	Gold	106.35	High Risk
	5136-KCKGI	Gold	103.70	High Risk
	5197-PYEPU	Gold	94.45	High Risk
	9898-KZQDZ	Gold	94.55	High Risk
	5236-PERKL	Gold	112.95	High Risk
	2519-FAKOD	Gold	99.25	High Risk
	1254-IZEYF	Gold	99.95	High Risk
	1323-OOEPC	Gold	98.40	High Risk
	5630-IXDXV	Gold	106.35	High Risk
	0397-GZBBC	Gold	93.85	High Risk
	7641-EUYET	Gold	100.70	High Risk
	5397-NSKQG	Gold	50.90	High Risk
	8178-EYZUO	Gold	93.70	High Risk
	0407-BDJKB	Gold	95.75	High Risk
	8216-AZUUZ	Gold	100.40	High Risk
	3269-ATYWD	Gold	95.65	High Risk
	0354-WYROK	Gold	98.90	High Risk
	3969-JQABI	Gold	65.25	High Risk
	5945-AZYHT	Gold	109.60	High Risk
	4446-BZKHU	Gold	105.55	High Risk
	3351-NQLDI	Gold	94.35	High Risk
	3336-JORSO	Gold	110.45	High Risk
	6769-DCQLI	Gold	105.00	High Risk
	2195-ZRVAX	Gold	85.30	High Risk
	5893-PYOLZ	Gold	81.80	High Risk
	4191-XOVOM	Gold	105.40	High Risk
	5013-SBUIH	Gold	109.65	High Risk
	3001-CBHLQ	Gold	104.90	High Risk
	3763-GCZHZ	Gold	104.05	High Risk
	7599-NTMDP	Gold	48.70	High Risk
	9170-GYZJC	Gold	79.90	High Risk
	2277-DJJDL	Gold	99.00	High Risk
	0310-MVLET	Gold	99.15	High Risk
	4550-VBOFE	Gold	102.95	High Risk
	3170-GWYKC	Gold	104.95	High Risk
	5312-IRCFR	Gold	92.85	High Risk
	3404-JNXAX	Gold	80.75	High Risk
	2845-AFFTX	Gold	99.80	High Risk
	0596-BQCEQ	Gold	100.15	High Risk
	1303-SRDOK	Gold	69.05	High Risk
	6295-OSINB	Gold	109.65	High Risk
	1891-FZYSA	Gold	89.95	High Risk
	3865-QBWSJ	Gold	80.45	High Risk
	7317-GGVPB	Gold	108.60	High Risk
	7271-AJDTL	Gold	94.45	High Risk
	8809-RIHDD	Gold	103.40	High Risk
	4803-AXVYP	Gold	99.55	High Risk
	2834-SPCJV	Gold	84.10	High Risk
	0895-DQHEW	Gold	104.30	High Risk
	9710-ZUSHQ	Gold	106.75	High Risk
	3318-OSATS	Gold	95.45	High Risk
	7774-OJSXI	Gold	103.45	High Risk
	5144-TVGLP	Gold	94.75	High Risk
	8276-MQBYC	Gold	97.80	High Risk
	0337-CNPZE	Gold	106.30	High Risk
	8871-JLMHM	Gold	90.20	High Risk
	1474-JUWSM	Gold	68.40	High Risk
	8498-XXGWA	Gold	55.15	High Risk
	4806-DXQCE	Gold	113.65	High Risk
	7056-IMHCC	Gold	101.90	High Risk
	4176-FXYBO	Gold	109.55	High Risk
	8749-JMNKX	Gold	93.80	High Risk
	0917-EZOLA	Gold	104.15	High Risk
	7599-FKVXZ	Gold	106.15	High Risk
	2921-XWDJH	Gold	83.45	High Risk
	0748-RDGGM	Gold	109.50	High Risk
	5889-JTMUL	Gold	95.05	High Risk
	2165-VOEGB	Gold	105.20	High Risk
	0963-ZBDRN	Gold	96.20	High Risk
	8623-TMRBY	Gold	84.20	High Risk
	4488-KQFDT	Gold	103.95	High Risk
	1545-JFUML	Gold	99.00	High Risk
	2587-EKXTS	Gold	111.50	High Risk
	9378-FXTIZ	Gold	70.15	High Risk
	1723-HKXJQ	Gold	101.75	High Risk
	4433-JCGCG	Gold	101.00	High Risk
	1150-WFARN	Gold	108.75	High Risk
	6961-VCPMC	Gold	80.40	High Risk
	8468-EHYJA	Gold	99.65	High Risk
	6771-XWBDM	Gold	104.50	High Risk
	9351-HXDMR	Gold	110.90	High Risk
	1866-RZZQS	Gold	98.40	High Risk
	8631-NBHFZ	Gold	79.40	High Risk
	4958-XCBDQ	Gold	101.40	High Risk
	1725-IQNIY	Gold	109.75	High Risk
	7868-BGSZA	Gold	80.20	High Risk
	2533-QVMSK	Gold	94.10	High Risk
	8374-XGEJJ	Gold	101.00	High Risk
	2325-ZUSFD	Gold	70.10	High Risk
	4039-HEUNW	Gold	96.50	High Risk
	5089-IFSDP	Gold	109.45	High Risk
	4817-VYYWS	Gold	100.20	High Risk
	2403-BCASL	Gold	111.95	High Risk
	3886-CERTZ	Gold	109.25	High Risk
	9278-VZKCD	Gold	109.10	High Risk
	8938-UMKPI	Gold	106.40	High Risk
	5655-JSMZM	Gold	96.20	High Risk
	3692-JHONH	Gold	106.50	High Risk
	0406-BPDVR	Gold	101.50	High Risk
	9823-EALYC	Gold	80.85	High Risk
	2126-GSEGL	Gold	84.80	High Risk
	0531-ZZJWQ	Gold	74.00	High Risk
	0946-CLJTI	Gold	98.70	High Risk
	0324-BRPCJ	Gold	100.20	High Risk
	6211-WWLTF	Gold	99.70	High Risk
	2748-MYRVK	Gold	99.90	High Risk
	6559-ILWKJ	Gold	49.35	High Risk
	4553-DVPZG	Gold	101.35	High Risk
	2027-WKXMW	Gold	108.75	High Risk
	4088-YLDSU	Gold	104.15	High Risk
	9360-AHGNL	Gold	109.55	High Risk
	2632-UCGVD	Gold	100.05	High Risk
	5445-PZWGX	Gold	102.00	High Risk
	6425-YQLLO	Gold	105.95	High Risk
	6899-PPEEA	Gold	96.55	High Risk
	2674-MLXMN	Gold	99.65	High Risk
	0853-NWIFK	Gold	100.30	High Risk
	7481-ATQQS	Gold	90.85	High Risk
	3400-ESFUW	Gold	57.55	High Risk
	5502-RLUYV	Gold	103.95	High Risk
	3086-RUCRN	Gold	103.10	High Risk
	0378-XSZPU	Gold	60.30	High Risk
	2001-EWBQU	Gold	104.70	High Risk
	2037-SGXHH	Gold	94.65	High Risk
	2479-BRAMR	Gold	83.75	High Risk
	3714-JTVOV	Gold	74.15	High Risk
	1264-BYWMS	Gold	96.80	High Risk
	8580-QVLOC	Gold	92.45	High Risk
	9647-ERGBE	Gold	100.05	High Risk
	4355-HBJHH	Gold	79.70	High Risk
	5827-MWCZK	Gold	96.95	High Risk
	2697-NQBPF	Gold	105.35	High Risk
	8999-XXGNS	Gold	105.75	High Risk
	8065-BVEPF	Gold	99.10	High Risk
	2889-FPWRM	Gold	117.80	High Risk
	0929-PECLO	Gold	89.60	High Risk
	5458-CQJTA	Gold	74.80	High Risk
	5219-YIPTK	Gold	104.40	High Risk
	5172-RKOCB	Gold	108.95	High Risk
	7486-KSRVI	Gold	100.00	High Risk
	6305-YLBMM	Gold	104.05	High Risk
	8024-XNAFQ	Gold	107.40	High Risk
	2988-GBIVW	Gold	90.85	High Risk
	3791-LGQCY	Gold	100.65	High Risk
	0129-KPTWJ	Gold	94.65	High Risk
	8166-ZZTFS	Gold	80.55	High Risk
	7550-WIQVA	Gold	108.25	High Risk
	4106-HADHQ	Gold	80.00	High Risk
	4001-TSBTV	Gold	91.55	High Risk
	7402-PWYJJ	Gold	91.15	High Risk
	7067-KSAZT	Gold	106.25	High Risk
	2360-RDGRO	Gold	104.25	High Risk
	2568-OIADY	Gold	99.50	High Risk
	1193-RTSLK	Gold	83.90	High Risk
	2302-ANTDP	Gold	117.45	High Risk
	5281-BUZGT	Gold	90.85	High Risk
	7839-NUIAA	Gold	59.80	High Risk
	7480-QNVZJ	Gold	95.70	High Risk
	7124-UGSUR	Gold	104.40	High Risk
	1502-XFCVR	Gold	106.45	High Risk
	2067-QYTCF	Gold	111.15	High Risk
	2359-QWQUL	Gold	104.70	High Risk
	7762-URZQH	Gold	106.05	High Risk
	6907-NZZIJ	Gold	99.15	High Risk
	1644-IRKSF	Gold	93.80	High Risk
	8547-NSBBO	Gold	96.75	High Risk
	2995-UPRYS	Gold	99.20	High Risk
	6686-YPGHK	Gold	85.50	High Risk
	5317-FLPJF	Gold	61.35	High Risk
	8199-ZLLSA	Gold	118.35	High Risk
	4128-ETESU	Gold	99.70	High Risk
	5980-NOPLP	Gold	96.10	High Risk
	3850-OKINF	Gold	66.20	High Risk
	8016-NCFVO	Gold	116.50	High Risk
	5439-WIKXB	Gold	94.55	High Risk
	4350-ZTLPI	Gold	108.95	High Risk
	2080-CAZNM	Gold	104.40	High Risk
	3001-UNBTL	Gold	103.95	High Risk
	0643-OKLRP	Gold	80.35	High Risk
	6050-IJRHS	Gold	106.50	High Risk
	8591-TKMZH	Gold	111.10	High Risk
	2794-XIMMO	Gold	60.45	High Risk
	8327-LZKAS	Gold	107.55	High Risk
	5887-IKKYO	Gold	94.35	High Risk
	1527-SXDPN	Gold	96.25	High Risk
	6029-WTIPC	Gold	101.10	High Risk
	8634-CILSZ	Gold	104.70	High Risk
	9479-HYNYL	Gold	80.70	High Risk
	1935-IMVBB	Gold	89.70	High Risk
	6386-SZZKH	Gold	107.95	High Risk
	0877-SDMBN	Gold	103.95	High Risk
	2362-IBOOY	Gold	84.75	High Risk
	2722-VOJQL	Gold	105.65	High Risk
	7929-SKFGK	Gold	114.30	High Risk
	5959-BELXA	Gold	96.15	High Risk
	3512-IZIKN	Gold	65.30	High Risk
	3374-TTZTK	Gold	106.30	High Risk
	6345-ULYRW	Gold	88.40	High Risk
	8029-XYPWT	Gold	115.05	High Risk
	6804-GDMOI	Gold	106.60	High Risk
	9572-MTILT	Gold	106.75	High Risk
	2225-ZRGSG	Gold	93.90	High Risk
	5271-YNWVR	Gold	113.15	High Risk
	9801-GDWGV	Gold	103.45	High Risk
	1121-QSIVB	Gold	77.55	High Risk
	5915-DGNVC	Gold	71.80	High Risk
	0193-ESZXP	Gold	105.50	High Risk
	1984-FCOWB	Gold	109.50	High Risk
	5287-QWLKY	Gold	105.10	High Risk
	0363-QJVFX	Gold	108.15	High Risk
	3349-ANQNH	Gold	99.50	High Risk
	1265-XTECC	Gold	96.55	High Risk
	1972-XMUWV	Gold	59.80	High Risk
	2237-ZFSMY	Gold	95.55	High Risk
	6711-VTNRE	Gold	87.55	High Risk
	7136-RVDTZ	Gold	45.25	High Risk
	9114-VEPUF	Gold	96.10	High Risk
	6777-TGHTM	Gold	106.95	High Risk
	8610-WFCJF	Gold	95.60	High Risk
	7881-INRLC	Gold	100.85	High Risk
	9943-VSZUV	Gold	75.70	High Risk
	7248-VZQLC	Gold	85.20	High Risk
	5828-DWPIL	Gold	89.10	High Risk
	6261-RCVNS	Gold	73.90	High Risk
	5816-QVHRX	Gold	100.30	High Risk
	8019-ENHXU	Gold	99.45	High Risk
	0687-ZVTHB	Gold	72.45	High Risk
	9661-ACXBS	Gold	105.20	High Risk
	6646-VRFOL	Gold	103.85	High Risk
	5671-UUNXD	Gold	100.65	High Risk
	4250-ZBWLV	Gold	108.45	High Risk
	9090-SGQXL	Gold	105.30	High Risk
	9835-ZIITK	Gold	110.85	High Risk
	1555-DJEQW	Gold	114.20	High Risk
	9445-SZLCH	Gold	97.35	High Risk
	4523-WXCEF	Gold	101.10	High Risk
	9249-FXSCK	Gold	111.25	High Risk
	1095-JUDTC	Gold	95.05	High Risk
	3896-RCYYE	Gold	53.40	High Risk
	5385-SUIRI	Gold	104.20	High Risk
	4077-CROMM	Gold	104.20	High Risk
	0201-MIBOL	Gold	102.40	High Risk
	4789-KWMXN	Gold	110.85	High Risk
	2856-NNASM	Gold	89.55	High Risk
	7547-EKNFS	Gold	95.25	High Risk
	2279-AXJJK	Gold	95.65	High Risk
	6769-DYBQN	Gold	85.00	High Risk
	4759-PXTAN	Gold	80.10	High Risk
	3428-MMGUB	Gold	89.55	High Risk
	9053-JZFKV	Gold	116.20	High Risk
	2530-ENDWQ	Gold	93.70	High Risk
	7356-IWLFW	Gold	80.00	High Risk
	7055-VKGDA	Gold	105.40	High Risk
	8651-ENBZX	Gold	106.00	High Risk
	3384-CTMSF	Gold	104.10	High Risk
	1842-EZJMK	Gold	103.70	High Risk
	8079-XRJRS	Gold	89.75	High Risk
	2869-ADAWR	Gold	89.30	High Risk
	2378-VTKDH	Gold	104.35	High Risk
	3058-HJCUY	Gold	102.60	High Risk
	3259-FDWOY	Gold	106.00	High Risk
	5298-GSTLM	Gold	101.40	High Risk
	5748-RNCJT	Gold	106.50	High Risk
	6034-ZRYCV	Gold	54.20	High Risk
	9137-UIYPG	Gold	106.90	High Risk
	3685-YLCMQ	Gold	104.65	High Risk
	8634-MPHTR	Gold	100.05	High Risk
	8761-NSOBC	Gold	100.55	High Risk
	2474-BRUCM	Gold	101.85	High Risk
	5708-EVONK	Gold	93.40	High Risk
	8708-XPXHZ	Gold	94.20	High Risk
	3190-XFANI	Gold	100.60	High Risk
	0520-FDVVT	Gold	102.35	High Risk
	1444-VVSGW	Gold	115.65	High Risk
	6661-HBGWL	Gold	104.75	High Risk
	4891-NLUBA	Gold	61.45	High Risk
	4701-AHWMW	Gold	54.55	High Risk
	7632-MNYOY	Gold	110.90	High Risk
	6518-LGAOV	Gold	105.00	High Risk
	9600-NAXZN	Gold	101.40	High Risk
	0898-XCGTF	Gold	96.50	High Risk
	2832-KJCRD	Gold	103.65	High Risk
	3588-WSTTJ	Gold	99.05	High Risk
	9412-ARGBX	Gold	95.50	High Risk
	3768-NLUBH	Gold	100.60	High Risk
	7359-SSBJK	Gold	70.20	High Risk
	7957-RYHQD	Gold	79.20	High Risk
	5515-AKOAJ	Gold	100.10	High Risk
	4114-QMKVN	Gold	68.75	High Risk
	5294-CDGWY	Gold	59.30	High Risk
	3990-QYKBE	Gold	92.50	High Risk
	3090-HAWSU	Gold	111.60	High Risk
	1320-GVNHT	Gold	108.40	High Risk
	3541-ZNUHK	Gold	85.10	High Risk
	0617-AQNWT	Gold	47.85	High Risk
	3005-NFMTA	Gold	98.80	High Risk
	9079-YEXQJ	Gold	111.10	High Risk
	0402-CQAJN	Gold	101.90	High Risk
	2133-TSRRM	Gold	105.35	High Risk
	0530-IJVDB	Gold	114.60	High Risk
	7142-HVGBG	Gold	103.00	High Risk
	8267-ZNYVZ	Gold	103.75	High Risk
	6797-LNAQX	Gold	98.30	High Risk
	2750-BJLSB	Gold	103.70	High Risk
	6394-MFYNG	Gold	107.40	High Risk
	4690-PKDQG	Gold	95.55	High Risk
	6664-FPDAC	Gold	111.95	High Risk
	8468-FZTOE	Gold	74.35	High Risk
	6583-QGCSI	Gold	88.05	High Risk
	0093-XWZFY	Gold	104.50	High Risk
	2274-XUATA	Gold	63.10	High Risk
	9053-EJUNL	Gold	89.20	High Risk
	0639-TSIQW	Gold	102.95	High Risk
	2234-XADUH	Gold	103.20	High Risk

