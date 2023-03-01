#include "LLVMTAWCETSwapTree.h"
int main() {
 char pX[16];
	unsigned int predCnt[26] ;
	predCnt[LLVMTAWCETSwapTree_predict0(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict1(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict2(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict3(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict4(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict5(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict6(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict7(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict8(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict9(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTAWCETSwapTree_predict0( char const pX[16]){
	if(pX[12] <=  6){
		if(pX[14] <=  2){
			if(pX[13] <=  7){
				if(pX[9] <=  10){
					if(pX[8] <=  5){
						return 0;
					} else {
						return 11;
					}
				} else {
					if(pX[0] <=  5){
						return 9;
					} else {
						return 9;
					}
				}
			} else {
				if(pX[12] <=  3){
					if(pX[2] <=  0){
						return 8;
					} else {
						return 21;
					}
				} else {
					if(pX[13] <=  9){
						return 13;
					} else {
						return 22;
					}
				}
			}
		} else {
			if(pX[8] <=  7){
				if(pX[8] <=  4){
					if(pX[12] <=  1){
						return 15;
					} else {
						return 16;
					}
				} else {
					if(pX[11] <=  7){
						return 1;
					} else {
						return 6;
					}
				}
			} else {
				if(pX[15] <=  8){
					if(pX[10] <=  3){
						return 11;
					} else {
						return 25;
					}
				} else {
					if(pX[5] <=  6){
						return 2;
					} else {
						return 4;
					}
				}
			}
		}
	} else {
		if(pX[13] <=  8){
			if(pX[6] <=  7){
				if(pX[1] <=  7){
					if(pX[3] <=  8){
						return 12;
					} else {
						return 15;
					}
				} else {
					if(pX[12] <=  7){
						return 12;
					} else {
						return 12;
					}
				}
			} else {
				if(pX[15] <=  9){
					if(pX[10] <=  6){
						return 12;
					} else {
						return 13;
					}
				} else {
					if(pX[14] <=  5){
						return 22;
					} else {
						return 10;
					}
				}
			}
		} else {
			if(pX[4] <=  5){
				if(pX[11] <=  5){
					if(pX[6] <=  8){
						return 13;
					} else {
						return 21;
					}
				} else {
					if(pX[14] <=  4){
						return 22;
					} else {
						return 7;
					}
				}
			} else {
				if(pX[14] <=  4){
					if(pX[11] <=  9){
						return 22;
					} else {
						return 12;
					}
				} else {
					if(pX[8] <=  3){
						return 6;
					} else {
						return 13;
					}
				}
			}
		}
	}
}
unsigned int LLVMTAWCETSwapTree_predict1( char const pX[16]){
	if(pX[6] <=  4){
		if(pX[5] <=  5){
			if(pX[12] >  1){
				if(pX[10] <=  5){
					if(pX[8] <=  2){
						return 0;
					} else {
						return 12;
					}
				} else {
					return 20;
				}
			} else {
				return 11;
			}
		} else {
			if(pX[11] <=  9){
				if(pX[12] <=  2){
					if(pX[6] <=  3){
						return 0;
					} else {
						return 0;
					}
				} else {
					if(pX[10] <=  8){
						return 0;
					} else {
						return 20;
					}
				}
			} else {
				if(pX[2] <=  4){
					if(pX[7] <=  3){
						return 11;
					} else {
						return 9;
					}
				} else {
					if(pX[6] <=  3){
						return 0;
					} else {
						return 11;
					}
				}
			}
		}
	} else {
		if(pX[6] <=  9){
			if(pX[12] <=  1){
				if(pX[11] <=  10){
					if(pX[10] <=  5){
						return 9;
					} else {
						return 8;
					}
				} else {
					if(pX[10] <=  7){
						return 2;
					} else {
						return 2;
					}
				}
			} else {
				if(pX[15] <=  8){
					if(pX[8] <=  5){
						return 13;
					} else {
						return 3;
					}
				} else {
					if(pX[12] <=  2){
						return 6;
					} else {
						return 10;
					}
				}
			}
		} else {
			if(pX[11] <=  4){
				if(pX[10] <=  8){
					if(pX[14] <=  2){
						return 5;
					} else {
						return 15;
					}
				} else {
					if(pX[15] <=  5){
						return 19;
					} else {
						return 15;
					}
				}
			} else {
				if(pX[8] <=  4){
					if(pX[14] <=  0){
						return 24;
					} else {
						return 21;
					}
				} else {
					if(pX[13] <=  10){
						return 5;
					} else {
						return 24;
					}
				}
			}
		}
	}
}
unsigned int LLVMTAWCETSwapTree_predict2( char const pX[16]){
	if(pX[13] <=  9){
		if(pX[6] <=  4){
			if(pX[8] <=  3){
				if(pX[10] <=  3){
					if(pX[13] <=  4){
						return 12;
					} else {
						return 0;
					}
				} else {
					if(pX[2] <=  4){
						return 9;
					} else {
						return 0;
					}
				}
			} else {
				if(pX[10] <=  2){
					if(pX[8] <=  5){
						return 9;
					} else {
						return 11;
					}
				} else {
					if(pX[9] <=  12){
						return 16;
					} else {
						return 9;
					}
				}
			}
		} else {
			if(pX[12] <=  1){
				if(pX[6] <=  9){
					if(pX[14] <=  4){
						return 8;
					} else {
						return 25;
					}
				} else {
					if(pX[14] <=  0){
						return 19;
					} else {
						return 5;
					}
				}
			} else {
				if(pX[7] <=  4){
					if(pX[8] <=  7){
						return 10;
					} else {
						return 23;
					}
				} else {
					if(pX[13] <=  6){
						return 12;
					} else {
						return 14;
					}
				}
			}
		}
	} else {
		if(pX[10] <=  9){
			if(pX[9] <=  9){
				if(pX[14] <=  2){
					if(pX[12] <=  4){
						return 20;
					} else {
						return 22;
					}
				} else {
					if(pX[7] <=  8){
						return 15;
					} else {
						return 15;
					}
				}
			} else {
				if(pX[8] <=  4){
					if(pX[7] <=  2){
						return 5;
					} else {
						return 15;
					}
				} else {
					if(pX[10] <=  8){
						return 5;
					} else {
						return 19;
					}
				}
			}
		} else {
			if(pX[7] <=  1){
				if(pX[12] <=  4){
					if(pX[12] <=  0){
						return 24;
					} else {
						return 24;
					}
				} else {
					if(pX[6] <=  9){
						return 22;
					} else {
						return 21;
					}
				}
			} else {
				if(pX[13] <=  10){
					if(pX[15] <=  6){
						return 24;
					} else {
						return 21;
					}
				} else {
					if(pX[10] <=  11){
						return 21;
					} else {
						return 24;
					}
				}
			}
		}
	}
}
unsigned int LLVMTAWCETSwapTree_predict3( char const pX[16]){
	if(pX[13] <=  9){
		if(pX[14] <=  2){
			if(pX[13] <=  7){
				if(pX[6] <=  5){
					if(pX[5] <=  7){
						return 11;
					} else {
						return 9;
					}
				} else {
					if(pX[12] <=  4){
						return 9;
					} else {
						return 12;
					}
				}
			} else {
				if(pX[2] >  0){
					if(pX[7] <=  1){
						return 8;
					} else {
						return 13;
					}
				} else {
					return 8;
				}
			}
		} else {
			if(pX[7] <=  4){
				if(pX[6] <=  3){
					if(pX[1] <=  11){
						return 0;
					} else {
						return 18;
					}
				} else {
					if(pX[10] <=  5){
						return 17;
					} else {
						return 23;
					}
				}
			} else {
				if(pX[11] <=  8){
					if(pX[8] <=  5){
						return 14;
					} else {
						return 3;
					}
				} else {
					if(pX[14] <=  5){
						return 6;
					} else {
						return 4;
					}
				}
			}
		}
	} else {
		if(pX[10] <=  9){
			if(pX[10] <=  6){
				if(pX[6] <=  8){
					if(pX[12] <=  9){
						return 5;
					} else {
						return 22;
					}
				} else {
					if(pX[14] <=  2){
						return 13;
					} else {
						return 15;
					}
				}
			} else {
				if(pX[8] <=  3){
					if(pX[10] <=  8){
						return 22;
					} else {
						return 22;
					}
				} else {
					if(pX[6] <=  10){
						return 2;
					} else {
						return 19;
					}
				}
			}
		} else {
			if(pX[12] <=  1){
				if(pX[10] <=  10){
					if(pX[6] <=  10){
						return 24;
					} else {
						return 19;
					}
				} else {
					if(pX[6] <=  11){
						return 24;
					} else {
						return 19;
					}
				}
			} else {
				if(pX[6] <=  10){
					if(pX[7] <=  3){
						return 24;
					} else {
						return 21;
					}
				} else {
					if(pX[5] <=  5){
						return 21;
					} else {
						return 21;
					}
				}
			}
		}
	}
}
unsigned int LLVMTAWCETSwapTree_predict4( char const pX[16]){
	if(pX[12] <=  6){
		if(pX[14] <=  2){
			if(pX[8] <=  3){
				if(pX[10] <=  2){
					if(pX[12] <=  4){
						return 0;
					} else {
						return 12;
					}
				} else {
					if(pX[8] <=  2){
						return 13;
					} else {
						return 21;
					}
				}
			} else {
				if(pX[10] <=  2){
					if(pX[8] <=  5){
						return 9;
					} else {
						return 11;
					}
				} else {
					if(pX[13] <=  7){
						return 9;
					} else {
						return 20;
					}
				}
			}
		} else {
			if(pX[8] <=  7){
				if(pX[6] <=  8){
					if(pX[15] <=  8){
						return 14;
					} else {
						return 1;
					}
				} else {
					if(pX[13] <=  8){
						return 17;
					} else {
						return 15;
					}
				}
			} else {
				if(pX[11] <=  10){
					if(pX[11] <=  6){
						return 3;
					} else {
						return 25;
					}
				} else {
					if(pX[13] <=  8){
						return 4;
					} else {
						return 2;
					}
				}
			}
		}
	} else {
		if(pX[6] <=  7){
			if(pX[7] <=  8){
				if(pX[14] <=  4){
					if(pX[9] <=  8){
						return 12;
					} else {
						return 12;
					}
				} else {
					if(pX[13] <=  8){
						return 10;
					} else {
						return 17;
					}
				}
			} else {
				if(pX[13] <=  6){
					return 12;
				} else {
					return 13;
				}
			}
		} else {
			if(pX[10] <=  7){
				if(pX[12] <=  9){
					if(pX[15] <=  6){
						return 22;
					} else {
						return 12;
					}
				} else {
					if(pX[11] <=  6){
						return 22;
					} else {
						return 12;
					}
				}
			} else {
				if(pX[11] <=  9){
					if(pX[8] <=  3){
						return 22;
					} else {
						return 22;
					}
				} else {
					if(pX[7] <=  3){
						return 0;
					} else {
						return 12;
					}
				}
			}
		}
	}
}
unsigned int LLVMTAWCETSwapTree_predict5( char const pX[16]){
	if(pX[12] <=  6){
		if(pX[6] <=  9){
			if(pX[12] <=  1){
				if(pX[5] <=  8){
					if(pX[14] <=  4){
						return 8;
					} else {
						return 25;
					}
				} else {
					if(pX[14] <=  2){
						return 9;
					} else {
						return 18;
					}
				}
			} else {
				if(pX[13] <=  7){
					if(pX[10] <=  2){
						return 0;
					} else {
						return 17;
					}
				} else {
					if(pX[11] <=  7){
						return 3;
					} else {
						return 20;
					}
				}
			}
		} else {
			if(pX[10] <=  8){
				if(pX[14] <=  4){
					if(pX[14] <=  2){
						return 5;
					} else {
						return 15;
					}
				} else {
					if(pX[11] <=  7){
						return 5;
					} else {
						return 17;
					}
				}
			} else {
				if(pX[9] <=  9){
					if(pX[12] <=  1){
						return 24;
					} else {
						return 21;
					}
				} else {
					if(pX[12] <=  0){
						return 5;
					} else {
						return 19;
					}
				}
			}
		}
	} else {
		if(pX[6] <=  7){
			if(pX[14] <=  3){
				if(pX[13] <=  8){
					if(pX[9] <=  5){
						return 20;
					} else {
						return 12;
					}
				} else {
					if(pX[8] <=  4){
						return 22;
					} else {
						return 13;
					}
				}
			} else {
				if(pX[15] <=  6){
					if(pX[14] <=  5){
						return 12;
					} else {
						return 17;
					}
				} else {
					if(pX[7] <=  3){
						return 10;
					} else {
						return 22;
					}
				}
			}
		} else {
			if(pX[14] <=  4){
				if(pX[8] <=  3){
					if(pX[4] <=  9){
						return 22;
					} else {
						return 12;
					}
				} else {
					if(pX[0] <=  9){
						return 13;
					} else {
						return 12;
					}
				}
			} else {
				if(pX[10] <=  5){
					if(pX[14] <=  5){
						return 12;
					} else {
						return 17;
					}
				} else {
					if(pX[7] <=  5){
						return 7;
					} else {
						return 12;
					}
				}
			}
		}
	}
}
unsigned int LLVMTAWCETSwapTree_predict6( char const pX[16]){
	if(pX[2] >  0){
		if(pX[12] <=  6){
			if(pX[6] <=  9){
				if(pX[14] <=  2){
					if(pX[9] <=  10){
						return 20;
					} else {
						return 9;
					}
				} else {
					if(pX[14] <=  4){
						return 3;
					} else {
						return 18;
					}
				}
			} else {
				if(pX[11] <=  4){
					if(pX[11] <=  3){
						return 15;
					} else {
						return 15;
					}
				} else {
					if(pX[9] <=  9){
						return 24;
					} else {
						return 5;
					}
				}
			}
		} else {
			if(pX[5] <=  5){
				if(pX[6] <=  7){
					if(pX[11] <=  9){
						return 12;
					} else {
						return 12;
					}
				} else {
					if(pX[8] <=  4){
						return 22;
					} else {
						return 12;
					}
				}
			} else {
				if(pX[4] <=  4){
					if(pX[14] <=  1){
						return 12;
					} else {
						return 12;
					}
				} else {
					if(pX[14] <=  2){
						return 12;
					} else {
						return 12;
					}
				}
			}
		}
	} else {
		return 8;
	}
}
unsigned int LLVMTAWCETSwapTree_predict7( char const pX[16]){
	if(pX[10] <=  2){
		if(pX[9] <=  3){
			if(pX[2] >  7){
				if(pX[15] <=  7){
					if(pX[5] <=  4){
						return 13;
					} else {
						return 0;
					}
				} else {
					return 12;
				}
			} else {
				return 11;
			}
		} else {
			if(pX[8] <=  3){
				if(pX[0] <=  6){
					if(pX[12] <=  5){
						return 0;
					} else {
						return 12;
					}
				} else {
					if(pX[4] <=  4){
						return 13;
					} else {
						return 12;
					}
				}
			} else {
				if(pX[9] <=  9){
					if(pX[1] <=  11){
						return 11;
					} else {
						return 18;
					}
				} else {
					if(pX[14] <=  2){
						return 9;
					} else {
						return 17;
					}
				}
			}
		}
	} else {
		if(pX[11] <=  4){
			if(pX[14] <=  2){
				if(pX[9] <=  12){
					if(pX[5] <=  6){
						return 19;
					} else {
						return 15;
					}
				} else {
					if(pX[15] <=  8){
						return 5;
					} else {
						return 15;
					}
				}
			} else {
				if(pX[13] <=  8){
					if(pX[8] <=  4){
						return 6;
					} else {
						return 3;
					}
				} else {
					if(pX[7] <=  2){
						return 19;
					} else {
						return 15;
					}
				}
			}
		} else {
			if(pX[12] <=  6){
				if(pX[6] <=  9){
					if(pX[11] <=  8){
						return 1;
					} else {
						return 2;
					}
				} else {
					if(pX[10] <=  10){
						return 5;
					} else {
						return 24;
					}
				}
			} else {
				if(pX[7] <=  6){
					if(pX[5] <=  5){
						return 22;
					} else {
						return 12;
					}
				} else {
					if(pX[13] <=  6){
						return 12;
					} else {
						return 12;
					}
				}
			}
		}
	}
}
unsigned int LLVMTAWCETSwapTree_predict8( char const pX[16]){
	if(pX[12] <=  6){
		if(pX[7] <=  4){
			if(pX[6] <=  5){
				if(pX[14] <=  4){
					if(pX[12] <=  1){
						return 11;
					} else {
						return 0;
					}
				} else {
					if(pX[8] <=  5){
						return 11;
					} else {
						return 16;
					}
				}
			} else {
				if(pX[14] <=  2){
					if(pX[10] <=  8){
						return 8;
					} else {
						return 21;
					}
				} else {
					if(pX[14] <=  4){
						return 23;
					} else {
						return 25;
					}
				}
			}
		} else {
			if(pX[11] <=  7){
				if(pX[12] <=  1){
					if(pX[8] <=  5){
						return 15;
					} else {
						return 11;
					}
				} else {
					if(pX[6] <=  8){
						return 3;
					} else {
						return 15;
					}
				}
			} else {
				if(pX[10] <=  8){
					if(pX[15] <=  8){
						return 14;
					} else {
						return 6;
					}
				} else {
					if(pX[11] <=  10){
						return 20;
					} else {
						return 2;
					}
				}
			}
		}
	} else {
		if(pX[13] <=  8){
			if(pX[15] <=  9){
				if(pX[4] <=  4){
					if(pX[0] <=  8){
						return 12;
					} else {
						return 13;
					}
				} else {
					if(pX[13] <=  6){
						return 12;
					} else {
						return 12;
					}
				}
			} else {
				if(pX[14] <=  3){
					if(pX[5] <=  7){
						return 12;
					} else {
						return 13;
					}
				} else {
					if(pX[7] <=  3){
						return 10;
					} else {
						return 6;
					}
				}
			}
		} else {
			if(pX[7] <=  3){
				if(pX[6] <=  8){
					if(pX[10] <=  8){
						return 13;
					} else {
						return 22;
					}
				} else {
					if(pX[14] <=  5){
						return 22;
					} else {
						return 21;
					}
				}
			} else {
				if(pX[10] <=  7){
					if(pX[11] <=  8){
						return 22;
					} else {
						return 12;
					}
				} else {
					if(pX[11] <=  8){
						return 22;
					} else {
						return 7;
					}
				}
			}
		}
	}
}
unsigned int LLVMTAWCETSwapTree_predict9( char const pX[16]){
	if(pX[13] <=  9){
		if(pX[13] <=  7){
			if(pX[10] <=  2){
				if(pX[5] <=  5){
					if(pX[14] <=  3){
						return 11;
					} else {
						return 0;
					}
				} else {
					if(pX[11] <=  9){
						return 0;
					} else {
						return 11;
					}
				}
			} else {
				if(pX[8] <=  2){
					if(pX[10] <=  7){
						return 0;
					} else {
						return 12;
					}
				} else {
					if(pX[14] <=  1){
						return 9;
					} else {
						return 17;
					}
				}
			}
		} else {
			if(pX[14] <=  2){
				if(pX[12] <=  3){
					if(pX[9] <=  2){
						return 11;
					} else {
						return 8;
					}
				} else {
					if(pX[12] <=  6){
						return 13;
					} else {
						return 22;
					}
				}
			} else {
				if(pX[14] <=  4){
					if(pX[5] <=  6){
						return 2;
					} else {
						return 14;
					}
				} else {
					if(pX[10] <=  6){
						return 1;
					} else {
						return 16;
					}
				}
			}
		}
	} else {
		if(pX[10] <=  9){
			if(pX[12] <=  5){
				if(pX[6] <=  8){
					if(pX[14] <=  2){
						return 20;
					} else {
						return 2;
					}
				} else {
					if(pX[14] <=  2){
						return 19;
					} else {
						return 15;
					}
				}
			} else {
				if(pX[8] <=  3){
					if(pX[14] <=  4){
						return 22;
					} else {
						return 6;
					}
				} else {
					if(pX[7] <=  3){
						return 11;
					} else {
						return 13;
					}
				}
			}
		} else {
			if(pX[6] <=  10){
				if(pX[12] <=  2){
					if(pX[3] <=  1){
						return 24;
					} else {
						return 24;
					}
				} else {
					if(pX[0] <=  4){
						return 21;
					} else {
						return 22;
					}
				}
			} else {
				if(pX[8] <=  4){
					if(pX[14] <=  0){
						return 24;
					} else {
						return 21;
					}
				} else {
					if(pX[11] <=  6){
						return 24;
					} else {
						return 19;
					}
				}
			}
		}
	}
}
