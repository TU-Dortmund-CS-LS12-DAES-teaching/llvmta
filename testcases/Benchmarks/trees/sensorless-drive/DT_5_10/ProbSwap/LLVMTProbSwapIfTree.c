#include "LLVMTProbSwapIfTree.h"
int main() {
float pX[48];
	unsigned int predCnt[11] ;
	predCnt[LLVMTProbSwapIfTree_predict0(pX)]++;
	predCnt[LLVMTProbSwapIfTree_predict1(pX)]++;
	predCnt[LLVMTProbSwapIfTree_predict2(pX)]++;
	predCnt[LLVMTProbSwapIfTree_predict3(pX)]++;
	predCnt[LLVMTProbSwapIfTree_predict4(pX)]++;
	predCnt[LLVMTProbSwapIfTree_predict5(pX)]++;
	predCnt[LLVMTProbSwapIfTree_predict6(pX)]++;
	predCnt[LLVMTProbSwapIfTree_predict7(pX)]++;
	predCnt[LLVMTProbSwapIfTree_predict8(pX)]++;
	predCnt[LLVMTProbSwapIfTree_predict9(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTProbSwapIfTree_predict0(float const pX[48]){
if(pX[11] >  -0.08910949900746346){
	if(pX[24] >  0.011817499995231628){
		if(pX[6] <=  0.020786999724805355){
			if(pX[6] <=  -0.016221500001847744){
				if(pX[8] <=  -0.02672899980098009){
					return 9;
				} else {
					return 1;
				}
			} else {
				if(pX[21] <=  1.397450029850006){
					return 4;
				} else {
					return 8;
				}
			}
		} else {
			if(pX[22] <=  2.340350031852722){
				if(pX[15] <=  0.002259500091895461){
					return 4;
				} else {
					return 7;
				}
			} else {
				if(pX[8] <=  0.02250450011342764){
					return 8;
				} else {
					return 3;
				}
			}
		}
	} else {
		if(pX[10] <=  0.06794550269842148){
			if(pX[15] <=  0.0018113500555045903){
				if(pX[21] <=  2.1862000226974487){
					return 3;
				} else {
					return 8;
				}
			} else {
				if(pX[34] <=  -0.010228999890387058){
					return 1;
				} else {
					return 2;
				}
			}
		} else {
			if(pX[7] <=  0.021978000178933144){
				if(pX[47] <=  -1.5013999938964844){
					return 6;
				} else {
					return 3;
				}
			} else {
				return 6;
			}
		}
	}
} else {
	if(pX[3] <=  8.44824971864e-05){
		return 10;
	} else {
		return 1;
	}
}
}
unsigned int LLVMTProbSwapIfTree_predict1(float const pX[48]){
if(pX[34] >  -0.018050500191748142){
	if(pX[10] <=  0.06846050173044205){
		if(pX[10] >  -0.006386349909007549){
			if(pX[7] <=  0.014020999893546104){
				if(pX[21] <=  1.2964499592781067){
					return 2;
				} else {
					return 2;
				}
			} else {
				if(pX[9] <=  0.033929500728845596){
					return 7;
				} else {
					return 3;
				}
			}
		} else {
			if(pX[30] <=  -0.008402050007134676){
				if(pX[12] <=  0.0018095499835908413){
					return 10;
				} else {
					return 5;
				}
			} else {
				if(pX[6] <=  -0.005831349873915315){
					return 1;
				} else {
					return 0;
				}
			}
		}
	} else {
		if(pX[8] <=  0.021383999846875668){
			if(pX[9] <=  0.07844749838113785){
				return 3;
			} else {
				return 6;
			}
		} else {
			return 6;
		}
	}
} else {
	if(pX[10] >  -0.08278600126504898){
		if(pX[20] >  1.3832499980926514){
			if(pX[7] <=  0.00308508996386081){
				if(pX[22] <=  1.6296000480651855){
					return 9;
				} else {
					return 1;
				}
			} else {
				if(pX[7] <=  0.012762000318616629){
					return 5;
				} else {
					return 8;
				}
			}
		} else {
			if(pX[8] >  -0.014562500175088644){
				if(pX[18] <=  1.097870022058487){
					return 4;
				} else {
					return 6;
				}
			} else {
				return 1;
			}
		}
	} else {
		return 10;
	}
}
}
unsigned int LLVMTProbSwapIfTree_predict2(float const pX[48]){
if(pX[20] >  2.3316999673843384){
	if(pX[20] <=  2.363450050354004){
		if(pX[33] <=  -0.009154499974101782){
			if(pX[18] <=  2.351449966430664){
				if(pX[7] <=  0.022567499428987503){
					return 8;
				} else {
					return 3;
				}
			} else {
				if(pX[8] <=  0.020527999848127365){
					return 8;
				} else {
					return 3;
				}
			}
		} else {
			if(pX[42] <=  -1.5066999793052673){
				if(pX[12] <=  0.0029780500335618854){
					return 8;
				} else {
					return 3;
				}
			} else {
				return 8;
			}
		}
	} else {
		if(pX[10] <=  0.0042645009234547615){
			return 8;
		} else {
			return 3;
		}
	}
} else {
	if(pX[8] >  -0.010287499986588955){
		if(pX[22] >  2.3074499368667603){
			if(pX[7] <=  0.010704500135034323){
				if(pX[37] <=  3.2241498827934265){
					return 8;
				} else {
					return 1;
				}
			} else {
				if(pX[44] <=  -1.4903500080108643){
					return 7;
				} else {
					return 8;
				}
			}
		} else {
			if(pX[35] <=  0.01860100030899048){
				if(pX[8] <=  0.037821000441908836){
					return 0;
				} else {
					return 6;
				}
			} else {
				if(pX[18] <=  1.3299999833106995){
					return 6;
				} else {
					return 6;
				}
			}
		}
	} else {
		if(pX[20] >  0.9606499969959259){
			if(pX[10] >  -0.08742999844253063){
				if(pX[31] <=  -0.002274799975566566){
					return 9;
				} else {
					return 1;
				}
			} else {
				if(pX[46] <=  -1.469800055027008){
					return 10;
				} else {
					return 1;
				}
			}
		} else {
			return 9;
		}
	}
}
}
unsigned int LLVMTProbSwapIfTree_predict3(float const pX[48]){
if(pX[35] >  -0.01786200050264597){
	if(pX[8] <=  -0.010697000194340944){
		if(pX[36] <=  -0.4749699980020523){
			if(pX[21] <=  2.2759000062942505){
				if(pX[11] <=  -0.08371099829673767){
					return 10;
				} else {
					return 9;
				}
			} else {
				if(pX[11] <=  -0.11445099860429764){
					return 10;
				} else {
					return 1;
				}
			}
		} else {
			if(pX[6] <=  -0.047054000198841095){
				if(pX[44] <=  -1.4845499992370605){
					return 10;
				} else {
					return 1;
				}
			} else {
				if(pX[18] <=  1.7861000299453735){
					return 9;
				} else {
					return 1;
				}
			}
		}
	} else {
		if(pX[9] <=  -0.0077152501326054335){
			if(pX[34] <=  0.009846750181168318){
				if(pX[4] <=  -1.0155499694519676e-05){
					return 8;
				} else {
					return 5;
				}
			} else {
				if(pX[22] <=  2.23580002784729){
					return 0;
				} else {
					return 5;
				}
			}
		} else {
			if(pX[12] <=  0.0029561499832198024){
				if(pX[11] <=  0.06801300123333931){
					return 4;
				} else {
					return 6;
				}
			} else {
				if(pX[10] <=  0.027816499583423138){
					return 7;
				} else {
					return 3;
				}
			}
		}
	}
} else {
	if(pX[7] >  -0.03834499977529049){
		if(pX[12] >  0.002276299986988306){
			if(pX[24] <=  0.0014049499295651913){
				if(pX[10] <=  -0.033118000254034996){
					return 5;
				} else {
					return 9;
				}
			} else {
				if(pX[47] <=  -1.492900013923645){
					return 7;
				} else {
					return 8;
				}
			}
		} else {
			if(pX[7] >  -0.007166900206357241){
				if(pX[1] <=  -5.5714999689371325e-06){
					return 8;
				} else {
					return 0;
				}
			} else {
				return 1;
			}
		}
	} else {
		if(pX[18] >  1.1574000120162964){
			if(pX[29] <=  6.156999945640564){
				return 10;
			} else {
				return 9;
			}
		} else {
			return 1;
		}
	}
}
}
unsigned int LLVMTProbSwapIfTree_predict4(float const pX[48]){
if(pX[35] >  -0.017788000404834747){
	if(pX[11] <=  0.06761600077152252){
		if(pX[11] <=  -0.00620469986461103){
			if(pX[8] <=  -0.008875000290572643){
				if(pX[31] <=  -0.008527549915015697){
					return 10;
				} else {
					return 9;
				}
			} else {
				if(pX[24] <=  0.01144499983638525){
					return 5;
				} else {
					return 8;
				}
			}
		} else {
			if(pX[8] <=  0.013498499989509583){
				if(pX[10] <=  0.03255250118672848){
					return 2;
				} else {
					return 3;
				}
			} else {
				if(pX[33] <=  0.0024420999689027667){
					return 4;
				} else {
					return 7;
				}
			}
		}
	} else {
		if(pX[7] >  0.02073800005018711){
			if(pX[8] >  0.02119200024753809){
				if(pX[7] <=  0.022016000002622604){
					return 6;
				} else {
					return 6;
				}
			} else {
				return 3;
			}
		} else {
			if(pX[23] <=  1.336549997329712){
				return 6;
			} else {
				return 3;
			}
		}
	}
} else {
	if(pX[7] >  -0.03828450106084347){
		if(pX[20] <=  1.382099986076355){
			if(pX[6] <=  -0.0148134995251894){
				if(pX[37] <=  -0.44635000824928284){
					return 9;
				} else {
					return 1;
				}
			} else {
				if(pX[26] <=  -0.17165999859571457){
					return 8;
				} else {
					return 0;
				}
			}
		} else {
			if(pX[10] <=  -0.010328999953344464){
				if(pX[36] <=  -0.6798750162124634){
					return 9;
				} else {
					return 8;
				}
			} else {
				if(pX[14] <=  0.014789349865168333){
					return 7;
				} else {
					return 4;
				}
			}
		}
	} else {
		if(pX[24] >  -0.23723599454388022){
			if(pX[46] <=  -1.48785001039505){
				return 10;
			} else {
				return 1;
			}
		} else {
			return 9;
		}
	}
}
}
unsigned int LLVMTProbSwapIfTree_predict5(float const pX[48]){
if(pX[9] >  -0.08610249869525433){
	if(pX[20] <=  2.3310999870300293){
		if(pX[7] <=  -0.010211500339210033){
			if(pX[10] <=  -0.022133000195026398){
				if(pX[10] <=  -0.030133500695228577){
					return 1;
				} else {
					return 1;
				}
			} else {
				if(pX[10] <=  -0.019482499919831753){
					return 9;
				} else {
					return 9;
				}
			}
		} else {
			if(pX[7] <=  0.028057499788701534){
				if(pX[10] <=  -0.004118849989026785){
					return 5;
				} else {
					return 2;
				}
			} else {
				if(pX[7] <=  0.041521500796079636){
					return 7;
				} else {
					return 6;
				}
			}
		}
	} else {
		if(pX[6] <=  0.023194999434053898){
			if(pX[15] <=  0.0030246999813243747){
				if(pX[41] <=  1.9250500202178955){
					return 3;
				} else {
					return 8;
				}
			} else {
				if(pX[34] <=  -0.012645999900996685){
					return 8;
				} else {
					return 3;
				}
			}
		} else {
			if(pX[30] >  -0.002474699984304607){
				if(pX[21] <=  2.3421499729156494){
					return 8;
				} else {
					return 3;
				}
			} else {
				return 8;
			}
		}
	}
} else {
	if(pX[46] <=  -1.4818499684333801){
		return 10;
	} else {
		return 1;
	}
}
}
unsigned int LLVMTProbSwapIfTree_predict6(float const pX[48]){
if(pX[23] <=  2.32545006275177){
	if(pX[9] >  -0.08543349988758564){
		if(pX[7] <=  -0.009439949877560139){
			if(pX[8] <=  -0.02540350053459406){
				if(pX[10] <=  -0.026740499772131443){
					return 1;
				} else {
					return 9;
				}
			} else {
				if(pX[13] <=  0.0011303999926894903){
					return 1;
				} else {
					return 1;
				}
			}
		} else {
			if(pX[11] <=  0.06778750196099281){
				if(pX[6] <=  0.017394999973475933){
					return 2;
				} else {
					return 7;
				}
			} else {
				if(pX[24] <=  0.019117500633001328){
					return 6;
				} else {
					return 6;
				}
			}
		}
	} else {
		if(pX[16] <=  0.014272350003011525){
			return 10;
		} else {
			return 1;
		}
	}
} else {
	if(pX[30] <=  -0.007579049794003367){
		if(pX[11] <=  0.005661499686539173){
			return 8;
		} else {
			return 3;
		}
	} else {
		if(pX[9] <=  0.0009480006992816925){
			return 8;
		} else {
			return 3;
		}
	}
}
}
unsigned int LLVMTProbSwapIfTree_predict7(float const pX[48]){
if(pX[11] >  -0.08733949810266495){
	if(pX[9] <=  0.06725050136446953){
		if(pX[15] <=  0.0029503999976441264){
			if(pX[8] <=  -0.010141999926418066){
				if(pX[11] <=  -0.02238400001078844){
					return 1;
				} else {
					return 9;
				}
			} else {
				if(pX[27] <=  -0.014222499914467335){
					return 5;
				} else {
					return 4;
				}
			}
		} else {
			if(pX[11] >  0.028413000516593456){
				if(pX[6] <=  0.013175500091165304){
					return 4;
				} else {
					return 3;
				}
			} else {
				if(pX[19] <=  2.3320000171661377){
					return 7;
				} else {
					return 8;
				}
			}
		}
	} else {
		if(pX[6] <=  0.022075500339269638){
			if(pX[10] >  0.07785600051283836){
				if(pX[43] <=  -1.5033000111579895){
					return 4;
				} else {
					return 6;
				}
			} else {
				return 3;
			}
		} else {
			return 6;
		}
	}
} else {
	if(pX[13] <=  0.01956764981150627){
		return 10;
	} else {
		return 1;
	}
}
}
unsigned int LLVMTProbSwapIfTree_predict8(float const pX[48]){
if(pX[6] >  -0.01079500000923872){
	if(pX[30] <=  0.0018629999831318855){
		if(pX[7] <=  0.015740000642836094){
			if(pX[21] >  1.3036499619483948){
				if(pX[18] <=  1.4719499945640564){
					return 5;
				} else {
					return 8;
				}
			} else {
				if(pX[9] <=  -0.00836830004118383){
					return 8;
				} else {
					return 2;
				}
			}
		} else {
			if(pX[11] >  0.06732000038027763){
				if(pX[18] <=  1.3433499932289124){
					return 6;
				} else {
					return 6;
				}
			} else {
				if(pX[15] <=  0.002254549995996058){
					return 0;
				} else {
					return 7;
				}
			}
		}
	} else {
		if(pX[9] <=  0.066297497600317){
			if(pX[7] <=  0.02904949989169836){
				if(pX[10] <=  0.03385400027036667){
					return 4;
				} else {
					return 3;
				}
			} else {
				if(pX[19] <=  2.337000012397766){
					return 7;
				} else {
					return 3;
				}
			}
		} else {
			if(pX[6] <=  0.024752000346779823){
				return 3;
			} else {
				return 6;
			}
		}
	}
} else {
	if(pX[32] >  -0.008675399702042341){
		if(pX[6] <=  -0.044511498883366585){
			if(pX[9] <=  -0.07411650009453297){
				if(pX[46] <=  -1.4696500301361084){
					return 10;
				} else {
					return 1;
				}
			} else {
				if(pX[28] <=  -0.7483550310134888){
					return 9;
				} else {
					return 1;
				}
			}
		} else {
			if(pX[32] <=  -0.0024868500186130404){
				if(pX[7] <=  -0.02532650064677){
					return 9;
				} else {
					return 1;
				}
			} else {
				if(pX[22] <=  1.3070000410079956){
					return 1;
				} else {
					return 1;
				}
			}
		}
	} else {
		if(pX[11] >  -0.1117509976029396){
			if(pX[20] <=  1.3721999526023865){
				if(pX[23] <=  1.2649499773979187){
					return 9;
				} else {
					return 9;
				}
			} else {
				if(pX[15] <=  0.0022617500508204103){
					return 1;
				} else {
					return 9;
				}
			}
		} else {
			return 10;
		}
	}
}
}
unsigned int LLVMTProbSwapIfTree_predict9(float const pX[48]){
if(pX[11] >  -0.08733949810266495){
	if(pX[10] <=  0.06813549995422363){
		if(pX[11] >  -0.006223900010809302){
			if(pX[8] <=  0.013896000105887651){
				if(pX[34] <=  0.0020441500237211585){
					return 2;
				} else {
					return 2;
				}
			} else {
				if(pX[11] <=  0.03377999924123287){
					return 7;
				} else {
					return 3;
				}
			}
		} else {
			if(pX[35] <=  -0.0096110999584198){
				if(pX[6] <=  -0.004293149919249117){
					return 1;
				} else {
					return 8;
				}
			} else {
				if(pX[11] <=  -0.020963500253856182){
					return 0;
				} else {
					return 9;
				}
			}
		}
	} else {
		if(pX[44] >  -1.510699987411499){
			if(pX[7] <=  0.021304999478161335){
				if(pX[22] <=  1.337049961090088){
					return 6;
				} else {
					return 3;
				}
			} else {
				if(pX[6] <=  0.021629500202834606){
					return 6;
				} else {
					return 6;
				}
			}
		} else {
			if(pX[18] <=  1.7017500400543213){
				return 9;
			} else {
				return 4;
			}
		}
	}
} else {
	if(pX[4] <=  -0.001245284962351434){
		return 1;
	} else {
		return 10;
	}
}
}
