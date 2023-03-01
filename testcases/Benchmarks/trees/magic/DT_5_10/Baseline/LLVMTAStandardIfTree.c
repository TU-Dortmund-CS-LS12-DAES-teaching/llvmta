#include "LLVMTAStandardIfTree.h"
int main() {
 short pX[10];
	unsigned int predCnt[2] ;
	predCnt[LLVMTAStandardIfTree_predict0(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict1(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict2(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict3(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict4(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict5(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict6(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict7(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict8(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict9(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTAStandardIfTree_predict0( short const pX[10]){
	if(pX[6] <= -43){
		if(pX[8] <= 9){
			if(pX[6] <= -88){
				if(pX[1] <= 19){
					return 0;
				} else {
					if(pX[1] <= 34){
						return 1;
					} else {
						return 1;
					}
				}
			} else {
				if(pX[8] <= 3){
					if(pX[2] <= 3){
						return 0;
					} else {
						return 1;
					}
				} else {
					if(pX[5] <= -110){
						return 0;
					} else {
						return 0;
					}
				}
			}
		} else {
			if(pX[1] <= 24){
				if(pX[8] <= 12){
					if(pX[5] <= -57){
						return 1;
					} else {
						return 0;
					}
				} else {
					if(pX[7] <= 3){
						return 1;
					} else {
						return 1;
					}
				}
			} else {
				if(pX[0] <= 81){
					if(pX[0] <= 69){
						return 1;
					} else {
						return 1;
					}
				} else {
					if(pX[0] <= 128){
						return 1;
					} else {
						return 1;
					}
				}
			}
		}
	} else {
		if(pX[8] <= 27){
			if(pX[8] <= 10){
				if(pX[9] <= 41){
					return 1;
				} else {
					if(pX[0] <= 116){
						return 0;
					} else {
						return 0;
					}
				}
			} else {
				if(pX[7] <= -24){
					if(pX[9] <= 187){
						return 1;
					} else {
						return 1;
					}
				} else {
					if(pX[9] <= 234){
						return 0;
					} else {
						return 0;
					}
				}
			}
		} else {
			if(pX[6] <= 31){
				if(pX[5] <= 25){
					if(pX[0] <= 31){
						return 0;
					} else {
						return 1;
					}
				} else {
					if(pX[1] <= 12){
						return 1;
					} else {
						return 1;
					}
				}
			} else {
				if(pX[1] <= 34){
					if(pX[9] <= 106){
						return 1;
					} else {
						return 1;
					}
				} else {
					if(pX[5] <= -36){
						return 1;
					} else {
						return 1;
					}
				}
			}
		}
	}
}
unsigned int LLVMTAStandardIfTree_predict1( short const pX[10]){
	if(pX[8] <= 25){
		if(pX[7] <= 32){
			if(pX[0] <= 107){
				if(pX[6] <= -39){
					if(pX[0] <= 93){
						return 0;
					} else {
						return 1;
					}
				} else {
					if(pX[8] <= 11){
						return 0;
					} else {
						return 0;
					}
				}
			} else {
				if(pX[9] <= 169){
					if(pX[9] <= 136){
						return 1;
					} else {
						return 1;
					}
				} else {
					if(pX[0] <= 119){
						return 0;
					} else {
						return 1;
					}
				}
			}
		} else {
			if(pX[8] <= 4){
				if(pX[5] <= -106){
					return 1;
				} else {
					if(pX[0] <= 79){
						return 1;
					} else {
						return 0;
					}
				}
			} else {
				if(pX[0] <= 101){
					if(pX[9] <= 295){
						return 0;
					} else {
						return 1;
					}
				} else {
					if(pX[6] <= 107){
						return 1;
					} else {
						return 1;
					}
				}
			}
		}
	} else {
		if(pX[6] <= -26){
			if(pX[0] <= 53){
				if(pX[1] <= 13){
					return 1;
				} else {
					if(pX[7] <= 18){
						return 1;
					} else {
						return 0;
					}
				}
			} else {
				if(pX[9] <= 140){
					if(pX[8] <= 27){
						return 0;
					} else {
						return 1;
					}
				} else {
					if(pX[6] <= -42){
						return 1;
					} else {
						return 1;
					}
				}
			}
		} else {
			if(pX[6] <= 22){
				if(pX[1] <= 9){
					if(pX[8] <= 52){
						return 0;
					} else {
						return 1;
					}
				} else {
					if(pX[9] <= 150){
						return 0;
					} else {
						return 0;
					}
				}
			} else {
				if(pX[6] <= 31){
					if(pX[1] <= 14){
						return 1;
					} else {
						return 0;
					}
				} else {
					if(pX[8] <= 40){
						return 1;
					} else {
						return 1;
					}
				}
			}
		}
	}
}
unsigned int LLVMTAStandardIfTree_predict2( short const pX[10]){
	if(pX[8] <= 21){
		if(pX[5] <= -125){
			if(pX[0] <= 115){
				if(pX[1] <= 32){
					if(pX[9] <= 314){
						return 0;
					} else {
						return 1;
					}
				} else {
					if(pX[2] <= 3){
						return 1;
					} else {
						return 0;
					}
				}
			} else {
				if(pX[1] <= 20){
					if(pX[6] <= -1){
						return 1;
					} else {
						return 0;
					}
				} else {
					if(pX[6] <= 95){
						return 1;
					} else {
						return 1;
					}
				}
			}
		} else {
			if(pX[6] <= -55){
				if(pX[1] <= 36){
					if(pX[0] <= 110){
						return 0;
					} else {
						return 1;
					}
				} else {
					if(pX[9] <= 270){
						return 1;
					} else {
						return 1;
					}
				}
			} else {
				if(pX[7] <= -29){
					if(pX[7] <= -58){
						return 1;
					} else {
						return 0;
					}
				} else {
					if(pX[1] <= 9){
						return 0;
					} else {
						return 0;
					}
				}
			}
		}
	} else {
		if(pX[6] <= -22){
			if(pX[9] <= 139){
				if(pX[1] <= 43){
					if(pX[9] <= 137){
						return 1;
					} else {
						return 0;
					}
				} else {
					if(pX[1] <= 160){
						return 1;
					} else {
						return 1;
					}
				}
			} else {
				if(pX[6] <= -25){
					if(pX[6] <= -32){
						return 1;
					} else {
						return 1;
					}
				} else {
					if(pX[0] <= 33){
						return 1;
					} else {
						return 1;
					}
				}
			}
		} else {
			if(pX[6] <= 27){
				if(pX[0] <= 30){
					if(pX[5] <= 25){
						return 0;
					} else {
						return 1;
					}
				} else {
					if(pX[9] <= 158){
						return 1;
					} else {
						return 1;
					}
				}
			} else {
				if(pX[0] <= 57){
					if(pX[6] <= 52){
						return 1;
					} else {
						return 0;
					}
				} else {
					if(pX[5] <= 35){
						return 1;
					} else {
						return 1;
					}
				}
			}
		}
	}
}
unsigned int LLVMTAStandardIfTree_predict3( short const pX[10]){
	if(pX[0] <= 105){
		if(pX[6] <= -33){
			if(pX[9] <= 151){
				if(pX[1] <= 21){
					if(pX[0] <= 86){
						return 1;
					} else {
						return 1;
					}
				} else {
					if(pX[6] <= -34){
						return 1;
					} else {
						return 0;
					}
				}
			} else {
				if(pX[1] <= 47){
					if(pX[6] <= -71){
						return 1;
					} else {
						return 0;
					}
				} else {
					if(pX[5] <= -38){
						return 1;
					} else {
						return 1;
					}
				}
			}
		} else {
			if(pX[8] <= 25){
				if(pX[8] <= 9){
					if(pX[0] <= 17){
						return 0;
					} else {
						return 0;
					}
				} else {
					if(pX[9] <= 257){
						return 0;
					} else {
						return 1;
					}
				}
			} else {
				if(pX[9] <= 214){
					if(pX[5] <= 25){
						return 0;
					} else {
						return 1;
					}
				} else {
					if(pX[0] <= 28){
						return 1;
					} else {
						return 1;
					}
				}
			}
		}
	} else {
		if(pX[8] <= 6){
			if(pX[0] <= 118){
				if(pX[7] <= -45){
					return 1;
				} else {
					if(pX[0] <= 116){
						return 0;
					} else {
						return 0;
					}
				}
			} else {
				if(pX[7] <= -26){
					if(pX[7] <= -29){
						return 1;
					} else {
						return 1;
					}
				} else {
					if(pX[6] <= 68){
						return 1;
					} else {
						return 0;
					}
				}
			}
		} else {
			if(pX[1] <= 12){
				if(pX[1] <= 10){
					if(pX[0] <= 170){
						return 1;
					} else {
						return 0;
					}
				} else {
					return 0;
				}
			} else {
				if(pX[2] <= 2){
					if(pX[6] <= 128){
						return 1;
					} else {
						return 1;
					}
				} else {
					if(pX[1] <= 35){
						return 1;
					} else {
						return 1;
					}
				}
			}
		}
	}
}
unsigned int LLVMTAStandardIfTree_predict4( short const pX[10]){
	if(pX[1] <= 40){
		if(pX[2] <= 2){
			if(pX[6] <= -37){
				if(pX[9] <= 176){
					if(pX[6] <= -181){
						return 0;
					} else {
						return 1;
					}
				} else {
					if(pX[5] <= -110){
						return 1;
					} else {
						return 0;
					}
				}
			} else {
				if(pX[8] <= 26){
					if(pX[8] <= 11){
						return 0;
					} else {
						return 0;
					}
				} else {
					if(pX[8] <= 47){
						return 0;
					} else {
						return 1;
					}
				}
			}
		} else {
			if(pX[6] <= -36){
				if(pX[9] <= 343){
					if(pX[8] <= 9){
						return 0;
					} else {
						return 1;
					}
				} else {
					if(pX[0] <= 91){
						return 0;
					} else {
						return 0;
					}
				}
			} else {
				if(pX[5] <= -117){
					if(pX[1] <= 25){
						return 0;
					} else {
						return 1;
					}
				} else {
					if(pX[8] <= 18){
						return 0;
					} else {
						return 1;
					}
				}
			}
		}
	} else {
		if(pX[6] <= -55){
			if(pX[0] <= 113){
				if(pX[0] <= 112){
					if(pX[8] <= 0){
						return 0;
					} else {
						return 1;
					}
				} else {
					if(pX[8] <= 47){
						return 1;
					} else {
						return 0;
					}
				}
			} else {
				return 1;
			}
		} else {
			if(pX[8] <= 9){
				if(pX[1] <= 66){
					if(pX[5] <= -147){
						return 1;
					} else {
						return 0;
					}
				} else {
					if(pX[9] <= 191){
						return 0;
					} else {
						return 1;
					}
				}
			} else {
				if(pX[8] <= 29){
					if(pX[7] <= -31){
						return 1;
					} else {
						return 1;
					}
				} else {
					if(pX[6] <= -31){
						return 1;
					} else {
						return 1;
					}
				}
			}
		}
	}
}
unsigned int LLVMTAStandardIfTree_predict5( short const pX[10]){
	if(pX[1] <= 40){
		if(pX[6] <= -37){
			if(pX[6] <= -69){
				if(pX[9] <= 255){
					if(pX[5] <= -16){
						return 1;
					} else {
						return 1;
					}
				} else {
					if(pX[5] <= -61){
						return 1;
					} else {
						return 1;
					}
				}
			} else {
				if(pX[8] <= 12){
					if(pX[8] <= 4){
						return 0;
					} else {
						return 0;
					}
				} else {
					if(pX[5] <= -162){
						return 0;
					} else {
						return 1;
					}
				}
			}
		} else {
			if(pX[2] <= 2){
				if(pX[1] <= 9){
					if(pX[1] <= 5){
						return 1;
					} else {
						return 0;
					}
				} else {
					if(pX[6] <= 96){
						return 0;
					} else {
						return 1;
					}
				}
			} else {
				if(pX[1] <= 15){
					if(pX[1] <= 13){
						return 1;
					} else {
						return 1;
					}
				} else {
					if(pX[0] <= 110){
						return 0;
					} else {
						return 1;
					}
				}
			}
		}
	} else {
		if(pX[6] <= -55){
			if(pX[6] <= -79){
				if(pX[5] <= 35){
					return 1;
				} else {
					if(pX[0] <= 115){
						return 0;
					} else {
						return 1;
					}
				}
			} else {
				if(pX[5] <= -74){
					return 1;
				} else {
					if(pX[2] <= 3){
						return 1;
					} else {
						return 1;
					}
				}
			}
		} else {
			if(pX[8] <= 9){
				if(pX[5] <= -130){
					if(pX[2] <= 3){
						return 1;
					} else {
						return 0;
					}
				} else {
					if(pX[9] <= 138){
						return 1;
					} else {
						return 0;
					}
				}
			} else {
				if(pX[9] <= 125){
					if(pX[5] <= -47){
						return 1;
					} else {
						return 1;
					}
				} else {
					if(pX[8] <= 26){
						return 1;
					} else {
						return 1;
					}
				}
			}
		}
	}
}
unsigned int LLVMTAStandardIfTree_predict6( short const pX[10]){
	if(pX[0] <= 109){
		if(pX[8] <= 20){
			if(pX[6] <= -71){
				if(pX[9] <= 352){
					if(pX[6] <= -86){
						return 1;
					} else {
						return 0;
					}
				} else {
					if(pX[1] <= 29){
						return 1;
					} else {
						return 1;
					}
				}
			} else {
				if(pX[6] <= -33){
					if(pX[0] <= 46){
						return 0;
					} else {
						return 0;
					}
				} else {
					if(pX[0] <= 18){
						return 0;
					} else {
						return 0;
					}
				}
			}
		} else {
			if(pX[6] <= -22){
				if(pX[9] <= 224){
					if(pX[9] <= 65){
						return 1;
					} else {
						return 1;
					}
				} else {
					if(pX[5] <= 6){
						return 1;
					} else {
						return 1;
					}
				}
			} else {
				if(pX[6] <= 21){
					if(pX[0] <= 30){
						return 0;
					} else {
						return 1;
					}
				} else {
					if(pX[8] <= 34){
						return 1;
					} else {
						return 1;
					}
				}
			}
		}
	} else {
		if(pX[8] <= 8){
			if(pX[0] <= 116){
				if(pX[9] <= 363){
					if(pX[6] <= 37){
						return 0;
					} else {
						return 0;
					}
				} else {
					return 1;
				}
			} else {
				if(pX[6] <= -88){
					if(pX[2] <= 2){
						return 1;
					} else {
						return 1;
					}
				} else {
					if(pX[1] <= 19){
						return 0;
					} else {
						return 1;
					}
				}
			}
		} else {
			if(pX[1] <= 32){
				if(pX[8] <= 15){
					if(pX[6] <= 51){
						return 1;
					} else {
						return 0;
					}
				} else {
					if(pX[6] <= -109){
						return 1;
					} else {
						return 1;
					}
				}
			} else {
				if(pX[0] <= 119){
					if(pX[7] <= -41){
						return 1;
					} else {
						return 1;
					}
				} else {
					if(pX[2] <= 3){
						return 1;
					} else {
						return 1;
					}
				}
			}
		}
	}
}
unsigned int LLVMTAStandardIfTree_predict7( short const pX[10]){
	if(pX[1] <= 40){
		if(pX[2] <= 2){
			if(pX[7] <= -19){
				if(pX[1] <= 25){
					if(pX[0] <= 145){
						return 0;
					} else {
						return 1;
					}
				} else {
					if(pX[8] <= 29){
						return 1;
					} else {
						return 1;
					}
				}
			} else {
				if(pX[1] <= 9){
					if(pX[8] <= 35){
						return 0;
					} else {
						return 1;
					}
				} else {
					if(pX[6] <= -64){
						return 1;
					} else {
						return 0;
					}
				}
			}
		} else {
			if(pX[5] <= -65){
				if(pX[8] <= 11){
					if(pX[0] <= 99){
						return 0;
					} else {
						return 0;
					}
				} else {
					if(pX[5] <= -93){
						return 1;
					} else {
						return 1;
					}
				}
			} else {
				if(pX[0] <= 106){
					if(pX[5] <= -1){
						return 0;
					} else {
						return 0;
					}
				} else {
					if(pX[0] <= 126){
						return 1;
					} else {
						return 1;
					}
				}
			}
		}
	} else {
		if(pX[6] <= 20){
			if(pX[0] <= 54){
				if(pX[8] <= 75){
					if(pX[8] <= 56){
						return 1;
					} else {
						return 1;
					}
				} else {
					return 0;
				}
			} else {
				if(pX[1] <= 50){
					if(pX[0] <= 127){
						return 1;
					} else {
						return 1;
					}
				} else {
					if(pX[9] <= 45){
						return 1;
					} else {
						return 1;
					}
				}
			}
		} else {
			if(pX[2] <= 3){
				if(pX[6] <= 87){
					if(pX[9] <= 255){
						return 1;
					} else {
						return 1;
					}
				} else {
					if(pX[7] <= 97){
						return 1;
					} else {
						return 1;
					}
				}
			} else {
				if(pX[7] <= -66){
					return 1;
				} else {
					if(pX[8] <= 13){
						return 0;
					} else {
						return 1;
					}
				}
			}
		}
	}
}
unsigned int LLVMTAStandardIfTree_predict8( short const pX[10]){
	if(pX[1] <= 40){
		if(pX[8] <= 23){
			if(pX[2] <= 2){
				if(pX[8] <= 11){
					if(pX[1] <= 28){
						return 0;
					} else {
						return 1;
					}
				} else {
					if(pX[0] <= 46){
						return 0;
					} else {
						return 1;
					}
				}
			} else {
				if(pX[6] <= -71){
					if(pX[0] <= 97){
						return 0;
					} else {
						return 1;
					}
				} else {
					if(pX[1] <= 13){
						return 1;
					} else {
						return 0;
					}
				}
			}
		} else {
			if(pX[0] <= 36){
				if(pX[0] <= 28){
					if(pX[5] <= 25){
						return 0;
					} else {
						return 1;
					}
				} else {
					if(pX[8] <= 45){
						return 0;
					} else {
						return 1;
					}
				}
			} else {
				if(pX[9] <= 148){
					if(pX[2] <= 2){
						return 1;
					} else {
						return 1;
					}
				} else {
					if(pX[0] <= 57){
						return 1;
					} else {
						return 1;
					}
				}
			}
		}
	} else {
		if(pX[2] <= 3){
			if(pX[8] <= 9){
				if(pX[6] <= -55){
					if(pX[2] <= 2){
						return 1;
					} else {
						return 1;
					}
				} else {
					if(pX[7] <= -28){
						return 1;
					} else {
						return 0;
					}
				}
			} else {
				if(pX[0] <= 93){
					if(pX[6] <= 50){
						return 1;
					} else {
						return 1;
					}
				} else {
					if(pX[1] <= 50){
						return 1;
					} else {
						return 1;
					}
				}
			}
		} else {
			if(pX[6] <= 65){
				if(pX[7] <= 19){
					return 1;
				} else {
					if(pX[8] <= 6){
						return 0;
					} else {
						return 1;
					}
				}
			} else {
				if(pX[0] <= 118){
					if(pX[5] <= 72){
						return 0;
					} else {
						return 0;
					}
				} else {
					if(pX[7] <= 36){
						return 1;
					} else {
						return 1;
					}
				}
			}
		}
	}
}
unsigned int LLVMTAStandardIfTree_predict9( short const pX[10]){
	if(pX[8] <= 25){
		if(pX[6] <= -64){
			if(pX[8] <= 10){
				if(pX[6] <= -88){
					if(pX[1] <= 31){
						return 0;
					} else {
						return 1;
					}
				} else {
					if(pX[9] <= 221){
						return 1;
					} else {
						return 0;
					}
				}
			} else {
				if(pX[5] <= 22){
					return 1;
				} else {
					if(pX[1] <= 22){
						return 0;
					} else {
						return 1;
					}
				}
			}
		} else {
			if(pX[8] <= 9){
				if(pX[1] <= 11){
					if(pX[6] <= 14){
						return 0;
					} else {
						return 0;
					}
				} else {
					if(pX[5] <= -157){
						return 1;
					} else {
						return 0;
					}
				}
			} else {
				if(pX[9] <= 254){
					if(pX[0] <= 101){
						return 0;
					} else {
						return 1;
					}
				} else {
					if(pX[8] <= 17){
						return 0;
					} else {
						return 1;
					}
				}
			}
		}
	} else {
		if(pX[2] <= 2){
			if(pX[6] <= 22){
				if(pX[8] <= 46){
					if(pX[9] <= 259){
						return 0;
					} else {
						return 1;
					}
				} else {
					if(pX[9] <= 216){
						return 0;
					} else {
						return 1;
					}
				}
			} else {
				if(pX[1] <= 13){
					if(pX[0] <= 44){
						return 1;
					} else {
						return 1;
					}
				} else {
					if(pX[0] <= 72){
						return 1;
					} else {
						return 1;
					}
				}
			}
		} else {
			if(pX[1] <= 38){
				if(pX[5] <= -19){
					if(pX[9] <= 68){
						return 0;
					} else {
						return 1;
					}
				} else {
					if(pX[0] <= 46){
						return 0;
					} else {
						return 1;
					}
				}
			} else {
				if(pX[0] <= 93){
					if(pX[5] <= 51){
						return 1;
					} else {
						return 1;
					}
				} else {
					if(pX[2] <= 3){
						return 1;
					} else {
						return 1;
					}
				}
			}
		}
	}
}
