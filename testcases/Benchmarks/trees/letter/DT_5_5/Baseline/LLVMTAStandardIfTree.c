#include "LLVMTAStandardIfTree.h"
int main() {
 char pX[16];
	unsigned int predCnt[26] ;
	predCnt[LLVMTAStandardIfTree_predict0(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict1(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict2(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict3(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict4(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTAStandardIfTree_predict0( char const pX[16]){
	if(pX[6] <= 9){
		if(pX[6] <= 4){
			if(pX[5] <= 6){
				if(pX[9] <= 3){
					return 11;
				} else {
					if(pX[10] <= 2){
						return 11;
					} else {
						return 16;
					}
				}
			} else {
				if(pX[10] <= 2){
					if(pX[7] <= 1){
						return 11;
					} else {
						return 0;
					}
				} else {
					if(pX[14] <= 1){
						return 9;
					} else {
						return 16;
					}
				}
			}
		} else {
			if(pX[11] <= 8){
				if(pX[2] <= 0){
					return 8;
				} else {
					if(pX[8] <= 8){
						return 3;
					} else {
						return 25;
					}
				}
			} else {
				if(pX[11] <= 11){
					if(pX[15] <= 8){
						return 20;
					} else {
						return 6;
					}
				} else {
					if(pX[12] <= 0){
						return 4;
					} else {
						return 2;
					}
				}
			}
		}
	} else {
		if(pX[8] <= 4){
			if(pX[7] <= 3){
				if(pX[2] <= 5){
					if(pX[10] <= 11){
						return 21;
					} else {
						return 24;
					}
				} else {
					if(pX[12] <= 5){
						return 21;
					} else {
						return 22;
					}
				}
			} else {
				if(pX[11] <= 5){
					if(pX[13] <= 8){
						return 5;
					} else {
						return 15;
					}
				} else {
					if(pX[7] <= 6){
						return 21;
					} else {
						return 17;
					}
				}
			}
		} else {
			if(pX[13] <= 10){
				if(pX[13] <= 8){
					if(pX[9] <= 9){
						return 19;
					} else {
						return 5;
					}
				} else {
					if(pX[7] <= 2){
						return 5;
					} else {
						return 5;
					}
				}
			} else {
				if(pX[12] <= 1){
					if(pX[6] <= 10){
						return 24;
					} else {
						return 19;
					}
				} else {
					if(pX[1] <= 11){
						return 19;
					} else {
						return 21;
					}
				}
			}
		}
	}
}
unsigned int LLVMTAStandardIfTree_predict1( char const pX[16]){
	if(pX[11] <= 4){
		if(pX[7] <= 3){
			if(pX[15] <= 5){
				if(pX[6] <= 9){
					if(pX[1] <= 8){
						return 24;
					} else {
						return 8;
					}
				} else {
					if(pX[10] <= 7){
						return 5;
					} else {
						return 19;
					}
				}
			} else {
				if(pX[10] <= 3){
					return 13;
				} else {
					if(pX[10] <= 5){
						return 15;
					} else {
						return 5;
					}
				}
			}
		} else {
			if(pX[15] <= 5){
				if(pX[12] <= 1){
					if(pX[13] <= 7){
						return 11;
					} else {
						return 5;
					}
				} else {
					if(pX[13] <= 10){
						return 5;
					} else {
						return 19;
					}
				}
			} else {
				if(pX[6] <= 8){
					if(pX[6] <= 4){
						return 11;
					} else {
						return 3;
					}
				} else {
					if(pX[10] <= 8){
						return 15;
					} else {
						return 5;
					}
				}
			}
		}
	} else {
		if(pX[10] <= 2){
			if(pX[0] <= 5){
				if(pX[8] <= 3){
					if(pX[7] <= 4){
						return 0;
					} else {
						return 12;
					}
				} else {
					if(pX[12] <= 1){
						return 11;
					} else {
						return 17;
					}
				}
			} else {
				if(pX[4] <= 4){
					if(pX[12] <= 3){
						return 18;
					} else {
						return 3;
					}
				} else {
					if(pX[12] <= 7){
						return 17;
					} else {
						return 12;
					}
				}
			}
		} else {
			if(pX[13] <= 9){
				if(pX[11] <= 8){
					if(pX[12] <= 1){
						return 8;
					} else {
						return 3;
					}
				} else {
					if(pX[14] <= 1){
						return 9;
					} else {
						return 4;
					}
				}
			} else {
				if(pX[8] <= 4){
					if(pX[14] <= 3){
						return 21;
					} else {
						return 24;
					}
				} else {
					if(pX[6] <= 10){
						return 24;
					} else {
						return 19;
					}
				}
			}
		}
	}
}
unsigned int LLVMTAStandardIfTree_predict2( char const pX[16]){
	if(pX[11] <= 4){
		if(pX[8] <= 4){
			if(pX[5] <= 2){
				if(pX[10] <= 5){
					return 11;
				} else {
					return 5;
				}
			} else {
				if(pX[6] <= 7){
					if(pX[4] <= 4){
						return 6;
					} else {
						return 8;
					}
				} else {
					if(pX[9] <= 12){
						return 15;
					} else {
						return 15;
					}
				}
			}
		} else {
			if(pX[10] <= 8){
				if(pX[9] <= 10){
					if(pX[10] <= 6){
						return 3;
					} else {
						return 15;
					}
				} else {
					if(pX[7] <= 3){
						return 5;
					} else {
						return 15;
					}
				}
			} else {
				if(pX[0] <= 8){
					if(pX[6] <= 10){
						return 19;
					} else {
						return 19;
					}
				} else {
					if(pX[15] <= 6){
						return 24;
					} else {
						return 21;
					}
				}
			}
		}
	} else {
		if(pX[6] <= 4){
			if(pX[8] <= 3){
				if(pX[10] <= 3){
					if(pX[12] <= 5){
						return 0;
					} else {
						return 12;
					}
				} else {
					if(pX[12] <= 1){
						return 9;
					} else {
						return 0;
					}
				}
			} else {
				if(pX[7] <= 6){
					if(pX[12] <= 2){
						return 11;
					} else {
						return 16;
					}
				} else {
					if(pX[10] <= 10){
						return 9;
					} else {
						return 20;
					}
				}
			}
		} else {
			if(pX[10] <= 9){
				if(pX[6] <= 9){
					if(pX[12] <= 1){
						return 8;
					} else {
						return 14;
					}
				} else {
					if(pX[12] <= 4){
						return 5;
					} else {
						return 22;
					}
				}
			} else {
				if(pX[12] <= 1){
					if(pX[5] <= 1){
						return 5;
					} else {
						return 24;
					}
				} else {
					if(pX[7] <= 4){
						return 21;
					} else {
						return 20;
					}
				}
			}
		}
	}
}
unsigned int LLVMTAStandardIfTree_predict3( char const pX[16]){
	if(pX[6] <= 9){
		if(pX[6] <= 4){
			if(pX[8] <= 3){
				if(pX[11] <= 10){
					if(pX[12] <= 5){
						return 0;
					} else {
						return 12;
					}
				} else {
					if(pX[0] <= 4){
						return 9;
					} else {
						return 0;
					}
				}
			} else {
				if(pX[8] <= 5){
					if(pX[0] <= 3){
						return 9;
					} else {
						return 18;
					}
				} else {
					if(pX[0] <= 5){
						return 11;
					} else {
						return 16;
					}
				}
			}
		} else {
			if(pX[14] <= 2){
				if(pX[12] <= 3){
					if(pX[8] <= 3){
						return 21;
					} else {
						return 8;
					}
				} else {
					if(pX[13] <= 7){
						return 12;
					} else {
						return 13;
					}
				}
			} else {
				if(pX[14] <= 4){
					if(pX[12] <= 1){
						return 2;
					} else {
						return 23;
					}
				} else {
					if(pX[5] <= 3){
						return 4;
					} else {
						return 1;
					}
				}
			}
		}
	} else {
		if(pX[9] <= 9){
			if(pX[14] <= 3){
				if(pX[12] <= 4){
					if(pX[11] <= 6){
						return 15;
					} else {
						return 19;
					}
				} else {
					if(pX[7] <= 4){
						return 22;
					} else {
						return 12;
					}
				}
			} else {
				if(pX[10] <= 5){
					if(pX[15] <= 8){
						return 15;
					} else {
						return 17;
					}
				} else {
					if(pX[15] <= 6){
						return 24;
					} else {
						return 16;
					}
				}
			}
		} else {
			if(pX[13] <= 10){
				if(pX[8] <= 6){
					if(pX[11] <= 4){
						return 15;
					} else {
						return 5;
					}
				} else {
					if(pX[10] <= 9){
						return 19;
					} else {
						return 24;
					}
				}
			} else {
				if(pX[10] <= 9){
					if(pX[15] <= 5){
						return 19;
					} else {
						return 22;
					}
				} else {
					if(pX[11] <= 7){
						return 24;
					} else {
						return 22;
					}
				}
			}
		}
	}
}
unsigned int LLVMTAStandardIfTree_predict4( char const pX[16]){
	if(pX[8] <= 3){
		if(pX[11] <= 4){
			if(pX[13] <= 8){
				if(pX[10] <= 7){
					if(pX[2] <= 5){
						return 9;
					} else {
						return 6;
					}
				} else {
					return 5;
				}
			} else {
				if(pX[12] <= 2){
					return 15;
				} else {
					if(pX[4] <= 2){
						return 21;
					} else {
						return 15;
					}
				}
			}
		} else {
			if(pX[15] <= 9){
				if(pX[13] <= 7){
					if(pX[10] <= 3){
						return 0;
					} else {
						return 12;
					}
				} else {
					if(pX[14] <= 2){
						return 22;
					} else {
						return 16;
					}
				}
			} else {
				if(pX[12] <= 2){
					if(pX[6] <= 8){
						return 16;
					} else {
						return 17;
					}
				} else {
					if(pX[5] <= 4){
						return 10;
					} else {
						return 16;
					}
				}
			}
		}
	} else {
		if(pX[10] <= 2){
			if(pX[8] <= 5){
				if(pX[2] <= 4){
					if(pX[5] <= 12){
						return 11;
					} else {
						return 9;
					}
				} else {
					if(pX[14] <= 1){
						return 13;
					} else {
						return 0;
					}
				}
			} else {
				if(pX[9] <= 9){
					if(pX[12] <= 3){
						return 11;
					} else {
						return 12;
					}
				} else {
					if(pX[13] <= 8){
						return 17;
					} else {
						return 13;
					}
				}
			}
		} else {
			if(pX[6] <= 9){
				if(pX[9] <= 13){
					if(pX[12] <= 1){
						return 8;
					} else {
						return 3;
					}
				} else {
					if(pX[12] <= 2){
						return 9;
					} else {
						return 15;
					}
				}
			} else {
				if(pX[8] <= 5){
					if(pX[14] <= 0){
						return 19;
					} else {
						return 5;
					}
				} else {
					if(pX[14] <= 1){
						return 19;
					} else {
						return 19;
					}
				}
			}
		}
	}
}
