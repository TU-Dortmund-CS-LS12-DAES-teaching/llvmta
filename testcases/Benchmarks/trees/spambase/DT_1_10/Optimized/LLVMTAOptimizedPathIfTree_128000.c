#include "LLVMTAOptimizedPathIfTree_128000.h"
int main() {
 int pX[57];
	unsigned int predCnt[2] ;
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
unsigned int LLVMTAOptimizedPathIfTree_128000_predict0( int const pX[57]){
	if(pX[15] <= 13){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict1( int const pX[57]){
	if(pX[56] > 6850){
		return 1;
	} else {
		return 0;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict2( int const pX[57]){
	if(pX[15] <= 9){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict3( int const pX[57]){
	if(pX[23] <= 3){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict4( int const pX[57]){
	if(pX[24] <= 10){
		return 0;
	} else {
		return 0;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict5( int const pX[57]){
	if(pX[24] <= 10){
		return 1;
	} else {
		return 0;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict6( int const pX[57]){
	if(pX[14] <= 2){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict7( int const pX[57]){
	if(pX[51] <= 7){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict8( int const pX[57]){
	if(pX[4] <= 4){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict9( int const pX[57]){
	if(pX[51] <= 7){
		return 0;
	} else {
		return 1;
	}
}
