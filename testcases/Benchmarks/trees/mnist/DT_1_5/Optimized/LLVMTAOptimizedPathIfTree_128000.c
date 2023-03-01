#include "LLVMTAOptimizedPathIfTree_128000.h"
int main() {
 char pX[784];
	unsigned int predCnt[10] ;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict0(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict1(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict2(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict3(pX)]++;
	predCnt[LLVMTAOptimizedPathIfTree_128000_predict4(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict0( char const pX[784]){
	if(pX[460] > 1){
		return 8;
	} else {
		return 0;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict1( char const pX[784]){
	if(pX[489] > 0){
		return 1;
	} else {
		return 0;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict2( char const pX[784]){
	if(pX[625] <= 0){
		return 4;
	} else {
		return 0;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict3( char const pX[784]){
	if(pX[625] <= 0){
		return 4;
	} else {
		return 0;
	}
}
unsigned int LLVMTAOptimizedPathIfTree_128000_predict4( char const pX[784]){
	if(pX[156] <= 0){
		return 7;
	} else {
		return 2;
	}
}
