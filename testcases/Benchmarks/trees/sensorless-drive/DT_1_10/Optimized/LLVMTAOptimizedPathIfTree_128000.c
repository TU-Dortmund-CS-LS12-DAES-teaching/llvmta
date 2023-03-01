#include "LLVMTAOptimizedPathIfTree_128000.h"
int main() {
float pX[48];
	unsigned int predCnt[11] ;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict0(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict1(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict2(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict3(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict4(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict5(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict6(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict7(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict8(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict9(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict0(float const pX[48]){
	if(pX[27] <= 0.013281499966979027){
		return 1;
	} else {
		return 3;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict1(float const pX[48]){
	if(pX[34] > -0.01789199933409691){
		return 3;
	} else {
		return 10;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict2(float const pX[48]){
	if(pX[7] > -0.010551000013947487){
		return 5;
	} else {
		return 10;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict3(float const pX[48]){
	if(pX[18] <= 2.332650065422058){
		return 6;
	} else {
		return 8;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict4(float const pX[48]){
	if(pX[8] > -0.010522999800741673){
		return 8;
	} else {
		return 10;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict5(float const pX[48]){
	if(pX[11] <= 0.06775550171732903){
		return 7;
	} else {
		return 6;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict6(float const pX[48]){
	if(pX[27] <= 0.012724499683827162){
		return 9;
	} else {
		return 3;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict7(float const pX[48]){
	if(pX[6] > -0.010604000184684992){
		return 3;
	} else {
		return 9;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict8(float const pX[48]){
	if(pX[20] <= 2.332900047302246){
		return 1;
	} else {
		return 3;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict9(float const pX[48]){
	if(pX[20] <= 2.331499934196472){
		return 1;
	} else {
		return 8;
	}
}
