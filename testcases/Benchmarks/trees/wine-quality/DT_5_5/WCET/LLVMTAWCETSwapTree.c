#include "LLVMTAWCETSwapTree.h"
int main() {
float pX[11];
	unsigned int predCnt[7] ;
	predCnt[LLVMTAWCETSwapTree_predict0(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict1(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict2(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict3(pX)]++;
	predCnt[LLVMTAWCETSwapTree_predict4(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTAWCETSwapTree_predict0(float const pX[11]){
	if(pX[4] <=  0.04450000077486038){
		if(pX[10] <=  10.849999904632568){
			if(pX[3] <=  3.549999952316284){
				if(pX[10] <=  10.050000190734863){
					if(pX[0] <=  5.950000047683716){
						return 2;
					} else {
						return 2;
					}
				} else {
					if(pX[1] <=  0.30249999463558197){
						return 3;
					} else {
						return 2;
					}
				}
			} else {
				if(pX[10] <=  9.550000190734863){
					if(pX[6] <=  114.5){
						return 3;
					} else {
						return 3;
					}
				} else {
					if(pX[1] <=  0.29500000178813934){
						return 3;
					} else {
						return 3;
					}
				}
			}
		} else {
			if(pX[9] <=  0.7849999964237213){
				if(pX[0] <=  8.150000095367432){
					if(pX[5] <=  11.5){
						return 3;
					} else {
						return 3;
					}
				} else {
					if(pX[9] <=  0.36500000953674316){
						return 2;
					} else {
						return 3;
					}
				}
			} else {
				if(pX[3] <=  1.6500000357627869){
					if(pX[7] <=  0.9903799891471863){
						return 4;
					} else {
						return 3;
					}
				} else {
					if(pX[3] <=  6.924999952316284){
						return 4;
					} else {
						return 3;
					}
				}
			}
		}
	} else {
		if(pX[10] <=  10.016666889190674){
			if(pX[3] <=  12.75){
				if(pX[1] <=  0.22500000149011612){
					if(pX[9] <=  0.48499999940395355){
						return 3;
					} else {
						return 3;
					}
				} else {
					if(pX[3] <=  1.1500000357627869){
						return 3;
					} else {
						return 2;
					}
				}
			} else {
				if(pX[3] <=  15.099999904632568){
					if(pX[1] <=  0.2824999988079071){
						return 3;
					} else {
						return 2;
					}
				} else {
					if(pX[1] <=  0.20499999821186066){
						return 3;
					} else {
						return 2;
					}
				}
			}
		} else {
			if(pX[9] <=  0.7250000238418579){
				if(pX[1] <=  0.29500000178813934){
					if(pX[6] <=  174.5){
						return 3;
					} else {
						return 3;
					}
				} else {
					if(pX[6] <=  15.5){
						return 4;
					} else {
						return 3;
					}
				}
			} else {
				if(pX[8] >  3.0){
					if(pX[6] <=  53.5){
						return 4;
					} else {
						return 3;
					}
				} else {
					return 2;
				}
			}
		}
	}
}
unsigned int LLVMTAWCETSwapTree_predict1(float const pX[11]){
	if(pX[2] <=  0.26500000059604645){
		if(pX[1] <=  0.2574999928474426){
			if(pX[7] <=  0.9993799924850464){
				if(pX[1] >  0.10999999940395355){
					if(pX[10] <=  11.799999713897705){
						return 3;
					} else {
						return 4;
					}
				} else {
					return 4;
				}
			} else {
				return 2;
			}
		} else {
			if(pX[10] <=  10.25){
				if(pX[1] <=  0.3474999964237213){
					if(pX[6] <=  112.0){
						return 2;
					} else {
						return 2;
					}
				} else {
					if(pX[9] <=  0.41499999165534973){
						return 3;
					} else {
						return 2;
					}
				}
			} else {
				if(pX[7] <=  0.9918299913406372){
					if(pX[1] <=  0.375){
						return 3;
					} else {
						return 4;
					}
				} else {
					if(pX[9] <=  0.5249999761581421){
						return 2;
					} else {
						return 3;
					}
				}
			}
		}
	} else {
		if(pX[7] <=  0.9916349947452545){
			if(pX[7] <=  0.9896050095558167){
				if(pX[1] <=  0.2750000059604645){
					if(pX[9] <=  0.625){
						return 3;
					} else {
						return 4;
					}
				} else {
					if(pX[7] <=  0.9886049926280975){
						return 3;
					} else {
						return 4;
					}
				}
			} else {
				if(pX[4] <=  0.04450000077486038){
					if(pX[5] <=  6.5){
						return 1;
					} else {
						return 3;
					}
				} else {
					if(pX[6] <=  64.5){
						return 2;
					} else {
						return 3;
					}
				}
			}
		} else {
			if(pX[1] <=  0.2775000035762787){
				if(pX[2] <=  0.5149999856948853){
					if(pX[0] <=  6.1499998569488525){
						return 2;
					} else {
						return 3;
					}
				} else {
					if(pX[8] <=  3.3850001096725464){
						return 2;
					} else {
						return 2;
					}
				}
			} else {
				if(pX[8] <=  3.2549999952316284){
					if(pX[9] <=  0.5849999785423279){
						return 2;
					} else {
						return 3;
					}
				} else {
					if(pX[10] <=  10.849999904632568){
						return 2;
					} else {
						return 4;
					}
				}
			}
		}
	}
}
unsigned int LLVMTAWCETSwapTree_predict2(float const pX[11]){
	if(pX[2] <=  0.23499999940395355){
		if(pX[9] <=  0.5649999976158142){
			if(pX[9] <=  0.4050000011920929){
				if(pX[4] <=  0.04350000061094761){
					if(pX[8] <=  3.375){
						return 2;
					} else {
						return 4;
					}
				} else {
					if(pX[4] <=  0.07000000029802322){
						return 3;
					} else {
						return 2;
					}
				}
			} else {
				if(pX[0] <=  6.6499998569488525){
					if(pX[10] <=  12.550000190734863){
						return 2;
					} else {
						return 4;
					}
				} else {
					if(pX[10] <=  10.349999904632568){
						return 2;
					} else {
						return 3;
					}
				}
			}
		} else {
			if(pX[4] <=  0.09349999949336052){
				if(pX[6] <=  25.5){
					if(pX[7] <=  0.9957650005817413){
						return 3;
					} else {
						return 3;
					}
				} else {
					if(pX[10] <=  10.550000190734863){
						return 2;
					} else {
						return 3;
					}
				}
			} else {
				if(pX[10] <=  10.25){
					if(pX[6] <=  11.5){
						return 4;
					} else {
						return 2;
					}
				} else {
					if(pX[3] <=  2.799999952316284){
						return 3;
					} else {
						return 1;
					}
				}
			}
		}
	} else {
		if(pX[3] <=  17.675000190734863){
			if(pX[10] <=  10.625){
				if(pX[4] <=  0.06750000268220901){
					if(pX[1] <=  0.29749999940395355){
						return 3;
					} else {
						return 2;
					}
				} else {
					if(pX[1] <=  0.3149999976158142){
						return 3;
					} else {
						return 2;
					}
				}
			} else {
				if(pX[8] <=  3.024999976158142){
					if(pX[0] <=  8.550000190734863){
						return 3;
					} else {
						return 2;
					}
				} else {
					if(pX[7] <=  0.9909250140190125){
						return 3;
					} else {
						return 3;
					}
				}
			}
		} else {
			if(pX[3] <=  18.375){
				if(pX[10] >  8.550000190734863){
					if(pX[0] <=  6.700000047683716){
						return 2;
					} else {
						return 2;
					}
				} else {
					return 3;
				}
			} else {
				if(pX[2] <=  0.35999999940395355){
					if(pX[2] <=  0.29999999701976776){
						return 3;
					} else {
						return 4;
					}
				} else {
					if(pX[7] <=  0.9984900057315826){
						return 2;
					} else {
						return 2;
					}
				}
			}
		}
	}
}
unsigned int LLVMTAWCETSwapTree_predict3(float const pX[11]){
	if(pX[6] <=  171.5){
		if(pX[10] <=  10.483333110809326){
			if(pX[1] <=  0.29500000178813934){
				if(pX[10] <=  8.75){
					if(pX[8] <=  2.9550000429153442){
						return 4;
					} else {
						return 2;
					}
				} else {
					if(pX[3] <=  3.399999976158142){
						return 3;
					} else {
						return 3;
					}
				}
			} else {
				if(pX[10] <=  9.75){
					if(pX[1] <=  0.5525000095367432){
						return 2;
					} else {
						return 2;
					}
				} else {
					if(pX[8] <=  3.4450000524520874){
						return 2;
					} else {
						return 2;
					}
				}
			}
		} else {
			if(pX[6] <=  72.5){
				if(pX[9] <=  0.6349999904632568){
					if(pX[8] <=  3.4950000047683716){
						return 3;
					} else {
						return 2;
					}
				} else {
					if(pX[1] <=  0.41499999165534973){
						return 4;
					} else {
						return 3;
					}
				}
			} else {
				if(pX[7] <=  0.9913250207901001){
					if(pX[1] <=  0.2824999988079071){
						return 3;
					} else {
						return 4;
					}
				} else {
					if(pX[5] <=  16.5){
						return 2;
					} else {
						return 3;
					}
				}
			}
		}
	} else {
		if(pX[1] <=  0.2574999928474426){
			if(pX[9] <=  0.4650000035762787){
				if(pX[9] <=  0.4449999928474426){
					if(pX[2] <=  0.2849999964237213){
						return 2;
					} else {
						return 3;
					}
				} else {
					if(pX[5] <=  41.0){
						return 4;
					} else {
						return 5;
					}
				}
			} else {
				if(pX[4] <=  0.05250000022351742){
					if(pX[2] <=  0.32500000298023224){
						return 3;
					} else {
						return 3;
					}
				} else {
					if(pX[2] <=  0.2499999925494194){
						return 3;
					} else {
						return 4;
					}
				}
			}
		} else {
			if(pX[10] <=  10.849999904632568){
				if(pX[10] <=  9.75){
					if(pX[2] <=  0.5049999952316284){
						return 2;
					} else {
						return 2;
					}
				} else {
					if(pX[10] <=  10.650000095367432){
						return 2;
					} else {
						return 2;
					}
				}
			} else {
				if(pX[5] <=  28.5){
					if(pX[5] <=  15.5){
						return 1;
					} else {
						return 2;
					}
				} else {
					if(pX[5] <=  52.5){
						return 3;
					} else {
						return 0;
					}
				}
			}
		}
	}
}
unsigned int LLVMTAWCETSwapTree_predict4(float const pX[11]){
	if(pX[10] <=  10.849999904632568){
		if(pX[10] <=  9.775000095367432){
			if(pX[1] <=  0.2750000059604645){
				if(pX[1] <=  0.20499999821186066){
					if(pX[9] <=  0.4650000035762787){
						return 3;
					} else {
						return 3;
					}
				} else {
					if(pX[2] <=  0.19500000029802322){
						return 2;
					} else {
						return 3;
					}
				}
			} else {
				if(pX[9] <=  0.574999988079071){
					if(pX[3] <=  15.799999713897705){
						return 2;
					} else {
						return 2;
					}
				} else {
					if(pX[0] <=  11.349999904632568){
						return 2;
					} else {
						return 3;
					}
				}
			}
		} else {
			if(pX[1] <=  0.26749999821186066){
				if(pX[5] <=  14.5){
					if(pX[0] <=  8.949999809265137){
						return 2;
					} else {
						return 3;
					}
				} else {
					if(pX[10] <=  10.625){
						return 3;
					} else {
						return 3;
					}
				}
			} else {
				if(pX[9] <=  0.5450000166893005){
					if(pX[2] <=  0.14500000327825546){
						return 2;
					} else {
						return 2;
					}
				} else {
					if(pX[8] <=  3.4450000524520874){
						return 3;
					} else {
						return 2;
					}
				}
			}
		}
	} else {
		if(pX[10] <=  11.766666889190674){
			if(pX[5] <=  16.5){
				if(pX[9] <=  0.6550000011920929){
					if(pX[3] <=  1.899999976158142){
						return 2;
					} else {
						return 3;
					}
				} else {
					if(pX[7] <=  0.9921500086784363){
						return 2;
					} else {
						return 3;
					}
				}
			} else {
				if(pX[4] <=  0.09400000050663948){
					if(pX[9] <=  0.625){
						return 3;
					} else {
						return 4;
					}
				} else {
					return 3;
				}
			}
		} else {
			if(pX[5] <=  31.5){
				if(pX[5] <=  29.5){
					if(pX[1] <=  0.3050000071525574){
						return 3;
					} else {
						return 4;
					}
				} else {
					if(pX[10] <=  13.825000286102295){
						return 3;
					} else {
						return 4;
					}
				}
			} else {
				if(pX[6] <=  175.5){
					if(pX[2] <=  0.1899999976158142){
						return 5;
					} else {
						return 4;
					}
				} else {
					if(pX[10] <=  12.25){
						return 3;
					} else {
						return 3;
					}
				}
			}
		}
	}
}
