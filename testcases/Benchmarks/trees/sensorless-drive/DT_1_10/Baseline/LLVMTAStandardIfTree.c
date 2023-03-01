#include "LLVMTAStandardIfTree.h"
int main() {
float pX[48];
	unsigned int predCnt[11] ;
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
unsigned int LLVMTAStandardIfTree_predict0(float const pX[48]){
	if(pX[27] <= 0.013281499966979027){
		return 1;
	} else {
		return 3;
	}
}
unsigned int LLVMTAStandardIfTree_predict1(float const pX[48]){
	if(pX[34] <= -0.01789199933409691){
		return 10;
	} else {
		return 3;
	}
}
unsigned int LLVMTAStandardIfTree_predict2(float const pX[48]){
	if(pX[7] <= -0.010551000013947487){
		return 10;
	} else {
		return 5;
	}
}
unsigned int LLVMTAStandardIfTree_predict3(float const pX[48]){
	if(pX[18] <= 2.332650065422058){
		return 6;
	} else {
		return 8;
	}
}
unsigned int LLVMTAStandardIfTree_predict4(float const pX[48]){
	if(pX[8] <= -0.010522999800741673){
		return 10;
	} else {
		return 8;
	}
}
unsigned int LLVMTAStandardIfTree_predict5(float const pX[48]){
	if(pX[11] <= 0.06775550171732903){
		return 7;
	} else {
		return 6;
	}
}
unsigned int LLVMTAStandardIfTree_predict6(float const pX[48]){
	if(pX[27] <= 0.012724499683827162){
		return 9;
	} else {
		return 3;
	}
}
unsigned int LLVMTAStandardIfTree_predict7(float const pX[48]){
	if(pX[6] <= -0.010604000184684992){
		return 9;
	} else {
		return 3;
	}
}
unsigned int LLVMTAStandardIfTree_predict8(float const pX[48]){
	if(pX[20] <= 2.332900047302246){
		return 1;
	} else {
		return 3;
	}
}
unsigned int LLVMTAStandardIfTree_predict9(float const pX[48]){
	if(pX[20] <= 2.331499934196472){
		return 1;
	} else {
		return 8;
	}
}
