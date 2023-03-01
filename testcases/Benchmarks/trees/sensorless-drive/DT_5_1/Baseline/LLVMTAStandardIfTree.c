#include "LLVMTAStandardIfTree.h"
int main() {
float pX[48];
	unsigned int predCnt[11] ;
	predCnt[LLVMTAStandardIfTree_predict0(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTAStandardIfTree_predict0(float const pX[48]){
	if(pX[8] <= -0.010217499919235706){
		if(pX[1] <= -1.3257999853522051e-05){
			if(pX[9] <= -0.08946149982511997){
				return 10;
			} else {
				if(pX[18] <= 1.7871999740600586){
					if(pX[23] <= 1.4083999991416931){
						return 1;
					} else {
						return 9;
					}
				} else {
					if(pX[19] <= 1.9615000486373901){
						return 1;
					} else {
						return 1;
					}
				}
			}
		} else {
			if(pX[42] <= -1.4937500357627869){
				if(pX[7] <= -0.04394099861383438){
					if(pX[28] <= -3.9200499057769775){
						return 10;
					} else {
						return 10;
					}
				} else {
					if(pX[9] <= -0.022060499526560307){
						return 1;
					} else {
						return 9;
					}
				}
			} else {
				if(pX[11] <= -0.11718449741601944){
					return 10;
				} else {
					if(pX[47] <= -1.496999979019165){
						return 1;
					} else {
						return 3;
					}
				}
			}
		}
	} else {
		if(pX[11] <= 0.06778750196099281){
			if(pX[9] <= -0.0077152501326054335){
				if(pX[6] <= 0.02026550006121397){
					if(pX[24] <= 0.0071181501261889935){
						return 5;
					} else {
						return 8;
					}
				} else {
					if(pX[22] <= 1.5932000279426575){
						return 0;
					} else {
						return 0;
					}
				}
			} else {
				if(pX[20] <= 2.332900047302246){
					if(pX[11] <= 0.03563799895346165){
						return 2;
					} else {
						return 3;
					}
				} else {
					return 3;
				}
			}
		} else {
			if(pX[27] <= 0.02210600022226572){
				if(pX[9] <= 0.06883949786424637){
					if(pX[8] <= 0.03214949928224087){
						return 3;
					} else {
						return 6;
					}
				} else {
					if(pX[6] <= 0.01976899988949299){
						return 3;
					} else {
						return 6;
					}
				}
			} else {
				if(pX[10] <= 0.08717549964785576){
					return 3;
				} else {
					return 6;
				}
			}
		}
	}
}
