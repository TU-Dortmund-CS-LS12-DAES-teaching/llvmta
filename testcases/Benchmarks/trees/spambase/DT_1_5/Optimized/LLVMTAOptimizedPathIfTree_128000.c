#include "LLVMTAOptimizedPathIfTree_128000.h"
int main() {
 int pX[57];
	unsigned int predCnt[2] ;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict0(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict1(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict2(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict3(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict4(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict0( int const pX[57]){
	if(pX[55] <= 1850){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict1( int const pX[57]){
	if(pX[51] <= 7){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict2( int const pX[57]){
	if(pX[20] <= 40){
		return 0;
	} else {
		return 1;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict3( int const pX[57]){
	if(pX[18] > 112){
		return 1;
	} else {
		return 0;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict4( int const pX[57]){
	if(pX[54] <= 266){
		return 0;
	} else {
		return 1;
	}
}
