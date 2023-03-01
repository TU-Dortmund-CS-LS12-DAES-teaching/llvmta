#include "LLVMTAStandardIfTree.h"
int main() {
float pX[11];
	unsigned int predCnt[7] ;
	predCnt[LLVMTAStandardIfTree_predict0(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict1(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict2(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict3(pX)]++;
	predCnt[LLVMTAStandardIfTree_predict4(pX)]++;
unsigned int pred = 0;
				unsigned int cnt = predCnt[0];
				return pred;
			}
unsigned int LLVMTAStandardIfTree_predict0(float const pX[11]){
	if(pX[7] <= 0.992110013961792){
		if(pX[5] <= 10.5){
			if(pX[1] <= 0.2849999964237213){
				if(pX[8] <= 3.049999952316284){
					if(pX[10] <= 11.650000095367432){
						return 1;
					} else {
						return 3;
					}
				} else {
					if(pX[3] <= 1.800000011920929){
						if(pX[2] <= 0.3100000023841858){
							if(pX[4] <= 0.023000000044703484){
								return 3;
							} else {
								return 2;
							}
						} else {
							return 2;
						}
					} else {
						if(pX[0] <= 5.75){
							return 2;
						} else {
							return 3;
						}
					}
				}
			} else {
				if(pX[6] <= 110.5){
					if(pX[3] <= 1.25){
						return 1;
					} else {
						if(pX[0] <= 5.8500001430511475){
							if(pX[1] <= 0.3700000047683716){
								return 3;
							} else {
								if(pX[4] <= 0.032500000670552254){
									return 3;
								} else {
									return 4;
								}
							}
						} else {
							if(pX[0] <= 6.25){
								if(pX[10] <= 12.549999713897705){
									return 1;
								} else {
									return 4;
								}
							} else {
								if(pX[10] <= 11.75){
									return 2;
								} else {
									if(pX[5] <= 8.0){
										if(pX[3] <= 5.549999952316284){
											if(pX[2] <= 0.4300000071525574){
												return 0;
											} else {
												return 1;
											}
										} else {
											return 5;
										}
									} else {
										return 3;
									}
								}
							}
						}
					}
				} else {
					if(pX[10] <= 11.400000095367432){
						return 2;
					} else {
						return 3;
					}
				}
			}
		} else {
			if(pX[8] <= 2.9850000143051147){
				if(pX[3] <= 4.25){
					if(pX[0] <= 8.75){
						if(pX[10] <= 13.25){
							if(pX[9] <= 0.42499999701976776){
								if(pX[0] <= 7.450000047683716){
									if(pX[9] <= 0.3400000035762787){
										return 2;
									} else {
										if(pX[4] <= 0.041999999433755875){
											return 3;
										} else {
											if(pX[0] <= 7.0){
												return 4;
											} else {
												return 3;
											}
										}
									}
								} else {
									if(pX[6] <= 133.5){
										if(pX[9] <= 0.35999999940395355){
											return 3;
										} else {
											return 5;
										}
									} else {
										return 2;
									}
								}
							} else {
								return 3;
							}
						} else {
							return 5;
						}
					} else {
						if(pX[5] <= 25.0){
							return 2;
						} else {
							return 4;
						}
					}
				} else {
					if(pX[10] <= 11.449999809265137){
						return 4;
					} else {
						if(pX[5] <= 27.5){
							if(pX[10] <= 12.800000190734863){
								return 4;
							} else {
								return 5;
							}
						} else {
							if(pX[8] <= 2.9700000286102295){
								return 3;
							} else {
								if(pX[4] <= 0.03449999913573265){
									return 4;
								} else {
									return 3;
								}
							}
						}
					}
				}
			} else {
				if(pX[1] <= 0.2775000035762787){
					if(pX[5] <= 38.5){
						if(pX[10] <= 11.849999904632568){
							if(pX[9] <= 0.36500000953674316){
								if(pX[3] <= 2.2500000596046448){
									if(pX[0] <= 6.099999904632568){
										if(pX[6] <= 87.5){
											return 4;
										} else {
											return 3;
										}
									} else {
										if(pX[2] <= 0.4050000011920929){
											return 2;
										} else {
											return 3;
										}
									}
								} else {
									return 4;
								}
							} else {
								if(pX[6] <= 127.5){
									if(pX[10] <= 11.550000190734863){
										if(pX[8] <= 3.284999966621399){
											if(pX[1] <= 0.26749999821186066){
												if(pX[0] <= 6.75){
													if(pX[1] <= 0.11499999836087227){
														return 4;
													} else {
														if(pX[7] <= 0.9899449944496155){
															if(pX[9] <= 0.38499999046325684){
																return 3;
															} else {
																return 2;
															}
														} else {
															if(pX[8] <= 3.1049998998641968){
																if(pX[1] <= 0.1600000038743019){
																	if(pX[7] <= 0.9910599887371063){
																		return 3;
																	} else {
																		return 2;
																	}
																} else {
																	return 3;
																}
															} else {
																if(pX[8] <= 3.2450000047683716){
																	return 3;
																} else {
																	if(pX[4] <= 0.03550000116229057){
																		if(pX[9] <= 0.5300000011920929){
																			return 3;
																		} else {
																			return 4;
																		}
																	} else {
																		return 3;
																	}
																}
															}
														}
													}
												} else {
													if(pX[4] <= 0.04450000077486038){
														if(pX[9] <= 0.5900000035762787){
															if(pX[10] <= 10.849999904632568){
																if(pX[3] <= 1.4500000476837158){
																	return 3;
																} else {
																	return 4;
																}
															} else {
																if(pX[9] <= 0.38499999046325684){
																	if(pX[8] <= 3.0799999237060547){
																		return 3;
																	} else {
																		return 2;
																	}
																} else {
																	if(pX[4] <= 0.029000000096857548){
																		if(pX[1] <= 0.1900000050663948){
																			return 4;
																		} else {
																			return 3;
																		}
																	} else {
																		return 3;
																	}
																}
															}
														} else {
															if(pX[7] <= 0.9915049970149994){
																return 4;
															} else {
																return 2;
															}
														}
													} else {
														return 3;
													}
												}
											} else {
												return 2;
											}
										} else {
											if(pX[5] <= 34.0){
												if(pX[5] <= 17.5){
													if(pX[6] <= 98.0){
														return 4;
													} else {
														return 2;
													}
												} else {
													if(pX[6] <= 116.5){
														if(pX[8] <= 3.3049999475479126){
															return 4;
														} else {
															if(pX[9] <= 0.6049999892711639){
																if(pX[2] <= 0.3150000125169754){
																	return 3;
																} else {
																	if(pX[5] <= 27.0){
																		return 4;
																	} else {
																		return 3;
																	}
																}
															} else {
																if(pX[6] <= 74.0){
																	return 3;
																} else {
																	return 2;
																}
															}
														}
													} else {
														if(pX[4] <= 0.0364999994635582){
															if(pX[5] <= 30.5){
																return 5;
															} else {
																return 3;
															}
														} else {
															return 2;
														}
													}
												}
											} else {
												return 4;
											}
										}
									} else {
										return 3;
									}
								} else {
									if(pX[0] <= 6.1499998569488525){
										if(pX[4] <= 0.027500000782310963){
											return 5;
										} else {
											return 2;
										}
									} else {
										if(pX[7] <= 0.9918150007724762){
											if(pX[2] <= 0.3699999898672104){
												if(pX[2] <= 0.29500000178813934){
													if(pX[5] <= 32.0){
														return 4;
													} else {
														return 2;
													}
												} else {
													if(pX[4] <= 0.032999999821186066){
														if(pX[1] <= 0.20999999344348907){
															return 4;
														} else {
															return 2;
														}
													} else {
														return 3;
													}
												}
											} else {
												if(pX[3] <= 1.1500000357627869){
													return 2;
												} else {
													if(pX[1] <= 0.17999999970197678){
														return 3;
													} else {
														return 2;
													}
												}
											}
										} else {
											return 3;
										}
									}
								}
							}
						} else {
							if(pX[7] <= 0.9885900020599365){
								return 4;
							} else {
								if(pX[9] <= 0.8099999725818634){
									if(pX[3] <= 2.049999952316284){
										if(pX[5] <= 20.5){
											if(pX[7] <= 0.9902200102806091){
												return 4;
											} else {
												if(pX[8] <= 3.024999976158142){
													return 2;
												} else {
													if(pX[2] <= 0.3449999988079071){
														return 2;
													} else {
														return 3;
													}
												}
											}
										} else {
											if(pX[10] <= 12.150000095367432){
												if(pX[3] <= 1.1500000357627869){
													if(pX[3] <= 1.050000011920929){
														return 2;
													} else {
														return 3;
													}
												} else {
													if(pX[4] <= 0.0345000009983778){
														if(pX[10] <= 12.050000190734863){
															return 3;
														} else {
															return 4;
														}
													} else {
														if(pX[5] <= 37.5){
															if(pX[1] <= 0.17999999970197678){
																return 3;
															} else {
																return 4;
															}
														} else {
															return 3;
														}
													}
												}
											} else {
												if(pX[7] <= 0.9888799786567688){
													if(pX[4] <= 0.032500000670552254){
														return 5;
													} else {
														return 3;
													}
												} else {
													if(pX[6] <= 133.5){
														if(pX[9] <= 0.550000011920929){
															return 3;
														} else {
															if(pX[10] <= 12.699999809265137){
																return 3;
															} else {
																return 4;
															}
														}
													} else {
														if(pX[3] <= 1.850000023841858){
															return 3;
														} else {
															return 6;
														}
													}
												}
											}
										}
									} else {
										if(pX[6] <= 167.5){
											if(pX[8] <= 3.1450001001358032){
												if(pX[5] <= 16.5){
													return 1;
												} else {
													if(pX[9] <= 0.4049999862909317){
														if(pX[2] <= 0.29999999701976776){
															return 3;
														} else {
															return 5;
														}
													} else {
														return 3;
													}
												}
											} else {
												if(pX[2] <= 0.36500000953674316){
													if(pX[7] <= 0.9891500174999237){
														return 5;
													} else {
														if(pX[6] <= 83.0){
															return 3;
														} else {
															if(pX[10] <= 12.150000095367432){
																return 4;
															} else {
																if(pX[4] <= 0.029000000096857548){
																	return 4;
																} else {
																	if(pX[0] <= 6.6499998569488525){
																		if(pX[0] <= 6.450000047683716){
																			if(pX[9] <= 0.4950000047683716){
																				return 4;
																			} else {
																				return 3;
																			}
																		} else {
																			return 5;
																		}
																	} else {
																		return 3;
																	}
																}
															}
														}
													}
												} else {
													if(pX[8] <= 3.225000023841858){
														return 3;
													} else {
														if(pX[2] <= 0.3799999952316284){
															return 2;
														} else {
															if(pX[3] <= 2.25){
																return 6;
															} else {
																return 4;
															}
														}
													}
												}
											}
										} else {
											return 5;
										}
									}
								} else {
									return 5;
								}
							}
						}
					} else {
						if(pX[0] <= 6.1499998569488525){
							if(pX[3] <= 1.5){
								if(pX[8] <= 3.4450000524520874){
									if(pX[5] <= 58.0){
										if(pX[4] <= 0.032500000670552254){
											return 4;
										} else {
											if(pX[10] <= 13.25){
												if(pX[4] <= 0.04100000113248825){
													if(pX[10] <= 11.666666984558105){
														if(pX[1] <= 0.2199999988079071){
															return 4;
														} else {
															if(pX[7] <= 0.9909850060939789){
																return 3;
															} else {
																return 4;
															}
														}
													} else {
														return 3;
													}
												} else {
													return 3;
												}
											} else {
												return 4;
											}
										}
									} else {
										return 2;
									}
								} else {
									return 2;
								}
							} else {
								if(pX[9] <= 0.5200000107288361){
									return 3;
								} else {
									return 4;
								}
							}
						} else {
							if(pX[8] <= 3.024999976158142){
								if(pX[10] <= 11.649999618530273){
									return 3;
								} else {
									return 4;
								}
							} else {
								if(pX[6] <= 169.0){
									if(pX[9] <= 0.33500000834465027){
										return 3;
									} else {
										if(pX[4] <= 0.03150000050663948){
											if(pX[10] <= 11.974999904632568){
												if(pX[0] <= 6.5){
													return 3;
												} else {
													if(pX[5] <= 39.5){
														return 2;
													} else {
														if(pX[9] <= 0.39000000059604645){
															return 4;
														} else {
															return 5;
														}
													}
												}
											} else {
												return 4;
											}
										} else {
											if(pX[0] <= 6.900000095367432){
												if(pX[8] <= 3.0649999380111694){
													return 3;
												} else {
													if(pX[10] <= 11.449999809265137){
														if(pX[10] <= 10.599999904632568){
															if(pX[3] <= 1.2999999821186066){
																return 3;
															} else {
																return 2;
															}
														} else {
															if(pX[2] <= 0.3400000035762787){
																return 4;
															} else {
																if(pX[6] <= 127.5){
																	return 3;
																} else {
																	if(pX[4] <= 0.036000000312924385){
																		return 2;
																	} else {
																		return 4;
																	}
																}
															}
														}
													} else {
														if(pX[7] <= 0.9909999966621399){
															if(pX[3] <= 2.400000035762787){
																if(pX[7] <= 0.9894649982452393){
																	if(pX[2] <= 0.3149999976158142){
																		return 3;
																	} else {
																		return 5;
																	}
																} else {
																	return 4;
																}
															} else {
																return 2;
															}
														} else {
															if(pX[10] <= 12.25){
																return 5;
															} else {
																return 4;
															}
														}
													}
												}
											} else {
												if(pX[9] <= 0.375){
													if(pX[8] <= 3.1100000143051147){
														return 3;
													} else {
														return 4;
													}
												} else {
													return 4;
												}
											}
										}
									}
								} else {
									if(pX[9] <= 0.5499999821186066){
										if(pX[7] <= 0.9918999969959259){
											return 3;
										} else {
											if(pX[6] <= 183.5){
												return 2;
											} else {
												return 3;
											}
										}
									} else {
										return 5;
									}
								}
							}
						}
					}
				} else {
					if(pX[10] <= 11.550000190734863){
						if(pX[1] <= 0.32500000298023224){
							if(pX[8] <= 3.2649999856948853){
								if(pX[4] <= 0.030499999411404133){
									return 3;
								} else {
									if(pX[3] <= 1.25){
										if(pX[7] <= 0.9917500019073486){
											if(pX[6] <= 74.0){
												return 2;
											} else {
												return 3;
											}
										} else {
											return 1;
										}
									} else {
										if(pX[10] <= 10.849999904632568){
											return 2;
										} else {
											if(pX[2] <= 0.26500000059604645){
												return 3;
											} else {
												if(pX[3] <= 2.5500000715255737){
													if(pX[7] <= 0.9909399747848511){
														return 4;
													} else {
														return 2;
													}
												} else {
													return 4;
												}
											}
										}
									}
								}
							} else {
								if(pX[3] <= 1.300000011920929){
									return 3;
								} else {
									return 4;
								}
							}
						} else {
							if(pX[2] <= 0.03500000014901161){
								if(pX[10] <= 10.849999904632568){
									return 3;
								} else {
									return 1;
								}
							} else {
								if(pX[4] <= 0.02449999935925007){
									return 4;
								} else {
									if(pX[0] <= 7.700000047683716){
										if(pX[4] <= 0.0364999994635582){
											return 3;
										} else {
											if(pX[10] <= 11.449999809265137){
												if(pX[2] <= 0.3699999898672104){
													if(pX[5] <= 44.5){
														return 3;
													} else {
														if(pX[7] <= 0.9916000068187714){
															return 3;
														} else {
															return 4;
														}
													}
												} else {
													if(pX[10] <= 10.650000095367432){
														return 2;
													} else {
														if(pX[2] <= 0.39499999582767487){
															return 4;
														} else {
															if(pX[4] <= 0.10449999757111073){
																return 2;
															} else {
																return 3;
															}
														}
													}
												}
											} else {
												return 2;
											}
										}
									} else {
										return 4;
									}
								}
							}
						}
					} else {
						if(pX[3] <= 1.550000011920929){
							if(pX[0] <= 5.299999952316284){
								if(pX[8] <= 3.2949999570846558){
									return 2;
								} else {
									if(pX[6] <= 70.0){
										return 3;
									} else {
										if(pX[10] <= 12.650000095367432){
											if(pX[1] <= 0.4299999922513962){
												return 4;
											} else {
												return 5;
											}
										} else {
											return 5;
										}
									}
								}
							} else {
								if(pX[0] <= 7.200000047683716){
									if(pX[4] <= 0.027999999932944775){
										return 4;
									} else {
										if(pX[8] <= 3.0999999046325684){
											if(pX[6] <= 133.5){
												return 3;
											} else {
												return 4;
											}
										} else {
											if(pX[5] <= 32.5){
												if(pX[4] <= 0.0364999994635582){
													if(pX[7] <= 0.9892149865627289){
														if(pX[10] <= 12.649999618530273){
															return 3;
														} else {
															if(pX[6] <= 84.5){
																return 1;
															} else {
																return 4;
															}
														}
													} else {
														return 2;
													}
												} else {
													return 3;
												}
											} else {
												if(pX[3] <= 1.300000011920929){
													return 3;
												} else {
													return 4;
												}
											}
										}
									}
								} else {
									if(pX[3] <= 1.125){
										if(pX[1] <= 0.32500000298023224){
											return 4;
										} else {
											return 5;
										}
									} else {
										if(pX[5] <= 20.5){
											return 0;
										} else {
											return 2;
										}
									}
								}
							}
						} else {
							if(pX[6] <= 85.5){
								if(pX[3] <= 4.5){
									if(pX[7] <= 0.9910500049591064){
										if(pX[1] <= 0.33250001072883606){
											if(pX[7] <= 0.990449994802475){
												if(pX[2] <= 0.3100000023841858){
													return 4;
												} else {
													return 3;
												}
											} else {
												if(pX[5] <= 22.5){
													return 3;
												} else {
													return 4;
												}
											}
										} else {
											if(pX[3] <= 1.6500000357627869){
												return 6;
											} else {
												if(pX[0] <= 6.75){
													if(pX[2] <= 0.29999999701976776){
														return 3;
													} else {
														if(pX[5] <= 34.0){
															return 3;
														} else {
															return 4;
														}
													}
												} else {
													return 4;
												}
											}
										}
									} else {
										return 5;
									}
								} else {
									if(pX[2] <= 0.255000002682209){
										return 3;
									} else {
										return 4;
									}
								}
							} else {
								if(pX[10] <= 12.775000095367432){
									if(pX[7] <= 0.9901799857616425){
										if(pX[3] <= 2.450000047683716){
											if(pX[6] <= 107.5){
												return 4;
											} else {
												if(pX[6] <= 116.0){
													return 3;
												} else {
													if(pX[3] <= 1.9999999403953552){
														if(pX[1] <= 0.2900000065565109){
															return 4;
														} else {
															if(pX[0] <= 6.099999904632568){
																return 3;
															} else {
																return 4;
															}
														}
													} else {
														return 4;
													}
												}
											}
										} else {
											if(pX[8] <= 3.0749999284744263){
												return 4;
											} else {
												if(pX[8] <= 3.2699999809265137){
													return 3;
												} else {
													return 6;
												}
											}
										}
									} else {
										if(pX[4] <= 0.02650000061839819){
											if(pX[3] <= 4.950000047683716){
												if(pX[1] <= 0.44750000536441803){
													return 4;
												} else {
													return 2;
												}
											} else {
												if(pX[10] <= 12.650000095367432){
													if(pX[8] <= 2.9950000047683716){
														return 5;
													} else {
														return 3;
													}
												} else {
													return 1;
												}
											}
										} else {
											if(pX[6] <= 149.0){
												if(pX[3] <= 2.049999952316284){
													return 3;
												} else {
													if(pX[10] <= 12.25){
														if(pX[0] <= 6.599999904632568){
															if(pX[3] <= 6.200000047683716){
																return 4;
															} else {
																if(pX[0] <= 5.800000190734863){
																	return 3;
																} else {
																	return 4;
																}
															}
														} else {
															if(pX[7] <= 0.9903050065040588){
																return 3;
															} else {
																return 4;
															}
														}
													} else {
														if(pX[0] <= 6.25){
															if(pX[2] <= 0.33500000834465027){
																if(pX[3] <= 5.199999809265137){
																	return 5;
																} else {
																	return 4;
																}
															} else {
																return 3;
															}
														} else {
															if(pX[5] <= 26.5){
																if(pX[8] <= 3.309999942779541){
																	return 4;
																} else {
																	if(pX[1] <= 0.35999999940395355){
																		return 4;
																	} else {
																		return 3;
																	}
																}
															} else {
																if(pX[1] <= 0.3050000071525574){
																	return 5;
																} else {
																	if(pX[10] <= 12.550000190734863){
																		if(pX[1] <= 0.4099999964237213){
																			if(pX[10] <= 12.349999904632568){
																				if(pX[7] <= 0.9916999936103821){
																					return 4;
																				} else {
																					return 5;
																				}
																			} else {
																				if(pX[2] <= 0.3200000077486038){
																					if(pX[6] <= 103.5){
																						return 4;
																					} else {
																						return 5;
																					}
																				} else {
																					return 5;
																				}
																			}
																		} else {
																			return 4;
																		}
																	} else {
																		return 4;
																	}
																}
															}
														}
													}
												}
											} else {
												if(pX[4] <= 0.03500000014901161){
													if(pX[9] <= 0.36500000953674316){
														return 3;
													} else {
														return 4;
													}
												} else {
													if(pX[8] <= 3.084999918937683){
														return 4;
													} else {
														if(pX[9] <= 0.625){
															return 3;
														} else {
															return 4;
														}
													}
												}
											}
										}
									}
								} else {
									if(pX[0] <= 5.549999952316284){
										if(pX[5] <= 18.0){
											return 4;
										} else {
											if(pX[7] <= 0.9883600175380707){
												if(pX[0] <= 4.549999952316284){
													return 3;
												} else {
													return 4;
												}
											} else {
												if(pX[0] <= 5.200000047683716){
													if(pX[7] <= 0.9888699948787689){
														return 4;
													} else {
														return 5;
													}
												} else {
													return 5;
												}
											}
										}
									} else {
										if(pX[4] <= 0.0494999997317791){
											if(pX[6] <= 91.5){
												if(pX[9] <= 0.5499999821186066){
													if(pX[3] <= 7.824999809265137){
														return 3;
													} else {
														return 4;
													}
												} else {
													return 4;
												}
											} else {
												if(pX[0] <= 7.049999952316284){
													if(pX[1] <= 0.3050000071525574){
														if(pX[10] <= 13.200000286102295){
															return 4;
														} else {
															if(pX[2] <= 0.24499999731779099){
																return 4;
															} else {
																return 3;
															}
														}
													} else {
														return 4;
													}
												} else {
													if(pX[4] <= 0.0364999994635582){
														if(pX[6] <= 147.0){
															if(pX[8] <= 3.3149999380111694){
																return 4;
															} else {
																return 3;
															}
														} else {
															return 3;
														}
													} else {
														if(pX[1] <= 0.3449999988079071){
															return 4;
														} else {
															if(pX[10] <= 13.099999904632568){
																return 5;
															} else {
																return 3;
															}
														}
													}
												}
											}
										} else {
											if(pX[3] <= 2.0){
												return 2;
											} else {
												return 3;
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	} else {
		if(pX[10] <= 10.016666889190674){
			if(pX[8] <= 3.0049999952316284){
				if(pX[6] <= 215.0){
					if(pX[10] <= 9.050000190734863){
						if(pX[2] <= 0.3100000023841858){
							if(pX[1] <= 0.1850000023841858){
								return 4;
							} else {
								if(pX[7] <= 0.9982199966907501){
									return 5;
								} else {
									return 3;
								}
							}
						} else {
							if(pX[2] <= 0.675000011920929){
								if(pX[6] <= 140.5){
									return 2;
								} else {
									if(pX[4] <= 0.05599999986588955){
										return 3;
									} else {
										if(pX[3] <= 14.099999904632568){
											if(pX[1] <= 0.3149999901652336){
												return 3;
											} else {
												return 2;
											}
										} else {
											return 4;
										}
									}
								}
							} else {
								return 2;
							}
						}
					} else {
						if(pX[3] <= 18.375){
							if(pX[7] <= 0.9978799819946289){
								if(pX[2] <= 0.32500000298023224){
									if(pX[3] <= 3.799999952316284){
										if(pX[10] <= 9.849999904632568){
											if(pX[4] <= 0.06900000013411045){
												if(pX[5] <= 26.0){
													return 3;
												} else {
													return 2;
												}
											} else {
												return 2;
											}
										} else {
											return 3;
										}
									} else {
										if(pX[3] <= 10.799999713897705){
											if(pX[5] <= 39.0){
												if(pX[1] <= 0.1900000050663948){
													return 2;
												} else {
													return 3;
												}
											} else {
												return 2;
											}
										} else {
											return 3;
										}
									}
								} else {
									if(pX[2] <= 0.6649999916553497){
										if(pX[7] <= 0.9969500005245209){
											if(pX[8] <= 2.9950000047683716){
												if(pX[5] <= 31.5){
													if(pX[5] <= 5.5){
														if(pX[10] <= 9.800000190734863){
															return 0;
														} else {
															return 3;
														}
													} else {
														if(pX[4] <= 0.05350000038743019){
															return 2;
														} else {
															return 3;
														}
													}
												} else {
													if(pX[2] <= 0.48000000417232513){
														if(pX[4] <= 0.04050000011920929){
															return 3;
														} else {
															return 2;
														}
													} else {
														if(pX[6] <= 156.0){
															return 3;
														} else {
															return 2;
														}
													}
												}
											} else {
												return 2;
											}
										} else {
											if(pX[9] <= 0.5799999833106995){
												return 2;
											} else {
												return 4;
											}
										}
									} else {
										if(pX[1] <= 0.32499999552965164){
											return 3;
										} else {
											if(pX[3] <= 3.9499999284744263){
												return 3;
											} else {
												return 1;
											}
										}
									}
								}
							} else {
								if(pX[0] <= 8.5){
									if(pX[3] <= 12.099999904632568){
										return 3;
									} else {
										if(pX[3] <= 14.474999904632568){
											if(pX[9] <= 0.4349999874830246){
												return 3;
											} else {
												return 2;
											}
										} else {
											return 2;
										}
									}
								} else {
									if(pX[3] <= 5.799999952316284){
										if(pX[3] <= 3.0500000715255737){
											if(pX[6] <= 15.5){
												return 3;
											} else {
												return 2;
											}
										} else {
											return 1;
										}
									} else {
										return 3;
									}
								}
							}
						} else {
							return 4;
						}
					}
				} else {
					if(pX[5] <= 58.5){
						return 2;
					} else {
						return 1;
					}
				}
			} else {
				if(pX[5] <= 29.5){
					if(pX[6] <= 110.5){
						if(pX[4] <= 0.06650000065565109){
							if(pX[7] <= 0.996649980545044){
								if(pX[1] <= 0.20499999821186066){
									if(pX[2] <= 0.24499999731779099){
										return 2;
									} else {
										if(pX[3] <= 2.75){
											if(pX[9] <= 0.5949999988079071){
												if(pX[5] <= 20.0){
													return 2;
												} else {
													if(pX[9] <= 0.4699999988079071){
														return 4;
													} else {
														return 2;
													}
												}
											} else {
												if(pX[7] <= 0.9941850006580353){
													return 3;
												} else {
													return 1;
												}
											}
										} else {
											if(pX[2] <= 0.3450000137090683){
												if(pX[7] <= 0.9952200055122375){
													return 3;
												} else {
													if(pX[2] <= 0.2900000065565109){
														if(pX[10] <= 9.5){
															return 3;
														} else {
															return 4;
														}
													} else {
														return 3;
													}
												}
											} else {
												return 2;
											}
										}
									}
								} else {
									if(pX[8] <= 3.3299999237060547){
										if(pX[1] <= 0.4949999898672104){
											if(pX[3] <= 2.050000011920929){
												if(pX[8] <= 3.309999942779541){
													if(pX[0] <= 5.950000047683716){
														if(pX[6] <= 78.0){
															return 2;
														} else {
															return 3;
														}
													} else {
														if(pX[5] <= 5.5){
															return 5;
														} else {
															if(pX[8] <= 3.2350000143051147){
																return 2;
															} else {
																if(pX[8] <= 3.25){
																	return 1;
																} else {
																	return 2;
																}
															}
														}
													}
												} else {
													return 3;
												}
											} else {
												if(pX[0] <= 6.6000001430511475){
													if(pX[3] <= 5.450000047683716){
														return 2;
													} else {
														return 1;
													}
												} else {
													if(pX[3] <= 8.400000095367432){
														if(pX[10] <= 9.349999904632568){
															return 2;
														} else {
															if(pX[2] <= 0.4350000023841858){
																return 3;
															} else {
																return 2;
															}
														}
													} else {
														return 2;
													}
												}
											}
										} else {
											if(pX[4] <= 0.05999999865889549){
												if(pX[4] <= 0.04350000061094761){
													return 1;
												} else {
													if(pX[0] <= 6.549999952316284){
														return 1;
													} else {
														return 3;
													}
												}
											} else {
												return 2;
											}
										}
									} else {
										if(pX[3] <= 5.099999904632568){
											if(pX[10] <= 9.650000095367432){
												return 2;
											} else {
												if(pX[8] <= 3.5850000381469727){
													if(pX[10] <= 9.949999809265137){
														if(pX[4] <= 0.054999999701976776){
															return 2;
														} else {
															if(pX[2] <= 0.024999999441206455){
																return 3;
															} else {
																return 2;
															}
														}
													} else {
														return 4;
													}
												} else {
													if(pX[6] <= 102.0){
														return 2;
													} else {
														return 1;
													}
												}
											}
										} else {
											return 1;
										}
									}
								}
							} else {
								if(pX[5] <= 6.5){
									if(pX[5] <= 5.5){
										if(pX[4] <= 0.05549999885261059){
											return 3;
										} else {
											return 1;
										}
									} else {
										if(pX[7] <= 0.999750018119812){
											return 2;
										} else {
											return 3;
										}
									}
								} else {
									if(pX[7] <= 0.9975100159645081){
										if(pX[6] <= 19.0){
											return 2;
										} else {
											if(pX[0] <= 7.049999952316284){
												return 3;
											} else {
												if(pX[3] <= 11.75){
													return 3;
												} else {
													return 2;
												}
											}
										}
									} else {
										return 3;
									}
								}
							}
						} else {
							if(pX[0] <= 7.1499998569488525){
								if(pX[9] <= 0.7999999821186066){
									if(pX[2] <= 0.20499999821186066){
										if(pX[3] <= 1.300000011920929){
											return 0;
										} else {
											if(pX[9] <= 0.5949999988079071){
												return 2;
											} else {
												if(pX[1] <= 0.4300000071525574){
													return 3;
												} else {
													if(pX[10] <= 9.900000095367432){
														if(pX[5] <= 16.5){
															return 2;
														} else {
															if(pX[5] <= 17.5){
																return 3;
															} else {
																return 2;
															}
														}
													} else {
														return 3;
													}
												}
											}
										}
									} else {
										if(pX[4] <= 0.08000000193715096){
											if(pX[6] <= 80.5){
												return 3;
											} else {
												return 2;
											}
										} else {
											if(pX[5] <= 22.5){
												return 2;
											} else {
												return 3;
											}
										}
									}
								} else {
									return 3;
								}
							} else {
								if(pX[9] <= 0.574999988079071){
									if(pX[8] <= 3.3850001096725464){
										if(pX[10] <= 9.53333330154419){
											if(pX[4] <= 0.07450000196695328){
												if(pX[5] <= 16.0){
													if(pX[0] <= 13.25){
														if(pX[7] <= 1.0006999969482422){
															if(pX[4] <= 0.06949999928474426){
																return 3;
															} else {
																if(pX[7] <= 0.9986499845981598){
																	if(pX[3] <= 2.100000023841858){
																		return 3;
																	} else {
																		return 2;
																	}
																} else {
																	return 3;
																}
															}
														} else {
															return 0;
														}
													} else {
														return 2;
													}
												} else {
													return 1;
												}
											} else {
												if(pX[10] <= 9.050000190734863){
													if(pX[0] <= 7.799999952316284){
														if(pX[3] <= 3.0500000715255737){
															return 2;
														} else {
															return 1;
														}
													} else {
														return 3;
													}
												} else {
													if(pX[6] <= 30.0){
														if(pX[4] <= 0.08350000157952309){
															if(pX[10] <= 9.449999809265137){
																return 3;
															} else {
																return 2;
															}
														} else {
															return 2;
														}
													} else {
														return 2;
													}
												}
											}
										} else {
											if(pX[4] <= 0.09449999779462814){
												if(pX[5] <= 21.5){
													if(pX[3] <= 1.6500000357627869){
														return 2;
													} else {
														if(pX[5] <= 12.5){
															if(pX[4] <= 0.07349999994039536){
																if(pX[3] <= 1.9500000476837158){
																	if(pX[9] <= 0.5499999821186066){
																		return 3;
																	} else {
																		return 2;
																	}
																} else {
																	return 2;
																}
															} else {
																if(pX[0] <= 8.050000190734863){
																	if(pX[1] <= 0.7400000095367432){
																		return 3;
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[10] <= 9.900000095367432){
																		if(pX[8] <= 3.134999990463257){
																			return 3;
																		} else {
																			return 2;
																		}
																	} else {
																		return 1;
																	}
																}
															}
														} else {
															if(pX[9] <= 0.5550000071525574){
																if(pX[7] <= 0.9975949823856354){
																	if(pX[0] <= 7.3500001430511475){
																		return 2;
																	} else {
																		return 3;
																	}
																} else {
																	return 1;
																}
															} else {
																if(pX[6] <= 69.0){
																	return 1;
																} else {
																	return 3;
																}
															}
														}
													}
												} else {
													if(pX[1] <= 0.5249999910593033){
														return 1;
													} else {
														return 2;
													}
												}
											} else {
												return 2;
											}
										}
									} else {
										if(pX[1] <= 0.42000000178813934){
											return 1;
										} else {
											return 2;
										}
									}
								} else {
									if(pX[7] <= 0.9969500005245209){
										if(pX[10] <= 9.200000286102295){
											return 3;
										} else {
											if(pX[5] <= 7.5){
												if(pX[8] <= 3.184999942779541){
													return 2;
												} else {
													return 3;
												}
											} else {
												if(pX[5] <= 23.5){
													return 2;
												} else {
													if(pX[0] <= 8.199999809265137){
														return 2;
													} else {
														return 3;
													}
												}
											}
										}
									} else {
										if(pX[9] <= 1.2099999785423279){
											if(pX[0] <= 8.75){
												if(pX[5] <= 18.5){
													if(pX[2] <= 0.23499999940395355){
														if(pX[2] <= 0.1900000050663948){
															if(pX[2] <= 0.13999999687075615){
																if(pX[6] <= 65.0){
																	if(pX[8] <= 3.4550000429153442){
																		if(pX[4] <= 0.10350000113248825){
																			if(pX[9] <= 0.6749999821186066){
																				if(pX[1] <= 0.6800000071525574){
																					return 2;
																				} else {
																					return 3;
																				}
																			} else {
																				return 3;
																			}
																		} else {
																			return 2;
																		}
																	} else {
																		if(pX[10] <= 9.849999904632568){
																			return 2;
																		} else {
																			if(pX[0] <= 7.800000190734863){
																				return 3;
																			} else {
																				return 2;
																			}
																		}
																	}
																} else {
																	return 3;
																}
															} else {
																return 3;
															}
														} else {
															return 2;
														}
													} else {
														return 3;
													}
												} else {
													if(pX[10] <= 9.550000190734863){
														if(pX[3] <= 1.800000011920929){
															return 3;
														} else {
															if(pX[6] <= 62.0){
																return 3;
															} else {
																return 2;
															}
														}
													} else {
														if(pX[8] <= 3.209999918937683){
															return 2;
														} else {
															return 1;
														}
													}
												}
											} else {
												if(pX[3] <= 1.949999988079071){
													return 3;
												} else {
													if(pX[3] <= 2.649999976158142){
														if(pX[8] <= 3.084999918937683){
															if(pX[10] <= 9.25){
																return 4;
															} else {
																if(pX[4] <= 0.11799999698996544){
																	return 3;
																} else {
																	return 2;
																}
															}
														} else {
															if(pX[7] <= 0.9982700049877167){
																return 2;
															} else {
																if(pX[5] <= 5.5){
																	return 0;
																} else {
																	if(pX[7] <= 0.9983699917793274){
																		return 4;
																	} else {
																		if(pX[6] <= 14.5){
																			return 3;
																		} else {
																			if(pX[4] <= 0.08950000256299973){
																				if(pX[10] <= 9.599999904632568){
																					return 2;
																				} else {
																					if(pX[8] <= 3.3550000190734863){
																						return 3;
																					} else {
																						return 2;
																					}
																				}
																			} else {
																				if(pX[6] <= 35.5){
																					return 3;
																				} else {
																					if(pX[10] <= 9.650000095367432){
																						return 2;
																					} else {
																						return 4;
																					}
																				}
																			}
																		}
																	}
																}
															}
														}
													} else {
														if(pX[9] <= 0.675000011920929){
															return 2;
														} else {
															if(pX[7] <= 1.0018500089645386){
																if(pX[4] <= 0.0949999988079071){
																	return 3;
																} else {
																	if(pX[0] <= 10.349999904632568){
																		return 2;
																	} else {
																		return 3;
																	}
																}
															} else {
																return 4;
															}
														}
													}
												}
											}
										} else {
											return 4;
										}
									}
								}
							}
						}
					} else {
						if(pX[4] <= 0.06949999928474426){
							if(pX[2] <= 0.24499999731779099){
								if(pX[4] <= 0.057500001043081284){
									if(pX[10] <= 8.700000286102295){
										return 1;
									} else {
										if(pX[9] <= 0.6349999904632568){
											if(pX[8] <= 3.4250000715255737){
												if(pX[1] <= 0.3449999988079071){
													return 2;
												} else {
													if(pX[5] <= 8.0){
														return 3;
													} else {
														return 2;
													}
												}
											} else {
												if(pX[7] <= 0.9955799877643585){
													return 2;
												} else {
													return 3;
												}
											}
										} else {
											return 3;
										}
									}
								} else {
									if(pX[1] <= 0.41499999165534973){
										if(pX[2] <= 0.23499999940395355){
											return 2;
										} else {
											if(pX[6] <= 123.0){
												return 2;
											} else {
												return 4;
											}
										}
									} else {
										if(pX[8] <= 3.274999976158142){
											return 3;
										} else {
											return 1;
										}
									}
								}
							} else {
								if(pX[8] <= 3.1450001001358032){
									if(pX[3] <= 12.700000286102295){
										if(pX[2] <= 0.32500000298023224){
											if(pX[3] <= 1.699999988079071){
												if(pX[3] <= 1.300000011920929){
													return 3;
												} else {
													return 1;
												}
											} else {
												if(pX[8] <= 3.125){
													if(pX[0] <= 7.6499998569488525){
														return 2;
													} else {
														if(pX[3] <= 5.6499998569488525){
															return 2;
														} else {
															return 3;
														}
													}
												} else {
													return 3;
												}
											}
										} else {
											if(pX[10] <= 8.849999904632568){
												return 3;
											} else {
												if(pX[1] <= 0.22999999672174454){
													if(pX[0] <= 8.399999856948853){
														return 3;
													} else {
														return 1;
													}
												} else {
													return 2;
												}
											}
										}
									} else {
										return 3;
									}
								} else {
									if(pX[0] <= 6.3500001430511475){
										if(pX[7] <= 0.9940800070762634){
											return 3;
										} else {
											if(pX[10] <= 9.550000190734863){
												if(pX[3] <= 5.75){
													return 2;
												} else {
													if(pX[9] <= 0.5349999964237213){
														if(pX[9] <= 0.4749999940395355){
															return 2;
														} else {
															if(pX[4] <= 0.04399999976158142){
																return 4;
															} else {
																return 3;
															}
														}
													} else {
														return 1;
													}
												}
											} else {
												return 3;
											}
										}
									} else {
										if(pX[9] <= 0.38499999046325684){
											if(pX[9] <= 0.3500000089406967){
												return 2;
											} else {
												if(pX[5] <= 11.0){
													return 1;
												} else {
													return 3;
												}
											}
										} else {
											if(pX[4] <= 0.04150000028312206){
												if(pX[1] <= 0.35500000417232513){
													if(pX[7] <= 0.9933499991893768){
														return 4;
													} else {
														if(pX[6] <= 203.0){
															return 3;
														} else {
															if(pX[0] <= 6.450000047683716){
																return 3;
															} else {
																return 2;
															}
														}
													}
												} else {
													if(pX[0] <= 8.100000143051147){
														return 2;
													} else {
														return 3;
													}
												}
											} else {
												if(pX[6] <= 148.5){
													if(pX[8] <= 3.1950000524520874){
														return 2;
													} else {
														if(pX[9] <= 0.4650000035762787){
															if(pX[2] <= 0.375){
																return 4;
															} else {
																return 3;
															}
														} else {
															if(pX[8] <= 3.215000033378601){
																return 3;
															} else {
																if(pX[6] <= 117.5){
																	return 3;
																} else {
																	return 2;
																}
															}
														}
													}
												} else {
													if(pX[1] <= 0.2199999988079071){
														if(pX[2] <= 0.3150000125169754){
															return 2;
														} else {
															return 1;
														}
													} else {
														if(pX[7] <= 0.9941950142383575){
															if(pX[2] <= 0.32999999821186066){
																return 4;
															} else {
																return 2;
															}
														} else {
															return 2;
														}
													}
												}
											}
										}
									}
								}
							}
						} else {
							if(pX[1] <= 0.2850000113248825){
								return 1;
							} else {
								if(pX[9] <= 0.925000011920929){
									if(pX[6] <= 192.5){
										if(pX[2] <= 0.3799999952316284){
											return 2;
										} else {
											if(pX[7] <= 0.9944999814033508){
												if(pX[4] <= 0.1119999997317791){
													return 2;
												} else {
													return 3;
												}
											} else {
												return 2;
											}
										}
									} else {
										if(pX[0] <= 6.949999809265137){
											if(pX[7] <= 0.9977200031280518){
												return 2;
											} else {
												return 1;
											}
										} else {
											return 2;
										}
									}
								} else {
									return 1;
								}
							}
						}
					}
				} else {
					if(pX[10] <= 9.550000190734863){
						if(pX[5] <= 41.75){
							if(pX[1] <= 0.23749999701976776){
								if(pX[9] <= 0.8350000083446503){
									if(pX[0] <= 6.700000047683716){
										if(pX[6] <= 174.5){
											return 3;
										} else {
											if(pX[2] <= 0.2199999988079071){
												return 3;
											} else {
												return 4;
											}
										}
									} else {
										if(pX[3] <= 16.274999618530273){
											if(pX[5] <= 38.5){
												if(pX[8] <= 3.034999966621399){
													return 3;
												} else {
													if(pX[7] <= 0.9964499771595001){
														if(pX[9] <= 0.42499999701976776){
															return 2;
														} else {
															if(pX[0] <= 6.8500001430511475){
																return 2;
															} else {
																return 3;
															}
														}
													} else {
														if(pX[7] <= 0.996649980545044){
															return 3;
														} else {
															if(pX[2] <= 0.3100000023841858){
																return 1;
															} else {
																return 4;
															}
														}
													}
												}
											} else {
												return 3;
											}
										} else {
											if(pX[6] <= 175.5){
												return 2;
											} else {
												return 4;
											}
										}
									}
								} else {
									return 4;
								}
							} else {
								if(pX[6] <= 181.5){
									if(pX[3] <= 1.3499999642372131){
										if(pX[6] <= 116.5){
											return 2;
										} else {
											return 3;
										}
									} else {
										if(pX[9] <= 0.3100000023841858){
											return 3;
										} else {
											if(pX[3] <= 25.90000057220459){
												if(pX[5] <= 33.5){
													if(pX[0] <= 6.549999952316284){
														if(pX[3] <= 1.699999988079071){
															return 2;
														} else {
															return 3;
														}
													} else {
														if(pX[8] <= 3.2450000047683716){
															if(pX[4] <= 0.042500000447034836){
																return 3;
															} else {
																if(pX[6] <= 148.0){
																	return 2;
																} else {
																	if(pX[2] <= 0.3050000071525574){
																		return 3;
																	} else {
																		return 2;
																	}
																}
															}
														} else {
															if(pX[1] <= 0.4350000023841858){
																if(pX[8] <= 3.4350000619888306){
																	if(pX[3] <= 10.300000190734863){
																		return 3;
																	} else {
																		return 2;
																	}
																} else {
																	return 2;
																}
															} else {
																return 2;
															}
														}
													}
												} else {
													if(pX[8] <= 3.1350001096725464){
														if(pX[5] <= 34.5){
															return 3;
														} else {
															if(pX[3] <= 13.599999904632568){
																if(pX[2] <= 0.3100000023841858){
																	return 2;
																} else {
																	if(pX[3] <= 1.7499999403953552){
																		return 3;
																	} else {
																		if(pX[6] <= 136.0){
																			return 3;
																		} else {
																			return 2;
																		}
																	}
																}
															} else {
																if(pX[0] <= 6.8500001430511475){
																	return 1;
																} else {
																	return 3;
																}
															}
														}
													} else {
														return 2;
													}
												}
											} else {
												return 3;
											}
										}
									}
								} else {
									if(pX[7] <= 0.9982500076293945){
										if(pX[0] <= 8.450000286102295){
											if(pX[7] <= 0.9954900145530701){
												return 1;
											} else {
												if(pX[0] <= 6.75){
													if(pX[2] <= 0.41499999165534973){
														if(pX[4] <= 0.05700000002980232){
															if(pX[5] <= 34.5){
																return 1;
															} else {
																return 2;
															}
														} else {
															return 2;
														}
													} else {
														return 3;
													}
												} else {
													return 3;
												}
											}
										} else {
											return 0;
										}
									} else {
										return 4;
									}
								}
							}
						} else {
							if(pX[4] <= 0.03749999962747097){
								if(pX[8] <= 3.049999952316284){
									return 2;
								} else {
									if(pX[2] <= 0.07999999821186066){
										return 1;
									} else {
										if(pX[7] <= 0.9958850145339966){
											return 3;
										} else {
											if(pX[6] <= 171.5){
												return 3;
											} else {
												if(pX[0] <= 6.950000047683716){
													if(pX[1] <= 0.23999999463558197){
														return 3;
													} else {
														return 2;
													}
												} else {
													return 4;
												}
											}
										}
									}
								}
							} else {
								if(pX[1] <= 0.23499999940395355){
									if(pX[4] <= 0.05250000022351742){
										if(pX[2] <= 0.2549999952316284){
											if(pX[0] <= 5.049999952316284){
												return 0;
											} else {
												if(pX[6] <= 152.0){
													if(pX[6] <= 141.5){
														return 2;
													} else {
														return 3;
													}
												} else {
													return 2;
												}
											}
										} else {
											if(pX[5] <= 46.5){
												if(pX[8] <= 3.2350000143051147){
													if(pX[0] <= 7.700000047683716){
														return 3;
													} else {
														return 4;
													}
												} else {
													if(pX[6] <= 125.5){
														return 4;
													} else {
														return 2;
													}
												}
											} else {
												if(pX[4] <= 0.05049999989569187){
													if(pX[8] <= 3.09499990940094){
														if(pX[1] <= 0.20499999821186066){
															if(pX[5] <= 70.5){
																return 2;
															} else {
																return 3;
															}
														} else {
															if(pX[7] <= 0.9980999827384949){
																return 4;
															} else {
																return 3;
															}
														}
													} else {
														if(pX[7] <= 1.0003849864006042){
															if(pX[2] <= 0.45499999821186066){
																if(pX[4] <= 0.0494999997317791){
																	if(pX[9] <= 0.4749999940395355){
																		if(pX[9] <= 0.45000000298023224){
																			return 3;
																		} else {
																			return 2;
																		}
																	} else {
																		return 3;
																	}
																} else {
																	if(pX[0] <= 6.75){
																		return 2;
																	} else {
																		return 3;
																	}
																}
															} else {
																return 2;
															}
														} else {
															if(pX[9] <= 0.5649999976158142){
																return 4;
															} else {
																return 3;
															}
														}
													}
												} else {
													return 2;
												}
											}
										}
									} else {
										if(pX[9] <= 0.45000000298023224){
											if(pX[0] <= 7.450000047683716){
												if(pX[3] <= 8.650000095367432){
													if(pX[7] <= 0.9951300024986267){
														if(pX[8] <= 3.0649999380111694){
															return 3;
														} else {
															return 2;
														}
													} else {
														return 4;
													}
												} else {
													return 3;
												}
											} else {
												return 2;
											}
										} else {
											if(pX[6] <= 204.25){
												if(pX[8] <= 3.0449999570846558){
													return 5;
												} else {
													if(pX[10] <= 9.400000095367432){
														return 3;
													} else {
														return 4;
													}
												}
											} else {
												if(pX[10] <= 9.0){
													return 5;
												} else {
													if(pX[2] <= 0.4300000071525574){
														return 4;
													} else {
														return 2;
													}
												}
											}
										}
									}
								} else {
									if(pX[3] <= 12.25){
										if(pX[4] <= 0.11400000005960464){
											if(pX[7] <= 0.9978800117969513){
												if(pX[3] <= 7.8500001430511475){
													if(pX[4] <= 0.04749999940395355){
														if(pX[6] <= 217.5){
															if(pX[6] <= 197.0){
																if(pX[3] <= 6.6000001430511475){
																	return 3;
																} else {
																	if(pX[5] <= 56.5){
																		return 2;
																	} else {
																		if(pX[0] <= 6.700000047683716){
																			return 2;
																		} else {
																			return 3;
																		}
																	}
																}
															} else {
																if(pX[3] <= 4.324999928474426){
																	return 0;
																} else {
																	return 3;
																}
															}
														} else {
															return 2;
														}
													} else {
														if(pX[5] <= 61.5){
															if(pX[3] <= 7.75){
																if(pX[6] <= 175.5){
																	if(pX[5] <= 51.5){
																		return 2;
																	} else {
																		return 4;
																	}
																} else {
																	return 2;
																}
															} else {
																if(pX[6] <= 213.5){
																	return 2;
																} else {
																	return 3;
																}
															}
														} else {
															if(pX[8] <= 3.165000081062317){
																return 2;
															} else {
																return 3;
															}
														}
													}
												} else {
													if(pX[6] <= 184.0){
														if(pX[2] <= 0.625){
															return 2;
														} else {
															if(pX[1] <= 0.3499999940395355){
																return 2;
															} else {
																return 3;
															}
														}
													} else {
														if(pX[5] <= 43.5){
															return 3;
														} else {
															if(pX[8] <= 3.1149998903274536){
																if(pX[7] <= 0.9966999888420105){
																	return 3;
																} else {
																	if(pX[2] <= 0.5600000023841858){
																		return 2;
																	} else {
																		if(pX[10] <= 8.650000095367432){
																			return 1;
																		} else {
																			return 2;
																		}
																	}
																}
															} else {
																if(pX[1] <= 0.24499999731779099){
																	if(pX[2] <= 0.4650000035762787){
																		return 3;
																	} else {
																		return 2;
																	}
																} else {
																	return 2;
																}
															}
														}
													}
												}
											} else {
												if(pX[0] <= 7.599999904632568){
													if(pX[6] <= 189.0){
														return 2;
													} else {
														if(pX[0] <= 6.6499998569488525){
															return 3;
														} else {
															return 2;
														}
													}
												} else {
													return 1;
												}
											}
										} else {
											if(pX[0] <= 6.8500001430511475){
												if(pX[3] <= 3.25){
													return 3;
												} else {
													if(pX[10] <= 9.25){
														return 2;
													} else {
														if(pX[2] <= 0.2850000113248825){
															if(pX[3] <= 5.450000047683716){
																return 3;
															} else {
																return 2;
															}
														} else {
															if(pX[9] <= 0.48999999463558197){
																return 2;
															} else {
																return 3;
															}
														}
													}
												}
											} else {
												return 2;
											}
										}
									} else {
										if(pX[4] <= 0.05849999934434891){
											if(pX[3] <= 12.75){
												return 3;
											} else {
												if(pX[1] <= 0.2849999964237213){
													if(pX[9] <= 0.7849999964237213){
														if(pX[7] <= 0.9995799958705902){
															if(pX[4] <= 0.04749999940395355){
																if(pX[3] <= 16.175000190734863){
																	return 3;
																} else {
																	if(pX[2] <= 0.24499999731779099){
																		return 3;
																	} else {
																		return 2;
																	}
																}
															} else {
																if(pX[9] <= 0.39000000059604645){
																	return 4;
																} else {
																	if(pX[5] <= 59.0){
																		return 2;
																	} else {
																		if(pX[2] <= 0.4450000077486038){
																			return 2;
																		} else {
																			return 3;
																		}
																	}
																}
															}
														} else {
															return 2;
														}
													} else {
														return 4;
													}
												} else {
													if(pX[10] <= 8.650000095367432){
														return 1;
													} else {
														if(pX[0] <= 6.6499998569488525){
															if(pX[7] <= 0.9984500110149384){
																return 2;
															} else {
																return 3;
															}
														} else {
															return 2;
														}
													}
												}
											}
										} else {
											if(pX[1] <= 0.3449999988079071){
												if(pX[9] <= 0.48999999463558197){
													return 3;
												} else {
													if(pX[0] <= 8.25){
														return 2;
													} else {
														return 3;
													}
												}
											} else {
												if(pX[9] <= 0.7599999904632568){
													return 2;
												} else {
													return 3;
												}
											}
										}
									}
								}
							}
						}
					} else {
						if(pX[3] <= 6.599999904632568){
							if(pX[4] <= 0.0625){
								if(pX[5] <= 33.5){
									if(pX[4] <= 0.060499999672174454){
										if(pX[3] <= 0.949999988079071){
											return 1;
										} else {
											if(pX[6] <= 93.0){
												return 2;
											} else {
												if(pX[7] <= 0.9974999725818634){
													return 3;
												} else {
													return 2;
												}
											}
										}
									} else {
										return 4;
									}
								} else {
									if(pX[8] <= 3.3149999380111694){
										if(pX[1] <= 0.24499999731779099){
											if(pX[6] <= 163.5){
												if(pX[2] <= 0.26500000804662704){
													if(pX[4] <= 0.04749999940395355){
														return 3;
													} else {
														return 2;
													}
												} else {
													return 3;
												}
											} else {
												if(pX[8] <= 3.1750000715255737){
													return 4;
												} else {
													if(pX[2] <= 0.27000000327825546){
														return 1;
													} else {
														return 2;
													}
												}
											}
										} else {
											if(pX[5] <= 38.75){
												if(pX[10] <= 9.849999904632568){
													if(pX[6] <= 218.0){
														return 2;
													} else {
														return 3;
													}
												} else {
													if(pX[3] <= 3.099999964237213){
														return 1;
													} else {
														if(pX[2] <= 0.11999999731779099){
															return 2;
														} else {
															if(pX[4] <= 0.04000000096857548){
																return 3;
															} else {
																return 2;
															}
														}
													}
												}
											} else {
												if(pX[9] <= 0.4449999928474426){
													if(pX[4] <= 0.054499998688697815){
														return 2;
													} else {
														return 3;
													}
												} else {
													if(pX[8] <= 3.2949999570846558){
														return 2;
													} else {
														if(pX[6] <= 177.5){
															return 3;
														} else {
															return 2;
														}
													}
												}
											}
										}
									} else {
										if(pX[1] <= 0.22499999403953552){
											if(pX[3] <= 3.549999952316284){
												return 3;
											} else {
												if(pX[6] <= 215.0){
													return 1;
												} else {
													return 3;
												}
											}
										} else {
											if(pX[2] <= 0.42499999701976776){
												if(pX[2] <= 0.32999999821186066){
													if(pX[6] <= 221.0){
														return 4;
													} else {
														return 1;
													}
												} else {
													return 5;
												}
											} else {
												return 2;
											}
										}
									}
								}
							} else {
								if(pX[10] <= 9.650000095367432){
									if(pX[6] <= 76.5){
										return 2;
									} else {
										return 3;
									}
								} else {
									if(pX[5] <= 62.5){
										if(pX[7] <= 0.9977350234985352){
											return 2;
										} else {
											return 3;
										}
									} else {
										if(pX[9] <= 0.48499998450279236){
											return 2;
										} else {
											return 1;
										}
									}
								}
							}
						} else {
							if(pX[6] <= 180.5){
								if(pX[6] <= 172.5){
									if(pX[7] <= 0.9992500245571136){
										if(pX[8] <= 3.0899999141693115){
											return 4;
										} else {
											if(pX[1] <= 0.2900000065565109){
												if(pX[6] <= 101.0){
													if(pX[1] <= 0.11499999836087227){
														return 3;
													} else {
														return 5;
													}
												} else {
													if(pX[2] <= 0.35500000417232513){
														if(pX[9] <= 0.4449999928474426){
															if(pX[9] <= 0.4299999922513962){
																if(pX[8] <= 3.2050000429153442){
																	if(pX[5] <= 72.0){
																		return 3;
																	} else {
																		return 2;
																	}
																} else {
																	if(pX[10] <= 9.75){
																		return 2;
																	} else {
																		return 3;
																	}
																}
															} else {
																if(pX[3] <= 10.649999618530273){
																	return 2;
																} else {
																	return 4;
																}
															}
														} else {
															if(pX[7] <= 0.9986500144004822){
																return 3;
															} else {
																return 2;
															}
														}
													} else {
														return 3;
													}
												}
											} else {
												if(pX[1] <= 0.38500000536441803){
													return 2;
												} else {
													if(pX[5] <= 40.5){
														return 2;
													} else {
														return 3;
													}
												}
											}
										}
									} else {
										return 2;
									}
								} else {
									if(pX[5] <= 46.5){
										if(pX[0] <= 7.099999904632568){
											return 3;
										} else {
											return 2;
										}
									} else {
										if(pX[5] <= 57.5){
											return 2;
										} else {
											if(pX[8] <= 3.15500009059906){
												return 2;
											} else {
												if(pX[9] <= 0.42000000178813934){
													return 2;
												} else {
													return 3;
												}
											}
										}
									}
								}
							} else {
								if(pX[2] <= 0.4750000089406967){
									if(pX[6] <= 246.0){
										if(pX[7] <= 0.9949750006198883){
											return 2;
										} else {
											if(pX[7] <= 0.9986500144004822){
												if(pX[7] <= 0.9961000084877014){
													if(pX[7] <= 0.9957000017166138){
														if(pX[3] <= 8.550000190734863){
															return 3;
														} else {
															return 2;
														}
													} else {
														if(pX[8] <= 3.399999976158142){
															if(pX[3] <= 7.799999952316284){
																return 3;
															} else {
																return 2;
															}
														} else {
															return 4;
														}
													}
												} else {
													if(pX[3] <= 14.849999904632568){
														if(pX[9] <= 0.4299999922513962){
															if(pX[1] <= 0.29999999701976776){
																return 3;
															} else {
																if(pX[0] <= 7.0){
																	return 2;
																} else {
																	return 3;
																}
															}
														} else {
															return 3;
														}
													} else {
														if(pX[4] <= 0.04299999959766865){
															return 3;
														} else {
															if(pX[4] <= 0.04649999924004078){
																return 4;
															} else {
																return 2;
															}
														}
													}
												}
											} else {
												if(pX[4] <= 0.053999999538064){
													return 2;
												} else {
													return 3;
												}
											}
										}
									} else {
										return 2;
									}
								} else {
									if(pX[3] <= 10.900000095367432){
										if(pX[0] <= 8.700000047683716){
											return 3;
										} else {
											return 1;
										}
									} else {
										return 4;
									}
								}
							}
						}
					}
				}
			}
		} else {
			if(pX[9] <= 0.6850000023841858){
				if(pX[7] <= 0.9953649938106537){
					if(pX[2] <= 0.3050000071525574){
						if(pX[5] <= 117.0){
							if(pX[10] <= 11.550000190734863){
								if(pX[1] <= 0.3149999976158142){
									if(pX[6] <= 162.5){
										if(pX[8] <= 3.4100000858306885){
											if(pX[7] <= 0.9931049942970276){
												if(pX[2] <= 0.23499999940395355){
													if(pX[10] <= 10.900000095367432){
														if(pX[6] <= 135.5){
															return 3;
														} else {
															return 2;
														}
													} else {
														return 2;
													}
												} else {
													if(pX[6] <= 82.0){
														return 2;
													} else {
														if(pX[5] <= 16.5){
															return 5;
														} else {
															if(pX[6] <= 134.0){
																return 3;
															} else {
																if(pX[0] <= 5.900000095367432){
																	return 4;
																} else {
																	if(pX[9] <= 0.5999999940395355){
																		return 3;
																	} else {
																		if(pX[3] <= 1.449999988079071){
																			return 3;
																		} else {
																			return 4;
																		}
																	}
																}
															}
														}
													}
												}
											} else {
												if(pX[6] <= 116.5){
													if(pX[7] <= 0.994715005159378){
														if(pX[9] <= 0.36500000953674316){
															if(pX[1] <= 0.2475000023841858){
																return 2;
															} else {
																return 3;
															}
														} else {
															if(pX[4] <= 0.0364999994635582){
																if(pX[3] <= 3.5500000715255737){
																	return 1;
																} else {
																	if(pX[6] <= 98.5){
																		if(pX[2] <= 0.2749999910593033){
																			return 2;
																		} else {
																			return 4;
																		}
																	} else {
																		if(pX[0] <= 7.25){
																			return 5;
																		} else {
																			return 3;
																		}
																	}
																}
															} else {
																if(pX[3] <= 8.700000286102295){
																	if(pX[1] <= 0.16999999806284904){
																		return 4;
																	} else {
																		return 5;
																	}
																} else {
																	return 4;
																}
															}
														}
													} else {
														return 3;
													}
												} else {
													if(pX[10] <= 10.550000190734863){
														if(pX[9] <= 0.4599999934434891){
															if(pX[0] <= 6.950000047683716){
																if(pX[5] <= 27.0){
																	return 2;
																} else {
																	return 4;
																}
															} else {
																if(pX[5] <= 29.0){
																	return 2;
																} else {
																	return 5;
																}
															}
														} else {
															if(pX[7] <= 0.9938900172710419){
																return 2;
															} else {
																return 3;
															}
														}
													} else {
														if(pX[8] <= 3.1700000762939453){
															return 3;
														} else {
															if(pX[1] <= 0.22999999672174454){
																if(pX[9] <= 0.375){
																	return 3;
																} else {
																	return 2;
																}
															} else {
																if(pX[9] <= 0.48000000417232513){
																	if(pX[3] <= 12.75){
																		return 3;
																	} else {
																		return 5;
																	}
																} else {
																	return 3;
																}
															}
														}
													}
												}
											}
										} else {
											if(pX[1] <= 0.2199999988079071){
												if(pX[6] <= 114.5){
													if(pX[9] <= 0.6449999809265137){
														if(pX[5] <= 14.5){
															return 3;
														} else {
															return 4;
														}
													} else {
														return 3;
													}
												} else {
													if(pX[3] <= 6.1499998569488525){
														if(pX[10] <= 10.900000095367432){
															return 3;
														} else {
															if(pX[8] <= 3.4550000429153442){
																return 2;
															} else {
																return 3;
															}
														}
													} else {
														return 2;
													}
												}
											} else {
												if(pX[9] <= 0.5850000083446503){
													if(pX[6] <= 133.0){
														if(pX[1] <= 0.26999999582767487){
															return 4;
														} else {
															if(pX[3] <= 1.6500000357627869){
																return 4;
															} else {
																return 5;
															}
														}
													} else {
														return 4;
													}
												} else {
													return 3;
												}
											}
										}
									} else {
										if(pX[4] <= 0.04150000028312206){
											if(pX[10] <= 10.550000190734863){
												return 3;
											} else {
												if(pX[3] <= 5.25){
													return 2;
												} else {
													if(pX[3] <= 6.549999952316284){
														return 4;
													} else {
														return 3;
													}
												}
											}
										} else {
											return 3;
										}
									}
								} else {
									if(pX[4] <= 0.035499999299645424){
										if(pX[6] <= 139.5){
											if(pX[3] <= 7.400000095367432){
												if(pX[7] <= 0.9936700165271759){
													return 4;
												} else {
													return 2;
												}
											} else {
												return 3;
											}
										} else {
											return 4;
										}
									} else {
										if(pX[9] <= 0.6050000190734863){
											if(pX[1] <= 0.3700000047683716){
												if(pX[2] <= 0.2900000065565109){
													if(pX[6] <= 113.0){
														if(pX[7] <= 0.9938800036907196){
															return 3;
														} else {
															if(pX[9] <= 0.3700000047683716){
																return 5;
															} else {
																return 2;
															}
														}
													} else {
														return 2;
													}
												} else {
													if(pX[7] <= 0.9929450154304504){
														return 3;
													} else {
														if(pX[7] <= 0.9932549893856049){
															return 2;
														} else {
															if(pX[7] <= 0.9942049980163574){
																return 3;
															} else {
																return 2;
															}
														}
													}
												}
											} else {
												if(pX[2] <= 0.04999999888241291){
													if(pX[4] <= 0.06799999997019768){
														return 1;
													} else {
														if(pX[6] <= 42.0){
															if(pX[4] <= 0.08799999952316284){
																if(pX[7] <= 0.9943749904632568){
																	return 1;
																} else {
																	return 3;
																}
															} else {
																if(pX[7] <= 0.9951750040054321){
																	return 4;
																} else {
																	return 2;
																}
															}
														} else {
															return 2;
														}
													}
												} else {
													if(pX[7] <= 0.9922749996185303){
														return 2;
													} else {
														if(pX[10] <= 10.849999904632568){
															if(pX[5] <= 13.5){
																return 1;
															} else {
																if(pX[3] <= 5.849999904632568){
																	return 3;
																} else {
																	if(pX[3] <= 7.349999904632568){
																		return 2;
																	} else {
																		return 3;
																	}
																}
															}
														} else {
															if(pX[9] <= 0.4950000047683716){
																if(pX[8] <= 3.5){
																	return 3;
																} else {
																	return 1;
																}
															} else {
																if(pX[8] <= 3.225000023841858){
																	if(pX[3] <= 4.25){
																		return 3;
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[4] <= 0.08650000020861626){
																		if(pX[5] <= 29.5){
																			return 2;
																		} else {
																			return 5;
																		}
																	} else {
																		return 1;
																	}
																}
															}
														}
													}
												}
											}
										} else {
											if(pX[6] <= 26.0){
												if(pX[0] <= 6.900000095367432){
													return 3;
												} else {
													return 4;
												}
											} else {
												return 3;
											}
										}
									}
								}
							} else {
								if(pX[7] <= 0.9950900077819824){
									if(pX[3] <= 12.75){
										if(pX[4] <= 0.05049999989569187){
											if(pX[4] <= 0.04600000008940697){
												if(pX[4] <= 0.027500000782310963){
													if(pX[6] <= 117.0){
														if(pX[5] <= 18.5){
															if(pX[2] <= 0.21000000461935997){
																return 1;
															} else {
																return 2;
															}
														} else {
															return 3;
														}
													} else {
														return 5;
													}
												} else {
													return 3;
												}
											} else {
												return 2;
											}
										} else {
											if(pX[5] <= 12.5){
												if(pX[7] <= 0.9945300221443176){
													return 3;
												} else {
													if(pX[5] <= 10.5){
														return 3;
													} else {
														return 1;
													}
												}
											} else {
												return 3;
											}
										}
									} else {
										if(pX[6] <= 135.5){
											return 4;
										} else {
											return 3;
										}
									}
								} else {
									if(pX[6] <= 136.5){
										if(pX[2] <= 0.13000000175088644){
											return 4;
										} else {
											if(pX[8] <= 3.399999976158142){
												return 4;
											} else {
												return 3;
											}
										}
									} else {
										return 5;
									}
								}
							}
						} else {
							return 0;
						}
					} else {
						if(pX[6] <= 24.5){
							if(pX[5] <= 3.5){
								return 3;
							} else {
								return 4;
							}
						} else {
							if(pX[3] <= 1.449999988079071){
								if(pX[8] <= 3.1500000953674316){
									if(pX[6] <= 72.5){
										if(pX[10] <= 10.599999904632568){
											return 1;
										} else {
											return 3;
										}
									} else {
										return 3;
									}
								} else {
									if(pX[6] <= 157.5){
										if(pX[7] <= 0.9928649961948395){
											if(pX[1] <= 0.26499999314546585){
												return 4;
											} else {
												if(pX[9] <= 0.3450000137090683){
													return 3;
												} else {
													return 1;
												}
											}
										} else {
											if(pX[5] <= 24.0){
												if(pX[0] <= 6.599999904632568){
													return 3;
												} else {
													return 2;
												}
											} else {
												return 3;
											}
										}
									} else {
										if(pX[9] <= 0.5399999916553497){
											return 2;
										} else {
											return 4;
										}
									}
								}
							} else {
								if(pX[5] <= 13.5){
									if(pX[10] <= 11.75){
										if(pX[0] <= 6.75){
											if(pX[0] <= 6.1499998569488525){
												return 3;
											} else {
												if(pX[3] <= 8.649999856948853){
													return 5;
												} else {
													return 1;
												}
											}
										} else {
											if(pX[3] <= 7.0){
												if(pX[9] <= 0.554999977350235){
													return 2;
												} else {
													if(pX[5] <= 6.5){
														return 1;
													} else {
														if(pX[1] <= 0.19999999552965164){
															return 1;
														} else {
															return 2;
														}
													}
												}
											} else {
												if(pX[8] <= 3.1600000858306885){
													return 3;
												} else {
													return 2;
												}
											}
										}
									} else {
										if(pX[6] <= 96.5){
											return 3;
										} else {
											if(pX[9] <= 0.4399999976158142){
												return 4;
											} else {
												return 2;
											}
										}
									}
								} else {
									if(pX[3] <= 8.724999904632568){
										if(pX[7] <= 0.9922100007534027){
											if(pX[8] <= 3.149999976158142){
												return 3;
											} else {
												if(pX[3] <= 6.700000047683716){
													return 4;
												} else {
													if(pX[1] <= 0.3099999949336052){
														return 5;
													} else {
														return 4;
													}
												}
											}
										} else {
											if(pX[9] <= 0.5849999785423279){
												if(pX[4] <= 0.035499999299645424){
													if(pX[4] <= 0.02350000012665987){
														if(pX[8] <= 3.0700000524520874){
															return 4;
														} else {
															if(pX[7] <= 0.993149995803833){
																return 3;
															} else {
																return 5;
															}
														}
													} else {
														if(pX[3] <= 4.6499998569488525){
															if(pX[5] <= 22.5){
																if(pX[2] <= 0.3450000137090683){
																	return 4;
																} else {
																	return 3;
																}
															} else {
																if(pX[4] <= 0.03350000083446503){
																	return 4;
																} else {
																	return 2;
																}
															}
														} else {
															if(pX[8] <= 3.3950001001358032){
																if(pX[8] <= 3.1950000524520874){
																	if(pX[2] <= 0.42499999701976776){
																		if(pX[0] <= 6.700000047683716){
																			if(pX[10] <= 10.699999809265137){
																				return 2;
																			} else {
																				return 5;
																			}
																		} else {
																			return 3;
																		}
																	} else {
																		return 5;
																	}
																} else {
																	return 3;
																}
															} else {
																if(pX[4] <= 0.029999999329447746){
																	return 2;
																} else {
																	return 5;
																}
															}
														}
													}
												} else {
													if(pX[1] <= 0.2149999961256981){
														if(pX[6] <= 126.5){
															if(pX[10] <= 11.449999809265137){
																if(pX[7] <= 0.9936600029468536){
																	if(pX[4] <= 0.04600000008940697){
																		if(pX[9] <= 0.42000000178813934){
																			return 3;
																		} else {
																			return 4;
																		}
																	} else {
																		if(pX[7] <= 0.9925999939441681){
																			return 4;
																		} else {
																			return 5;
																		}
																	}
																} else {
																	if(pX[5] <= 22.5){
																		if(pX[7] <= 0.9945499897003174){
																			return 2;
																		} else {
																			return 4;
																		}
																	} else {
																		if(pX[10] <= 10.25){
																			return 4;
																		} else {
																			return 3;
																		}
																	}
																}
															} else {
																return 3;
															}
														} else {
															if(pX[2] <= 0.4050000011920929){
																if(pX[9] <= 0.550000011920929){
																	if(pX[6] <= 146.0){
																		return 4;
																	} else {
																		if(pX[5] <= 35.5){
																			return 4;
																		} else {
																			if(pX[2] <= 0.39000000059604645){
																				return 2;
																			} else {
																				return 4;
																			}
																		}
																	}
																} else {
																	if(pX[10] <= 10.650000095367432){
																		return 4;
																	} else {
																		return 3;
																	}
																}
															} else {
																if(pX[8] <= 3.115000009536743){
																	if(pX[6] <= 166.0){
																		if(pX[8] <= 3.0299999713897705){
																			return 3;
																		} else {
																			return 4;
																		}
																	} else {
																		if(pX[4] <= 0.038999998942017555){
																			return 3;
																		} else {
																			return 2;
																		}
																	}
																} else {
																	return 3;
																}
															}
														}
													} else {
														if(pX[4] <= 0.048499999567866325){
															if(pX[7] <= 0.9949599802494049){
																if(pX[10] <= 12.25){
																	if(pX[1] <= 0.22500000149011612){
																		if(pX[2] <= 0.32500000298023224){
																			return 3;
																		} else {
																			if(pX[6] <= 109.5){
																				return 2;
																			} else {
																				return 4;
																			}
																		}
																	} else {
																		if(pX[8] <= 3.284999966621399){
																			if(pX[9] <= 0.35500000417232513){
																				if(pX[6] <= 156.5){
																					if(pX[1] <= 0.25999999791383743){
																						if(pX[4] <= 0.039499999955296516){
																							return 4;
																						} else {
																							return 3;
																						}
																					} else {
																						return 3;
																					}
																				} else {
																					return 4;
																				}
																			} else {
																				return 3;
																			}
																		} else {
																			if(pX[1] <= 0.2499999925494194){
																				return 4;
																			} else {
																				if(pX[0] <= 6.950000047683716){
																					if(pX[5] <= 36.5){
																						return 4;
																					} else {
																						if(pX[10] <= 11.149999618530273){
																							return 4;
																						} else {
																							return 3;
																						}
																					}
																				} else {
																					return 3;
																				}
																			}
																		}
																	}
																} else {
																	if(pX[4] <= 0.042500000447034836){
																		return 2;
																	} else {
																		return 4;
																	}
																}
															} else {
																return 1;
															}
														} else {
															if(pX[3] <= 3.6499998569488525){
																if(pX[4] <= 0.04999999888241291){
																	return 5;
																} else {
																	return 3;
																}
															} else {
																if(pX[3] <= 5.75){
																	return 2;
																} else {
																	if(pX[9] <= 0.4649999886751175){
																		return 2;
																	} else {
																		return 3;
																	}
																}
															}
														}
													}
												}
											} else {
												if(pX[10] <= 11.050000190734863){
													if(pX[1] <= 0.3399999886751175){
														if(pX[8] <= 3.549999952316284){
															if(pX[6] <= 138.0){
																if(pX[10] <= 10.150000095367432){
																	if(pX[7] <= 0.9928950071334839){
																		return 4;
																	} else {
																		return 1;
																	}
																} else {
																	return 3;
																}
															} else {
																return 3;
															}
														} else {
															return 4;
														}
													} else {
														if(pX[9] <= 0.6550000011920929){
															return 1;
														} else {
															return 2;
														}
													}
												} else {
													if(pX[7] <= 0.9947600066661835){
														if(pX[4] <= 0.07799999788403511){
															if(pX[0] <= 7.6000001430511475){
																return 1;
															} else {
																return 3;
															}
														} else {
															return 5;
														}
													} else {
														return 2;
													}
												}
											}
										}
									} else {
										if(pX[1] <= 0.33500000834465027){
											if(pX[3] <= 9.599999904632568){
												if(pX[9] <= 0.4050000011920929){
													if(pX[8] <= 3.1299999952316284){
														return 4;
													} else {
														if(pX[5] <= 34.5){
															return 4;
														} else {
															return 3;
														}
													}
												} else {
													if(pX[8] <= 3.2200000286102295){
														return 2;
													} else {
														return 4;
													}
												}
											} else {
												if(pX[5] <= 54.0){
													if(pX[6] <= 131.0){
														if(pX[3] <= 11.149999618530273){
															if(pX[7] <= 0.9933249950408936){
																return 4;
															} else {
																return 3;
															}
														} else {
															if(pX[9] <= 0.4350000023841858){
																return 5;
															} else {
																if(pX[7] <= 0.9947599768638611){
																	return 3;
																} else {
																	return 4;
																}
															}
														}
													} else {
														return 3;
													}
												} else {
													if(pX[2] <= 0.39000000059604645){
														return 2;
													} else {
														return 4;
													}
												}
											}
										} else {
											if(pX[0] <= 6.900000095367432){
												return 4;
											} else {
												if(pX[5] <= 30.5){
													if(pX[9] <= 0.3399999886751175){
														return 2;
													} else {
														return 3;
													}
												} else {
													return 5;
												}
											}
										}
									}
								}
							}
						}
					}
				} else {
					if(pX[10] <= 11.25){
						if(pX[2] <= 0.42499999701976776){
							if(pX[10] <= 11.150000095367432){
								if(pX[7] <= 0.9961950182914734){
									if(pX[5] <= 18.5){
										if(pX[9] <= 0.5450000166893005){
											if(pX[8] <= 3.215000033378601){
												return 3;
											} else {
												if(pX[1] <= 0.6075000166893005){
													if(pX[3] <= 2.149999976158142){
														return 3;
													} else {
														return 2;
													}
												} else {
													return 2;
												}
											}
										} else {
											if(pX[8] <= 3.1399999856948853){
												return 2;
											} else {
												if(pX[3] <= 1.8499999642372131){
													if(pX[8] <= 3.2949999570846558){
														return 3;
													} else {
														if(pX[1] <= 0.4949999898672104){
															return 2;
														} else {
															return 4;
														}
													}
												} else {
													return 3;
												}
											}
										}
									} else {
										if(pX[8] <= 3.430000066757202){
											if(pX[10] <= 10.849999904632568){
												if(pX[1] <= 0.2149999961256981){
													return 3;
												} else {
													if(pX[6] <= 194.0){
														if(pX[2] <= 0.3100000023841858){
															return 3;
														} else {
															if(pX[9] <= 0.5949999988079071){
																if(pX[4] <= 0.038999998942017555){
																	return 3;
																} else {
																	if(pX[5] <= 23.0){
																		return 4;
																	} else {
																		if(pX[1] <= 0.24000000208616257){
																			return 4;
																		} else {
																			return 3;
																		}
																	}
																}
															} else {
																return 2;
															}
														}
													} else {
														if(pX[7] <= 0.9955250024795532){
															if(pX[2] <= 0.32999999821186066){
																return 3;
															} else {
																return 2;
															}
														} else {
															return 2;
														}
													}
												}
											} else {
												if(pX[5] <= 28.5){
													return 2;
												} else {
													return 3;
												}
											}
										} else {
											if(pX[0] <= 6.700000047683716){
												return 3;
											} else {
												if(pX[2] <= 0.07499999832361937){
													return 3;
												} else {
													return 2;
												}
											}
										}
									}
								} else {
									if(pX[7] <= 0.9970199763774872){
										if(pX[9] <= 0.5600000023841858){
											if(pX[9] <= 0.4299999922513962){
												if(pX[6] <= 118.5){
													if(pX[5] <= 15.0){
														if(pX[2] <= 0.26500000059604645){
															return 2;
														} else {
															return 3;
														}
													} else {
														return 1;
													}
												} else {
													return 3;
												}
											} else {
												if(pX[8] <= 3.5800000429153442){
													if(pX[0] <= 7.700000047683716){
														return 2;
													} else {
														if(pX[4] <= 0.0409999992698431){
															return 2;
														} else {
															if(pX[2] <= 0.12999999523162842){
																return 2;
															} else {
																return 3;
															}
														}
													}
												} else {
													return 0;
												}
											}
										} else {
											if(pX[4] <= 0.08650000020861626){
												if(pX[3] <= 1.899999976158142){
													return 2;
												} else {
													if(pX[2] <= 0.2800000011920929){
														if(pX[1] <= 0.9474999904632568){
															if(pX[6] <= 18.5){
																return 1;
															} else {
																if(pX[7] <= 0.9965499937534332){
																	if(pX[9] <= 0.6300000250339508){
																		return 3;
																	} else {
																		return 2;
																	}
																} else {
																	if(pX[0] <= 7.349999904632568){
																		return 4;
																	} else {
																		return 3;
																	}
																}
															}
														} else {
															return 1;
														}
													} else {
														if(pX[7] <= 0.9965699911117554){
															return 4;
														} else {
															if(pX[9] <= 0.6349999904632568){
																return 2;
															} else {
																return 4;
															}
														}
													}
												}
											} else {
												if(pX[1] <= 0.6050000190734863){
													return 3;
												} else {
													return 2;
												}
											}
										}
									} else {
										if(pX[10] <= 10.525000095367432){
											if(pX[2] <= 0.3799999952316284){
												if(pX[10] <= 10.449999809265137){
													if(pX[1] <= 0.6175000071525574){
														if(pX[0] <= 7.900000095367432){
															if(pX[8] <= 3.2100000381469727){
																return 2;
															} else {
																if(pX[8] <= 3.5299999713897705){
																	if(pX[9] <= 0.5200000107288361){
																		return 2;
																	} else {
																		if(pX[6] <= 183.0){
																			return 3;
																		} else {
																			if(pX[1] <= 0.2800000011920929){
																				return 4;
																			} else {
																				return 3;
																			}
																		}
																	}
																} else {
																	return 2;
																}
															}
														} else {
															return 3;
														}
													} else {
														if(pX[9] <= 0.5850000083446503){
															if(pX[5] <= 9.0){
																return 0;
															} else {
																return 1;
															}
														} else {
															if(pX[10] <= 10.349999904632568){
																return 2;
															} else {
																return 3;
															}
														}
													}
												} else {
													if(pX[3] <= 16.72499942779541){
														if(pX[0] <= 9.700000286102295){
															if(pX[7] <= 0.9971249997615814){
																return 0;
															} else {
																return 2;
															}
														} else {
															return 3;
														}
													} else {
														return 3;
													}
												}
											} else {
												return 3;
											}
										} else {
											return 3;
										}
									}
								}
							} else {
								if(pX[3] <= 2.799999952316284){
									return 2;
								} else {
									if(pX[8] <= 3.3550000190734863){
										return 2;
									} else {
										return 1;
									}
								}
							}
						} else {
							if(pX[1] <= 0.39499999582767487){
								if(pX[1] <= 0.38499999046325684){
									if(pX[10] <= 10.25){
										if(pX[9] <= 0.675000011920929){
											return 3;
										} else {
											return 2;
										}
									} else {
										if(pX[4] <= 0.03700000047683716){
											if(pX[8] <= 3.1700000762939453){
												return 2;
											} else {
												return 6;
											}
										} else {
											if(pX[5] <= 37.0){
												if(pX[7] <= 0.9983850121498108){
													if(pX[2] <= 0.4950000047683716){
														if(pX[0] <= 7.549999952316284){
															return 4;
														} else {
															if(pX[0] <= 10.949999809265137){
																return 2;
															} else {
																return 4;
															}
														}
													} else {
														return 2;
													}
												} else {
													if(pX[5] <= 8.5){
														return 3;
													} else {
														return 2;
													}
												}
											} else {
												return 3;
											}
										}
									}
								} else {
									return 3;
								}
							} else {
								if(pX[1] <= 0.9350000023841858){
									if(pX[6] <= 49.5){
										if(pX[0] <= 7.299999952316284){
											return 1;
										} else {
											if(pX[6] <= 24.0){
												return 2;
											} else {
												if(pX[9] <= 0.6550000011920929){
													if(pX[9] <= 0.5850000083446503){
														return 2;
													} else {
														return 3;
													}
												} else {
													return 2;
												}
											}
										}
									} else {
										return 2;
									}
								} else {
									return 3;
								}
							}
						}
					} else {
						if(pX[6] <= 10.5){
							if(pX[7] <= 0.9964050054550171){
								if(pX[8] <= 3.274999976158142){
									return 4;
								} else {
									return 1;
								}
							} else {
								if(pX[2] <= 0.42000000178813934){
									return 4;
								} else {
									return 3;
								}
							}
						} else {
							if(pX[5] <= 52.0){
								if(pX[5] <= 4.5){
									return 2;
								} else {
									if(pX[0] <= 12.299999713897705){
										if(pX[0] <= 6.25){
											if(pX[7] <= 0.9954899847507477){
												return 2;
											} else {
												return 3;
											}
										} else {
											if(pX[3] <= 13.5){
												if(pX[5] <= 6.5){
													if(pX[8] <= 3.215000033378601){
														if(pX[0] <= 10.550000190734863){
															return 4;
														} else {
															return 3;
														}
													} else {
														return 3;
													}
												} else {
													return 3;
												}
											} else {
												if(pX[7] <= 0.9959000051021576){
													return 4;
												} else {
													return 3;
												}
											}
										}
									} else {
										if(pX[2] <= 0.6200000047683716){
											if(pX[6] <= 33.0){
												return 2;
											} else {
												return 3;
											}
										} else {
											return 4;
										}
									}
								}
							} else {
								return 2;
							}
						}
					}
				}
			} else {
				if(pX[0] <= 14.75){
					if(pX[10] <= 11.550000190734863){
						if(pX[8] <= 3.0){
							return 2;
						} else {
							if(pX[5] <= 21.5){
								if(pX[9] <= 0.824999988079071){
									if(pX[2] <= 0.06499999947845936){
										return 2;
									} else {
										if(pX[3] <= 1.949999988079071){
											if(pX[1] <= 0.1850000023841858){
												return 2;
											} else {
												if(pX[4] <= 0.054999999701976776){
													if(pX[8] <= 3.134999990463257){
														return 3;
													} else {
														return 2;
													}
												} else {
													return 3;
												}
											}
										} else {
											if(pX[1] <= 0.3100000023841858){
												if(pX[2] <= 0.4700000137090683){
													return 4;
												} else {
													if(pX[10] <= 10.700000286102295){
														return 3;
													} else {
														return 4;
													}
												}
											} else {
												if(pX[6] <= 62.0){
													if(pX[4] <= 0.06300000101327896){
														if(pX[5] <= 14.5){
															return 2;
														} else {
															if(pX[6] <= 28.5){
																return 4;
															} else {
																return 5;
															}
														}
													} else {
														if(pX[9] <= 0.7150000035762787){
															if(pX[1] <= 0.5474999994039536){
																if(pX[1] <= 0.39499999582767487){
																	return 3;
																} else {
																	return 2;
																}
															} else {
																return 4;
															}
														} else {
															if(pX[9] <= 0.7350000143051147){
																return 3;
															} else {
																if(pX[3] <= 2.6999999284744263){
																	if(pX[3] <= 2.049999952316284){
																		if(pX[9] <= 0.7750000059604645){
																			return 3;
																		} else {
																			return 4;
																		}
																	} else {
																		return 3;
																	}
																} else {
																	if(pX[7] <= 1.0006000101566315){
																		return 4;
																	} else {
																		return 3;
																	}
																}
															}
														}
													}
												} else {
													if(pX[9] <= 0.7249999940395355){
														if(pX[8] <= 3.305000066757202){
															return 1;
														} else {
															return 2;
														}
													} else {
														return 2;
													}
												}
											}
										}
									}
								} else {
									if(pX[10] <= 10.400000095367432){
										if(pX[1] <= 0.45000001788139343){
											return 3;
										} else {
											return 2;
										}
									} else {
										if(pX[7] <= 0.9986500144004822){
											if(pX[4] <= 0.10049999877810478){
												if(pX[9] <= 1.10999995470047){
													if(pX[4] <= 0.07450000196695328){
														if(pX[8] <= 3.200000047683716){
															return 4;
														} else {
															if(pX[9] <= 0.875){
																if(pX[3] <= 4.100000023841858){
																	return 3;
																} else {
																	return 2;
																}
															} else {
																if(pX[3] <= 3.5999999046325684){
																	return 4;
																} else {
																	return 3;
																}
															}
														}
													} else {
														return 4;
													}
												} else {
													return 3;
												}
											} else {
												return 2;
											}
										} else {
											return 3;
										}
									}
								}
							} else {
								if(pX[5] <= 35.5){
									if(pX[4] <= 0.06799999997019768){
										if(pX[0] <= 7.3500001430511475){
											return 3;
										} else {
											if(pX[7] <= 0.9952200055122375){
												if(pX[8] <= 3.3049999475479126){
													return 2;
												} else {
													return 4;
												}
											} else {
												return 3;
											}
										}
									} else {
										if(pX[1] <= 0.3700000047683716){
											if(pX[2] <= 0.4450000077486038){
												if(pX[8] <= 3.475000023841858){
													return 2;
												} else {
													return 3;
												}
											} else {
												if(pX[8] <= 3.2899999618530273){
													return 2;
												} else {
													return 4;
												}
											}
										} else {
											if(pX[2] <= 0.5900000035762787){
												if(pX[6] <= 113.5){
													if(pX[8] <= 3.4950000047683716){
														return 3;
													} else {
														return 2;
													}
												} else {
													return 2;
												}
											} else {
												return 2;
											}
										}
									}
								} else {
									if(pX[0] <= 6.549999952316284){
										if(pX[3] <= 3.600000023841858){
											return 3;
										} else {
											if(pX[2] <= 0.49000000953674316){
												return 4;
											} else {
												return 2;
											}
										}
									} else {
										if(pX[7] <= 0.995199978351593){
											if(pX[10] <= 10.400000095367432){
												return 2;
											} else {
												return 4;
											}
										} else {
											if(pX[3] <= 2.049999952316284){
												if(pX[5] <= 43.0){
													return 3;
												} else {
													return 4;
												}
											} else {
												return 3;
											}
										}
									}
								}
							}
						}
					} else {
						if(pX[6] <= 57.0){
							if(pX[7] <= 0.9973500072956085){
								if(pX[7] <= 0.9948999881744385){
									if(pX[2] <= 0.4099999964237213){
										if(pX[10] <= 11.849999904632568){
											if(pX[6] <= 52.0){
												return 3;
											} else {
												return 4;
											}
										} else {
											return 4;
										}
									} else {
										if(pX[1] <= 0.3500000089406967){
											if(pX[6] <= 28.0){
												return 4;
											} else {
												return 3;
											}
										} else {
											return 3;
										}
									}
								} else {
									if(pX[9] <= 0.6949999928474426){
										return 3;
									} else {
										if(pX[3] <= 3.25){
											if(pX[1] <= 0.3500000089406967){
												return 4;
											} else {
												if(pX[6] <= 24.5){
													if(pX[9] <= 0.7349999845027924){
														return 4;
													} else {
														return 3;
													}
												} else {
													return 4;
												}
											}
										} else {
											if(pX[2] <= 0.4350000023841858){
												return 4;
											} else {
												if(pX[10] <= 12.5){
													return 4;
												} else {
													return 5;
												}
											}
										}
									}
								}
							} else {
								if(pX[9] <= 0.8849999904632568){
									if(pX[9] <= 0.824999988079071){
										if(pX[10] <= 12.25){
											return 3;
										} else {
											return 5;
										}
									} else {
										return 4;
									}
								} else {
									return 3;
								}
							}
						} else {
							if(pX[7] <= 0.9927449822425842){
								if(pX[0] <= 6.3500001430511475){
									return 4;
								} else {
									if(pX[7] <= 0.9924499988555908){
										return 3;
									} else {
										if(pX[0] <= 7.0){
											return 5;
										} else {
											return 3;
										}
									}
								}
							} else {
								if(pX[0] <= 9.099999904632568){
									return 3;
								} else {
									return 4;
								}
							}
						}
					}
				} else {
					return 2;
				}
			}
		}
	}
}
unsigned int LLVMTAStandardIfTree_predict1(float const pX[11]){
	if(pX[2] <= 0.23499999940395355){
		if(pX[8] <= 3.2949999570846558){
			if(pX[1] <= 0.2549999952316284){
				if(pX[6] <= 171.0){
					if(pX[5] <= 24.5){
						if(pX[6] <= 98.0){
							if(pX[3] <= 4.349999964237213){
								return 2;
							} else {
								return 3;
							}
						} else {
							if(pX[7] <= 0.9918200075626373){
								if(pX[10] <= 11.433333396911621){
									return 3;
								} else {
									return 2;
								}
							} else {
								return 2;
							}
						}
					} else {
						if(pX[5] <= 43.5){
							if(pX[9] <= 0.625){
								if(pX[7] <= 0.9912000000476837){
									if(pX[6] <= 119.5){
										return 3;
									} else {
										return 4;
									}
								} else {
									return 3;
								}
							} else {
								return 2;
							}
						} else {
							if(pX[4] <= 0.04450000077486038){
								return 3;
							} else {
								if(pX[5] <= 52.5){
									return 2;
								} else {
									if(pX[9] <= 0.48000000417232513){
										return 3;
									} else {
										return 2;
									}
								}
							}
						}
					}
				} else {
					if(pX[1] <= 0.22500000149011612){
						return 3;
					} else {
						if(pX[2] <= 0.20499999821186066){
							return 2;
						} else {
							if(pX[9] <= 0.4649999886751175){
								return 2;
							} else {
								return 3;
							}
						}
					}
				}
			} else {
				if(pX[10] <= 10.050000190734863){
					if(pX[3] <= 0.949999988079071){
						if(pX[1] <= 0.4449999928474426){
							return 2;
						} else {
							return 1;
						}
					} else {
						if(pX[4] <= 0.032500000670552254){
							return 3;
						} else {
							if(pX[2] <= 0.1550000011920929){
								if(pX[10] <= 8.549999713897705){
									return 1;
								} else {
									if(pX[8] <= 3.09499990940094){
										if(pX[9] <= 0.5249999910593033){
											if(pX[3] <= 1.550000011920929){
												return 2;
											} else {
												if(pX[9] <= 0.4099999964237213){
													return 2;
												} else {
													return 3;
												}
											}
										} else {
											return 3;
										}
									} else {
										if(pX[1] <= 1.0024999678134918){
											if(pX[0] <= 5.849999904632568){
												if(pX[0] <= 5.6499998569488525){
													return 2;
												} else {
													return 3;
												}
											} else {
												if(pX[8] <= 3.284999966621399){
													if(pX[9] <= 0.36500000953674316){
														if(pX[0] <= 6.400000095367432){
															return 3;
														} else {
															return 2;
														}
													} else {
														if(pX[6] <= 41.5){
															if(pX[9] <= 0.6649999916553497){
																return 2;
															} else {
																return 3;
															}
														} else {
															return 2;
														}
													}
												} else {
													if(pX[5] <= 13.5){
														return 3;
													} else {
														return 2;
													}
												}
											}
										} else {
											return 3;
										}
									}
								}
							} else {
								if(pX[4] <= 0.05350000038743019){
									if(pX[9] <= 0.4050000011920929){
										if(pX[9] <= 0.3150000125169754){
											return 1;
										} else {
											if(pX[4] <= 0.0494999997317791){
												if(pX[10] <= 8.949999809265137){
													return 2;
												} else {
													if(pX[8] <= 3.190000057220459){
														return 3;
													} else {
														if(pX[5] <= 55.0){
															return 2;
														} else {
															return 3;
														}
													}
												}
											} else {
												return 2;
											}
										}
									} else {
										if(pX[9] <= 0.6399999856948853){
											if(pX[7] <= 0.9925349950790405){
												return 1;
											} else {
												if(pX[6] <= 197.5){
													return 2;
												} else {
													if(pX[9] <= 0.6100000143051147){
														if(pX[6] <= 201.5){
															return 3;
														} else {
															return 2;
														}
													} else {
														return 3;
													}
												}
											}
										} else {
											if(pX[9] <= 0.6699999868869781){
												return 3;
											} else {
												return 2;
											}
										}
									}
								} else {
									if(pX[5] <= 55.5){
										if(pX[2] <= 0.19500000029802322){
											if(pX[3] <= 1.800000011920929){
												if(pX[0] <= 6.150000095367432){
													return 1;
												} else {
													return 2;
												}
											} else {
												if(pX[6] <= 71.0){
													return 3;
												} else {
													if(pX[1] <= 0.45499998331069946){
														return 3;
													} else {
														if(pX[2] <= 0.1850000023841858){
															return 2;
														} else {
															if(pX[6] <= 86.5){
																return 1;
															} else {
																return 3;
															}
														}
													}
												}
											}
										} else {
											if(pX[3] <= 11.549999713897705){
												if(pX[0] <= 9.549999713897705){
													if(pX[4] <= 0.06549999862909317){
														if(pX[1] <= 0.35500000417232513){
															return 3;
														} else {
															if(pX[3] <= 9.150000095367432){
																return 3;
															} else {
																return 2;
															}
														}
													} else {
														if(pX[4] <= 0.07050000131130219){
															if(pX[1] <= 0.6425000131130219){
																return 2;
															} else {
																return 3;
															}
														} else {
															if(pX[8] <= 3.2549999952316284){
																return 2;
															} else {
																if(pX[3] <= 2.399999976158142){
																	if(pX[8] <= 3.2649999856948853){
																		return 3;
																	} else {
																		return 2;
																	}
																} else {
																	return 2;
																}
															}
														}
													}
												} else {
													return 3;
												}
											} else {
												if(pX[6] <= 148.5){
													return 1;
												} else {
													if(pX[8] <= 3.1350001096725464){
														if(pX[3] <= 15.550000190734863){
															return 1;
														} else {
															return 0;
														}
													} else {
														if(pX[0] <= 6.25){
															return 3;
														} else {
															return 2;
														}
													}
												}
											}
										}
									} else {
										return 3;
									}
								}
							}
						}
					}
				} else {
					if(pX[5] <= 7.5){
						if(pX[7] <= 0.9938099980354309){
							return 2;
						} else {
							return 3;
						}
					} else {
						if(pX[10] <= 11.099999904632568){
							if(pX[2] <= 0.04999999888241291){
								if(pX[9] <= 0.5350000113248825){
									return 1;
								} else {
									return 3;
								}
							} else {
								if(pX[4] <= 0.04299999959766865){
									if(pX[8] <= 3.0899999141693115){
										if(pX[9] <= 0.3149999976158142){
											return 2;
										} else {
											if(pX[0] <= 7.6499998569488525){
												return 3;
											} else {
												return 1;
											}
										}
									} else {
										return 2;
									}
								} else {
									if(pX[7] <= 0.996289998292923){
										if(pX[1] <= 0.2750000059604645){
											return 3;
										} else {
											if(pX[7] <= 0.9951850175857544){
												if(pX[4] <= 0.05250000022351742){
													if(pX[1] <= 0.35999999940395355){
														return 2;
													} else {
														if(pX[5] <= 85.75){
															return 3;
														} else {
															return 0;
														}
													}
												} else {
													return 3;
												}
											} else {
												return 2;
											}
										}
									} else {
										return 3;
									}
								}
							}
						} else {
							if(pX[1] <= 0.38499999046325684){
								if(pX[1] <= 0.2749999910593033){
									return 4;
								} else {
									return 3;
								}
							} else {
								if(pX[9] <= 0.3799999952316284){
									return 2;
								} else {
									if(pX[0] <= 5.6000001430511475){
										return 5;
									} else {
										if(pX[4] <= 0.030500000342726707){
											return 3;
										} else {
											if(pX[0] <= 6.8999998569488525){
												return 4;
											} else {
												return 3;
											}
										}
									}
								}
							}
						}
					}
				}
			}
		} else {
			if(pX[4] <= 0.06549999862909317){
				if(pX[10] <= 10.25){
					if(pX[9] <= 0.5349999964237213){
						if(pX[0] <= 5.5){
							if(pX[4] <= 0.04000000096857548){
								return 4;
							} else {
								if(pX[1] <= 0.2900000065565109){
									return 0;
								} else {
									if(pX[9] <= 0.38499999046325684){
										return 2;
									} else {
										return 3;
									}
								}
							}
						} else {
							if(pX[10] <= 9.099999904632568){
								return 1;
							} else {
								if(pX[8] <= 3.450000047683716){
									if(pX[9] <= 0.3400000035762787){
										return 4;
									} else {
										if(pX[5] <= 62.0){
											if(pX[3] <= 1.300000011920929){
												if(pX[9] <= 0.4150000065565109){
													return 2;
												} else {
													return 4;
												}
											} else {
												if(pX[3] <= 8.300000190734863){
													return 2;
												} else {
													if(pX[4] <= 0.03800000064074993){
														return 3;
													} else {
														return 2;
													}
												}
											}
										} else {
											return 3;
										}
									}
								} else {
									return 4;
								}
							}
						}
					} else {
						if(pX[9] <= 0.6599999964237213){
							if(pX[8] <= 3.575000047683716){
								if(pX[3] <= 1.1500000059604645){
									return 2;
								} else {
									if(pX[2] <= 0.07499999925494194){
										if(pX[10] <= 9.949999809265137){
											if(pX[5] <= 26.5){
												return 0;
											} else {
												return 2;
											}
										} else {
											return 3;
										}
									} else {
										if(pX[5] <= 44.0){
											return 3;
										} else {
											return 2;
										}
									}
								}
							} else {
								return 2;
							}
						} else {
							return 2;
						}
					}
				} else {
					if(pX[5] <= 63.0){
						if(pX[0] <= 5.6499998569488525){
							if(pX[9] <= 0.8299999833106995){
								if(pX[9] <= 0.7649999856948853){
									if(pX[0] <= 5.450000047683716){
										if(pX[6] <= 98.5){
											if(pX[5] <= 12.0){
												return 1;
											} else {
												if(pX[8] <= 3.805000066757202){
													return 4;
												} else {
													return 3;
												}
											}
										} else {
											if(pX[9] <= 0.33500000834465027){
												if(pX[2] <= 0.13500000163912773){
													return 5;
												} else {
													return 4;
												}
											} else {
												if(pX[6] <= 101.0){
													if(pX[4] <= 0.03399999998509884){
														return 5;
													} else {
														return 3;
													}
												} else {
													if(pX[2] <= 0.014999999664723873){
														return 4;
													} else {
														if(pX[0] <= 5.099999904632568){
															return 3;
														} else {
															if(pX[10] <= 11.900000095367432){
																return 3;
															} else {
																return 4;
															}
														}
													}
												}
											}
										}
									} else {
										if(pX[6] <= 73.0){
											if(pX[3] <= 1.6500000357627869){
												return 4;
											} else {
												return 2;
											}
										} else {
											if(pX[3] <= 8.649999856948853){
												return 2;
											} else {
												return 3;
											}
										}
									}
								} else {
									if(pX[0] <= 5.299999952316284){
										return 3;
									} else {
										return 5;
									}
								}
							} else {
								return 4;
							}
						} else {
							if(pX[8] <= 3.5549999475479126){
								if(pX[10] <= 13.400000095367432){
									if(pX[9] <= 0.8850000202655792){
										if(pX[2] <= 0.004999999888241291){
											if(pX[6] <= 19.0){
												return 3;
											} else {
												if(pX[5] <= 19.0){
													return 1;
												} else {
													if(pX[9] <= 0.4999999850988388){
														return 3;
													} else {
														return 2;
													}
												}
											}
										} else {
											if(pX[5] <= 31.5){
												if(pX[8] <= 3.415000081062317){
													return 3;
												} else {
													if(pX[4] <= 0.06349999830126762){
														if(pX[7] <= 0.9927400052547455){
															return 1;
														} else {
															if(pX[4] <= 0.05199999921023846){
																return 3;
															} else {
																if(pX[7] <= 0.9946349859237671){
																	return 2;
																} else {
																	return 3;
																}
															}
														}
													} else {
														return 4;
													}
												}
											} else {
												if(pX[10] <= 10.75){
													if(pX[6] <= 182.5){
														return 3;
													} else {
														return 2;
													}
												} else {
													if(pX[0] <= 7.200000047683716){
														if(pX[2] <= 0.1900000050663948){
															if(pX[1] <= 0.4050000011920929){
																return 4;
															} else {
																if(pX[2] <= 0.06500000040978193){
																	return 4;
																} else {
																	return 3;
																}
															}
														} else {
															return 3;
														}
													} else {
														return 5;
													}
												}
											}
										}
									} else {
										return 4;
									}
								} else {
									return 4;
								}
							} else {
								return 2;
							}
						}
					} else {
						return 2;
					}
				}
			} else {
				if(pX[10] <= 10.25){
					if(pX[1] <= 0.7024999856948853){
						if(pX[0] <= 6.950000047683716){
							if(pX[8] <= 3.375){
								return 2;
							} else {
								if(pX[10] <= 9.449999809265137){
									if(pX[5] <= 7.0){
										return 2;
									} else {
										if(pX[10] <= 9.25){
											return 1;
										} else {
											return 3;
										}
									}
								} else {
									if(pX[1] <= 0.4399999976158142){
										if(pX[7] <= 0.9951899945735931){
											return 1;
										} else {
											if(pX[1] <= 0.4099999964237213){
												return 4;
											} else {
												return 3;
											}
										}
									} else {
										if(pX[6] <= 21.5){
											if(pX[7] <= 0.995989978313446){
												return 1;
											} else {
												return 2;
											}
										} else {
											if(pX[4] <= 0.07150000333786011){
												return 3;
											} else {
												return 2;
											}
										}
									}
								}
							}
						} else {
							if(pX[6] <= 37.5){
								if(pX[3] <= 5.200000047683716){
									if(pX[10] <= 10.099999904632568){
										if(pX[4] <= 0.09200000017881393){
											if(pX[10] <= 9.449999809265137){
												if(pX[1] <= 0.6049999892711639){
													if(pX[0] <= 7.750000238418579){
														return 1;
													} else {
														return 3;
													}
												} else {
													return 2;
												}
											} else {
												if(pX[9] <= 0.6850000023841858){
													if(pX[0] <= 7.049999952316284){
														return 3;
													} else {
														if(pX[5] <= 7.5){
															return 2;
														} else {
															if(pX[8] <= 3.3299999237060547){
																return 3;
															} else {
																if(pX[10] <= 9.650000095367432){
																	return 4;
																} else {
																	return 2;
																}
															}
														}
													}
												} else {
													if(pX[8] <= 3.6399999856948853){
														return 3;
													} else {
														return 2;
													}
												}
											}
										} else {
											return 2;
										}
									} else {
										return 4;
									}
								} else {
									return 4;
								}
							} else {
								if(pX[6] <= 142.5){
									if(pX[0] <= 7.049999952316284){
										if(pX[6] <= 43.5){
											return 2;
										} else {
											return 3;
										}
									} else {
										if(pX[10] <= 9.150000095367432){
											return 1;
										} else {
											if(pX[9] <= 0.6749999821186066){
												if(pX[7] <= 0.9996000230312347){
													if(pX[1] <= 0.44999998807907104){
														if(pX[9] <= 0.5800000131130219){
															return 3;
														} else {
															return 2;
														}
													} else {
														if(pX[8] <= 3.5199999809265137){
															return 2;
														} else {
															if(pX[9] <= 0.574999988079071){
																return 2;
															} else {
																return 3;
															}
														}
													}
												} else {
													return 3;
												}
											} else {
												if(pX[9] <= 0.7349999845027924){
													return 3;
												} else {
													return 2;
												}
											}
										}
									}
								} else {
									return 1;
								}
							}
						}
					} else {
						if(pX[3] <= 1.649999976158142){
							if(pX[9] <= 0.4949999898672104){
								return 1;
							} else {
								return 0;
							}
						} else {
							if(pX[2] <= 0.004999999888241291){
								if(pX[3] <= 2.9499999284744263){
									if(pX[7] <= 0.9976800084114075){
										return 2;
									} else {
										return 1;
									}
								} else {
									return 1;
								}
							} else {
								return 2;
							}
						}
					}
				} else {
					if(pX[7] <= 0.9961600005626678){
						if(pX[5] <= 12.5){
							if(pX[10] <= 10.449999809265137){
								return 3;
							} else {
								if(pX[4] <= 0.06750000268220901){
									if(pX[4] <= 0.06650000065565109){
										return 2;
									} else {
										if(pX[8] <= 3.415000081062317){
											return 1;
										} else {
											return 2;
										}
									}
								} else {
									if(pX[1] <= 0.737500011920929){
										if(pX[4] <= 0.08300000056624413){
											if(pX[4] <= 0.07400000095367432){
												if(pX[9] <= 0.6599999964237213){
													return 3;
												} else {
													return 4;
												}
											} else {
												return 3;
											}
										} else {
											if(pX[9] <= 0.5399999916553497){
												return 3;
											} else {
												if(pX[4] <= 0.09450000151991844){
													return 4;
												} else {
													return 1;
												}
											}
										}
									} else {
										if(pX[1] <= 1.270000010728836){
											if(pX[10] <= 11.449999809265137){
												if(pX[9] <= 0.625){
													return 2;
												} else {
													return 3;
												}
											} else {
												return 3;
											}
										} else {
											return 0;
										}
									}
								}
							}
						} else {
							if(pX[7] <= 0.9936699867248535){
								if(pX[4] <= 0.07050000131130219){
									if(pX[8] <= 3.490000009536743){
										return 4;
									} else {
										return 3;
									}
								} else {
									if(pX[1] <= 0.5800000131130219){
										return 3;
									} else {
										return 2;
									}
								}
							} else {
								if(pX[6] <= 108.0){
									if(pX[8] <= 3.569999933242798){
										if(pX[4] <= 0.07149999961256981){
											if(pX[8] <= 3.4000000953674316){
												return 2;
											} else {
												if(pX[1] <= 0.6500000059604645){
													return 3;
												} else {
													return 1;
												}
											}
										} else {
											if(pX[3] <= 1.600000023841858){
												return 2;
											} else {
												return 3;
											}
										}
									} else {
										if(pX[8] <= 3.59499990940094){
											if(pX[6] <= 48.5){
												if(pX[4] <= 0.0755000002682209){
													return 4;
												} else {
													return 1;
												}
											} else {
												return 3;
											}
										} else {
											return 3;
										}
									}
								} else {
									return 2;
								}
							}
						}
					} else {
						if(pX[5] <= 15.5){
							if(pX[3] <= 4.875){
								if(pX[8] <= 3.3499999046325684){
									if(pX[5] <= 8.5){
										return 3;
									} else {
										return 2;
									}
								} else {
									if(pX[5] <= 3.5){
										if(pX[8] <= 3.475000023841858){
											return 3;
										} else {
											return 2;
										}
									} else {
										if(pX[0] <= 6.5){
											return 1;
										} else {
											if(pX[6] <= 71.5){
												if(pX[4] <= 0.0925000011920929){
													return 2;
												} else {
													return 0;
												}
											} else {
												return 1;
											}
										}
									}
								}
							} else {
								return 3;
							}
						} else {
							if(pX[8] <= 3.3499999046325684){
								return 4;
							} else {
								if(pX[2] <= 0.0950000025331974){
									if(pX[0] <= 7.8500001430511475){
										if(pX[1] <= 0.9274999797344208){
											return 2;
										} else {
											return 1;
										}
									} else {
										return 3;
									}
								} else {
									if(pX[9] <= 0.5999999940395355){
										return 2;
									} else {
										return 4;
									}
								}
							}
						}
					}
				}
			}
		}
	} else {
		if(pX[3] <= 6.950000047683716){
			if(pX[7] <= 0.9923650026321411){
				if(pX[5] <= 11.5){
					if(pX[10] <= 11.75){
						if(pX[3] <= 2.0){
							if(pX[2] <= 0.3049999922513962){
								if(pX[3] <= 0.8499999940395355){
									return 2;
								} else {
									return 1;
								}
							} else {
								if(pX[9] <= 0.375){
									if(pX[10] <= 10.650000095367432){
										return 1;
									} else {
										if(pX[6] <= 73.5){
											return 2;
										} else {
											return 1;
										}
									}
								} else {
									if(pX[8] <= 3.0649999380111694){
										if(pX[4] <= 0.036000000312924385){
											return 2;
										} else {
											return 1;
										}
									} else {
										return 2;
									}
								}
							}
						} else {
							if(pX[5] <= 6.5){
								return 0;
							} else {
								return 3;
							}
						}
					} else {
						if(pX[9] <= 0.35500000417232513){
							if(pX[4] <= 0.04050000011920929){
								return 1;
							} else {
								return 3;
							}
						} else {
							if(pX[2] <= 0.42499999701976776){
								return 3;
							} else {
								if(pX[6] <= 52.5){
									return 1;
								} else {
									return 5;
								}
							}
						}
					}
				} else {
					if(pX[6] <= 171.5){
						if(pX[9] <= 0.574999988079071){
							if(pX[1] <= 0.27250000834465027){
								if(pX[4] <= 0.04450000077486038){
									if(pX[4] <= 0.02650000061839819){
										if(pX[10] <= 12.699999809265137){
											if(pX[2] <= 0.24499999731779099){
												return 4;
											} else {
												if(pX[10] <= 11.150000095367432){
													if(pX[2] <= 0.3499999940395355){
														return 3;
													} else {
														if(pX[5] <= 32.0){
															if(pX[8] <= 3.190000057220459){
																return 3;
															} else {
																return 4;
															}
														} else {
															return 5;
														}
													}
												} else {
													if(pX[0] <= 6.8500001430511475){
														return 3;
													} else {
														if(pX[0] <= 7.1000001430511475){
															return 2;
														} else {
															return 3;
														}
													}
												}
											}
										} else {
											return 4;
										}
									} else {
										if(pX[5] <= 39.5){
											if(pX[9] <= 0.4950000047683716){
												if(pX[5] <= 14.5){
													if(pX[9] <= 0.48499999940395355){
														return 4;
													} else {
														return 2;
													}
												} else {
													if(pX[6] <= 127.0){
														if(pX[10] <= 12.849999904632568){
															if(pX[0] <= 7.400000095367432){
																if(pX[3] <= 6.25){
																	if(pX[8] <= 3.2699999809265137){
																		if(pX[2] <= 0.2750000059604645){
																			return 3;
																		} else {
																			if(pX[8] <= 3.15500009059906){
																				if(pX[2] <= 0.2849999964237213){
																					return 4;
																				} else {
																					if(pX[7] <= 0.9910899996757507){
																						if(pX[8] <= 3.0799999237060547){
																							return 3;
																						} else {
																							if(pX[0] <= 7.200000047683716){
																								if(pX[4] <= 0.029000000096857548){
																									return 3;
																								} else {
																									return 4;
																								}
																							} else {
																								return 3;
																							}
																						}
																					} else {
																						if(pX[9] <= 0.375){
																							return 4;
																						} else {
																							return 2;
																						}
																					}
																				}
																			} else {
																				if(pX[10] <= 12.550000190734863){
																					return 3;
																				} else {
																					if(pX[4] <= 0.03500000014901161){
																						if(pX[1] <= 0.24499999731779099){
																							return 5;
																						} else {
																							return 3;
																						}
																					} else {
																						return 3;
																					}
																				}
																			}
																		}
																	} else {
																		if(pX[6] <= 117.0){
																			if(pX[10] <= 11.75){
																				if(pX[8] <= 3.524999976158142){
																					if(pX[1] <= 0.2150000035762787){
																						if(pX[9] <= 0.42499999701976776){
																							return 4;
																						} else {
																							if(pX[7] <= 0.9921000003814697){
																								return 3;
																							} else {
																								return 4;
																							}
																						}
																					} else {
																						return 4;
																					}
																				} else {
																					if(pX[8] <= 3.5749999284744263){
																						return 3;
																					} else {
																						return 5;
																					}
																				}
																			} else {
																				if(pX[9] <= 0.39000000059604645){
																					return 4;
																				} else {
																					return 3;
																				}
																			}
																		} else {
																			if(pX[9] <= 0.42499999701976776){
																				if(pX[10] <= 11.75){
																					return 2;
																				} else {
																					return 3;
																				}
																			} else {
																				return 5;
																			}
																		}
																	}
																} else {
																	return 4;
																}
															} else {
																if(pX[6] <= 108.0){
																	return 4;
																} else {
																	if(pX[10] <= 11.849999904632568){
																		return 4;
																	} else {
																		return 3;
																	}
																}
															}
														} else {
															if(pX[0] <= 6.6499998569488525){
																if(pX[6] <= 108.0){
																	return 5;
																} else {
																	return 4;
																}
															} else {
																if(pX[0] <= 6.8999998569488525){
																	return 3;
																} else {
																	return 6;
																}
															}
														}
													} else {
														if(pX[3] <= 2.0){
															return 2;
														} else {
															if(pX[9] <= 0.4750000089406967){
																return 3;
															} else {
																return 5;
															}
														}
													}
												}
											} else {
												if(pX[6] <= 88.0){
													if(pX[2] <= 0.38499999046325684){
														return 3;
													} else {
														if(pX[10] <= 10.849999904632568){
															return 2;
														} else {
															return 3;
														}
													}
												} else {
													if(pX[8] <= 3.2300000190734863){
														if(pX[3] <= 1.449999988079071){
															if(pX[4] <= 0.039499999955296516){
																return 3;
															} else {
																return 2;
															}
														} else {
															if(pX[0] <= 7.3500001430511475){
																if(pX[4] <= 0.04150000028312206){
																	return 3;
																} else {
																	return 4;
																}
															} else {
																return 3;
															}
														}
													} else {
														if(pX[6] <= 113.5){
															if(pX[9] <= 0.5550000071525574){
																if(pX[5] <= 32.0){
																	return 4;
																} else {
																	if(pX[1] <= 0.20499999821186066){
																		return 3;
																	} else {
																		return 4;
																	}
																}
															} else {
																return 3;
															}
														} else {
															if(pX[6] <= 127.5){
																return 3;
															} else {
																return 4;
															}
														}
													}
												}
											}
										} else {
											if(pX[7] <= 0.9894500076770782){
												return 3;
											} else {
												if(pX[3] <= 0.949999988079071){
													if(pX[5] <= 46.5){
														return 2;
													} else {
														return 3;
													}
												} else {
													if(pX[7] <= 0.9911099970340729){
														if(pX[3] <= 1.649999976158142){
															if(pX[6] <= 91.5){
																return 3;
															} else {
																if(pX[1] <= 0.16499999910593033){
																	return 5;
																} else {
																	return 4;
																}
															}
														} else {
															if(pX[1] <= 0.24499999731779099){
																if(pX[3] <= 2.8000000715255737){
																	return 3;
																} else {
																	if(pX[9] <= 0.39499999582767487){
																		return 3;
																	} else {
																		if(pX[7] <= 0.9907949864864349){
																			return 2;
																		} else {
																			return 4;
																		}
																	}
																}
															} else {
																if(pX[4] <= 0.0345000009983778){
																	return 1;
																} else {
																	return 4;
																}
															}
														}
													} else {
														if(pX[0] <= 5.950000047683716){
															return 3;
														} else {
															if(pX[6] <= 119.5){
																if(pX[4] <= 0.036000000312924385){
																	return 4;
																} else {
																	if(pX[4] <= 0.04350000061094761){
																		return 3;
																	} else {
																		return 2;
																	}
																}
															} else {
																if(pX[9] <= 0.3800000101327896){
																	return 2;
																} else {
																	if(pX[4] <= 0.03350000083446503){
																		if(pX[2] <= 0.4399999976158142){
																			return 2;
																		} else {
																			return 4;
																		}
																	} else {
																		return 4;
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								} else {
									if(pX[6] <= 125.0){
										if(pX[5] <= 23.5){
											if(pX[9] <= 0.4749999940395355){
												if(pX[10] <= 11.275000095367432){
													if(pX[9] <= 0.4650000035762787){
														if(pX[5] <= 19.0){
															return 3;
														} else {
															return 4;
														}
													} else {
														return 3;
													}
												} else {
													if(pX[9] <= 0.3400000035762787){
														return 2;
													} else {
														return 4;
													}
												}
											} else {
												return 4;
											}
										} else {
											if(pX[2] <= 0.4050000011920929){
												return 3;
											} else {
												if(pX[1] <= 0.19500000029802322){
													return 2;
												} else {
													return 3;
												}
											}
										}
									} else {
										if(pX[9] <= 0.4749999940395355){
											if(pX[7] <= 0.9921000003814697){
												if(pX[2] <= 0.29999999701976776){
													return 4;
												} else {
													if(pX[5] <= 35.5){
														return 3;
													} else {
														if(pX[0] <= 7.450000047683716){
															return 3;
														} else {
															return 2;
														}
													}
												}
											} else {
												return 4;
											}
										} else {
											if(pX[2] <= 0.3399999886751175){
												if(pX[3] <= 1.4500000476837158){
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
							} else {
								if(pX[4] <= 0.04749999940395355){
									if(pX[9] <= 0.42499999701976776){
										if(pX[8] <= 3.2549999952316284){
											if(pX[6] <= 136.0){
												if(pX[5] <= 36.5){
													if(pX[4] <= 0.023000000044703484){
														return 4;
													} else {
														if(pX[0] <= 7.5){
															if(pX[4] <= 0.0364999994635582){
																if(pX[5] <= 33.0){
																	if(pX[6] <= 131.5){
																		if(pX[8] <= 3.1850000619888306){
																			if(pX[5] <= 21.0){
																				if(pX[3] <= 2.350000023841858){
																					return 3;
																				} else {
																					return 4;
																				}
																			} else {
																				return 3;
																			}
																		} else {
																			if(pX[3] <= 2.600000023841858){
																				if(pX[6] <= 55.5){
																					return 3;
																				} else {
																					return 2;
																				}
																			} else {
																				return 3;
																			}
																		}
																	} else {
																		return 4;
																	}
																} else {
																	return 2;
																}
															} else {
																if(pX[3] <= 6.1499998569488525){
																	if(pX[0] <= 6.75){
																		if(pX[1] <= 0.35500000417232513){
																			return 4;
																		} else {
																			return 2;
																		}
																	} else {
																		if(pX[1] <= 0.42499999701976776){
																			return 3;
																		} else {
																			if(pX[10] <= 13.199999809265137){
																				return 4;
																			} else {
																				return 5;
																			}
																		}
																	}
																} else {
																	return 5;
																}
															}
														} else {
															if(pX[10] <= 11.099999904632568){
																return 4;
															} else {
																if(pX[8] <= 3.024999976158142){
																	return 2;
																} else {
																	if(pX[9] <= 0.35499998927116394){
																		return 5;
																	} else {
																		return 2;
																	}
																}
															}
														}
													}
												} else {
													return 3;
												}
											} else {
												if(pX[0] <= 6.650000095367432){
													if(pX[5] <= 38.0){
														if(pX[2] <= 0.29999999701976776){
															return 4;
														} else {
															return 5;
														}
													} else {
														return 5;
													}
												} else {
													if(pX[7] <= 0.9907999932765961){
														return 3;
													} else {
														if(pX[8] <= 2.990000009536743){
															return 2;
														} else {
															return 4;
														}
													}
												}
											}
										} else {
											if(pX[3] <= 6.150000095367432){
												if(pX[6] <= 76.5){
													if(pX[5] <= 26.5){
														return 3;
													} else {
														return 5;
													}
												} else {
													if(pX[7] <= 0.9896700084209442){
														if(pX[6] <= 140.0){
															if(pX[6] <= 113.5){
																return 4;
															} else {
																if(pX[8] <= 3.4149999618530273){
																	if(pX[5] <= 25.0){
																		if(pX[10] <= 12.650000095367432){
																			return 3;
																		} else {
																			return 4;
																		}
																	} else {
																		return 3;
																	}
																} else {
																	return 5;
																}
															}
														} else {
															return 4;
														}
													} else {
														if(pX[0] <= 5.349999904632568){
															return 5;
														} else {
															return 4;
														}
													}
												}
											} else {
												if(pX[4] <= 0.02500000037252903){
													return 4;
												} else {
													return 3;
												}
											}
										}
									} else {
										if(pX[6] <= 90.0){
											if(pX[2] <= 0.33500000834465027){
												if(pX[3] <= 1.350000023841858){
													return 2;
												} else {
													if(pX[6] <= 71.5){
														return 3;
													} else {
														return 4;
													}
												}
											} else {
												if(pX[8] <= 3.125){
													if(pX[6] <= 77.0){
														return 1;
													} else {
														return 2;
													}
												} else {
													return 3;
												}
											}
										} else {
											if(pX[9] <= 0.5349999964237213){
												if(pX[8] <= 3.4950000047683716){
													if(pX[3] <= 1.925000011920929){
														if(pX[4] <= 0.04000000096857548){
															if(pX[4] <= 0.035499999299645424){
																if(pX[4] <= 0.022499999962747097){
																	return 4;
																} else {
																	if(pX[2] <= 0.41499999165534973){
																		if(pX[7] <= 0.991919994354248){
																			if(pX[4] <= 0.03350000083446503){
																				return 3;
																			} else {
																				if(pX[7] <= 0.9900000095367432){
																					return 5;
																				} else {
																					return 3;
																				}
																			}
																		} else {
																			return 2;
																		}
																	} else {
																		if(pX[6] <= 108.0){
																			return 4;
																		} else {
																			return 3;
																		}
																	}
																}
															} else {
																if(pX[6] <= 122.5){
																	return 4;
																} else {
																	if(pX[6] <= 132.0){
																		return 3;
																	} else {
																		return 4;
																	}
																}
															}
														} else {
															return 3;
														}
													} else {
														if(pX[1] <= 0.39499999582767487){
															if(pX[1] <= 0.32500000298023224){
																if(pX[5] <= 26.5){
																	if(pX[2] <= 0.3050000071525574){
																		return 4;
																	} else {
																		return 3;
																	}
																} else {
																	if(pX[2] <= 0.29500000178813934){
																		if(pX[8] <= 3.365000009536743){
																			return 4;
																		} else {
																			return 3;
																		}
																	} else {
																		return 4;
																	}
																}
															} else {
																return 4;
															}
														} else {
															if(pX[0] <= 6.5){
																return 3;
															} else {
																if(pX[5] <= 28.0){
																	return 3;
																} else {
																	if(pX[6] <= 111.5){
																		return 5;
																	} else {
																		return 4;
																	}
																}
															}
														}
													}
												} else {
													return 5;
												}
											} else {
												if(pX[0] <= 7.1499998569488525){
													if(pX[7] <= 0.9899899959564209){
														if(pX[10] <= 13.050000190734863){
															return 5;
														} else {
															return 4;
														}
													} else {
														return 3;
													}
												} else {
													return 4;
												}
											}
										}
									}
								} else {
									if(pX[5] <= 16.0){
										return 2;
									} else {
										if(pX[6] <= 143.0){
											if(pX[8] <= 3.165000081062317){
												return 3;
											} else {
												if(pX[8] <= 3.215000033378601){
													if(pX[5] <= 21.5){
														return 2;
													} else {
														return 4;
													}
												} else {
													if(pX[2] <= 0.2549999952316284){
														return 5;
													} else {
														return 3;
													}
												}
											}
										} else {
											if(pX[1] <= 0.2900000065565109){
												return 2;
											} else {
												return 3;
											}
										}
									}
								}
							}
						} else {
							if(pX[8] <= 3.0649999380111694){
								if(pX[3] <= 2.25){
									if(pX[0] <= 8.25){
										if(pX[6] <= 89.0){
											if(pX[6] <= 83.0){
												return 2;
											} else {
												return 4;
											}
										} else {
											return 3;
										}
									} else {
										return 4;
									}
								} else {
									if(pX[9] <= 0.6199999749660492){
										return 4;
									} else {
										return 1;
									}
								}
							} else {
								if(pX[2] <= 0.2750000059604645){
									if(pX[5] <= 41.0){
										if(pX[1] <= 0.3800000101327896){
											return 3;
										} else {
											if(pX[8] <= 3.215000033378601){
												return 5;
											} else {
												return 3;
											}
										}
									} else {
										return 4;
									}
								} else {
									if(pX[10] <= 10.700000286102295){
										return 3;
									} else {
										if(pX[5] <= 52.0){
											if(pX[7] <= 0.9911949932575226){
												if(pX[0] <= 5.25){
													return 5;
												} else {
													if(pX[4] <= 0.051500000059604645){
														if(pX[4] <= 0.027500000782310963){
															if(pX[5] <= 13.0){
																return 4;
															} else {
																if(pX[1] <= 0.3450000137090683){
																	if(pX[4] <= 0.019000000320374966){
																		return 4;
																	} else {
																		return 3;
																	}
																} else {
																	return 6;
																}
															}
														} else {
															if(pX[2] <= 0.4449999928474426){
																if(pX[1] <= 0.5399999916553497){
																	if(pX[7] <= 0.9906249940395355){
																		if(pX[0] <= 5.549999952316284){
																			return 3;
																		} else {
																			if(pX[3] <= 1.6500000357627869){
																				if(pX[5] <= 33.5){
																					return 2;
																				} else {
																					return 4;
																				}
																			} else {
																				return 4;
																			}
																		}
																	} else {
																		if(pX[6] <= 89.5){
																			if(pX[6] <= 59.0){
																				return 4;
																			} else {
																				if(pX[5] <= 25.0){
																					return 3;
																				} else {
																					return 4;
																				}
																			}
																		} else {
																			if(pX[2] <= 0.3449999988079071){
																				if(pX[7] <= 0.990880012512207){
																					if(pX[7] <= 0.9907800257205963){
																						return 4;
																					} else {
																						return 5;
																					}
																				} else {
																					return 4;
																				}
																			} else {
																				return 3;
																			}
																		}
																	}
																} else {
																	return 1;
																}
															} else {
																if(pX[8] <= 3.399999976158142){
																	return 3;
																} else {
																	return 4;
																}
															}
														}
													} else {
														return 3;
													}
												}
											} else {
												if(pX[10] <= 12.650000095367432){
													if(pX[3] <= 1.899999976158142){
														if(pX[1] <= 0.20000000298023224){
															return 4;
														} else {
															if(pX[1] <= 0.29999999701976776){
																return 2;
															} else {
																if(pX[2] <= 0.3449999988079071){
																	return 4;
																} else {
																	return 3;
																}
															}
														}
													} else {
														if(pX[6] <= 79.0){
															if(pX[6] <= 75.0){
																return 4;
															} else {
																return 3;
															}
														} else {
															if(pX[7] <= 0.9912599921226501){
																if(pX[5] <= 31.5){
																	return 4;
																} else {
																	return 5;
																}
															} else {
																if(pX[5] <= 21.0){
																	if(pX[7] <= 0.9918699860572815){
																		return 4;
																	} else {
																		return 3;
																	}
																} else {
																	return 4;
																}
															}
														}
													}
												} else {
													if(pX[9] <= 0.7549999952316284){
														return 4;
													} else {
														return 2;
													}
												}
											}
										} else {
											if(pX[10] <= 11.5){
												return 4;
											} else {
												if(pX[9] <= 0.5949999988079071){
													return 4;
												} else {
													if(pX[9] <= 0.9699999988079071){
														if(pX[8] <= 3.5500000715255737){
															return 5;
														} else {
															return 4;
														}
													} else {
														return 4;
													}
												}
											}
										}
									}
								}
							}
						}
					} else {
						if(pX[4] <= 0.04450000077486038){
							if(pX[1] <= 0.26500000059604645){
								if(pX[5] <= 27.5){
									return 4;
								} else {
									if(pX[0] <= 7.1000001430511475){
										return 3;
									} else {
										if(pX[4] <= 0.03700000047683716){
											return 5;
										} else {
											return 3;
										}
									}
								}
							} else {
								if(pX[6] <= 192.5){
									if(pX[10] <= 11.449999809265137){
										if(pX[6] <= 187.5){
											return 2;
										} else {
											return 4;
										}
									} else {
										if(pX[4] <= 0.036500001326203346){
											return 4;
										} else {
											return 3;
										}
									}
								} else {
									return 3;
								}
							}
						} else {
							return 2;
						}
					}
				}
			} else {
				if(pX[9] <= 0.675000011920929){
					if(pX[10] <= 10.016666889190674){
						if(pX[8] <= 3.09499990940094){
							if(pX[1] <= 0.2750000059604645){
								if(pX[6] <= 115.5){
									if(pX[9] <= 0.4150000065565109){
										if(pX[0] <= 7.75){
											return 2;
										} else {
											if(pX[6] <= 59.5){
												return 2;
											} else {
												return 1;
											}
										}
									} else {
										if(pX[4] <= 0.05550000071525574){
											if(pX[5] <= 24.5){
												if(pX[1] <= 0.2499999925494194){
													return 3;
												} else {
													return 2;
												}
											} else {
												return 2;
											}
										} else {
											if(pX[9] <= 0.45499999821186066){
												return 3;
											} else {
												return 1;
											}
										}
									}
								} else {
									if(pX[9] <= 0.5750000178813934){
										if(pX[9] <= 0.3500000089406967){
											return 3;
										} else {
											if(pX[0] <= 8.849999904632568){
												if(pX[4] <= 0.05400000140070915){
													return 2;
												} else {
													if(pX[2] <= 0.4050000011920929){
														if(pX[3] <= 2.6500000953674316){
															return 5;
														} else {
															return 4;
														}
													} else {
														if(pX[1] <= 0.1550000011920929){
															return 3;
														} else {
															if(pX[2] <= 0.7300000190734863){
																return 2;
															} else {
																return 3;
															}
														}
													}
												}
											} else {
												return 1;
											}
										}
									} else {
										return 3;
									}
								}
							} else {
								if(pX[5] <= 61.5){
									if(pX[9] <= 0.4050000011920929){
										if(pX[7] <= 0.9936999976634979){
											return 2;
										} else {
											return 3;
										}
									} else {
										return 2;
									}
								} else {
									if(pX[6] <= 177.5){
										return 3;
									} else {
										return 2;
									}
								}
							}
						} else {
							if(pX[4] <= 0.06799999997019768){
								if(pX[1] <= 0.32500000298023224){
									if(pX[4] <= 0.04050000011920929){
										if(pX[0] <= 7.1499998569488525){
											if(pX[2] <= 0.24499999731779099){
												return 1;
											} else {
												if(pX[8] <= 3.524999976158142){
													if(pX[9] <= 0.6150000095367432){
														return 3;
													} else {
														if(pX[4] <= 0.03749999962747097){
															return 2;
														} else {
															return 3;
														}
													}
												} else {
													return 2;
												}
											}
										} else {
											if(pX[6] <= 159.5){
												if(pX[6] <= 86.0){
													return 2;
												} else {
													if(pX[0] <= 8.550000190734863){
														if(pX[6] <= 123.5){
															return 3;
														} else {
															if(pX[0] <= 7.950000286102295){
																return 2;
															} else {
																return 3;
															}
														}
													} else {
														return 2;
													}
												}
											} else {
												return 1;
											}
										}
									} else {
										if(pX[5] <= 57.5){
											if(pX[4] <= 0.05350000038743019){
												if(pX[5] <= 28.5){
													if(pX[8] <= 3.125){
														return 3;
													} else {
														if(pX[10] <= 9.650000095367432){
															if(pX[3] <= 2.199999988079071){
																if(pX[1] <= 0.27250000834465027){
																	return 2;
																} else {
																	if(pX[10] <= 9.449999809265137){
																		return 2;
																	} else {
																		if(pX[4] <= 0.0494999997317791){
																			return 3;
																		} else {
																			return 1;
																		}
																	}
																}
															} else {
																if(pX[9] <= 0.4349999874830246){
																	return 3;
																} else {
																	if(pX[5] <= 21.5){
																		return 3;
																	} else {
																		return 2;
																	}
																}
															}
														} else {
															if(pX[6] <= 157.0){
																if(pX[8] <= 3.180000066757202){
																	if(pX[3] <= 2.649999976158142){
																		if(pX[1] <= 0.20499999821186066){
																			return 4;
																		} else {
																			return 2;
																		}
																	} else {
																		return 3;
																	}
																} else {
																	if(pX[0] <= 7.799999952316284){
																		if(pX[5] <= 16.0){
																			return 2;
																		} else {
																			return 3;
																		}
																	} else {
																		return 2;
																	}
																}
															} else {
																return 2;
															}
														}
													}
												} else {
													if(pX[10] <= 9.75){
														if(pX[0] <= 6.1499998569488525){
															return 2;
														} else {
															return 3;
														}
													} else {
														if(pX[7] <= 0.9944849908351898){
															if(pX[9] <= 0.5200000107288361){
																if(pX[9] <= 0.42499999701976776){
																	if(pX[1] <= 0.1850000023841858){
																		return 3;
																	} else {
																		return 2;
																	}
																} else {
																	return 3;
																}
															} else {
																if(pX[3] <= 2.199999988079071){
																	return 4;
																} else {
																	return 2;
																}
															}
														} else {
															return 2;
														}
													}
												}
											} else {
												if(pX[8] <= 3.200000047683716){
													if(pX[1] <= 0.20499999821186066){
														if(pX[7] <= 0.9930499792098999){
															return 3;
														} else {
															return 4;
														}
													} else {
														return 2;
													}
												} else {
													if(pX[1] <= 0.19500000029802322){
														if(pX[5] <= 22.5){
															return 2;
														} else {
															if(pX[7] <= 0.9952999949455261){
																return 2;
															} else {
																return 3;
															}
														}
													} else {
														if(pX[0] <= 7.150000095367432){
															if(pX[5] <= 36.0){
																return 3;
															} else {
																return 1;
															}
														} else {
															return 3;
														}
													}
												}
											}
										} else {
											if(pX[3] <= 5.6499998569488525){
												if(pX[9] <= 0.6200000047683716){
													return 4;
												} else {
													return 0;
												}
											} else {
												return 2;
											}
										}
									}
								} else {
									if(pX[0] <= 6.25){
										if(pX[2] <= 0.48000000417232513){
											if(pX[7] <= 0.9928999841213226){
												if(pX[0] <= 5.950000047683716){
													return 3;
												} else {
													return 2;
												}
											} else {
												return 2;
											}
										} else {
											return 1;
										}
									} else {
										if(pX[3] <= 5.125){
											if(pX[7] <= 0.9972900152206421){
												if(pX[5] <= 32.5){
													if(pX[10] <= 9.849999904632568){
														if(pX[6] <= 121.5){
															if(pX[8] <= 3.315000057220459){
																return 1;
															} else {
																return 2;
															}
														} else {
															if(pX[4] <= 0.05199999921023846){
																return 2;
															} else {
																if(pX[4] <= 0.05599999986588955){
																	return 4;
																} else {
																	return 3;
																}
															}
														}
													} else {
														return 4;
													}
												} else {
													return 3;
												}
											} else {
												if(pX[4] <= 0.06200000084936619){
													if(pX[5] <= 5.5){
														return 3;
													} else {
														return 2;
													}
												} else {
													return 3;
												}
											}
										} else {
											if(pX[2] <= 0.4650000035762787){
												if(pX[6] <= 150.0){
													if(pX[6] <= 133.5){
														return 2;
													} else {
														return 3;
													}
												} else {
													return 2;
												}
											} else {
												return 3;
											}
										}
									}
								}
							} else {
								if(pX[3] <= 2.549999952316284){
									if(pX[4] <= 0.1535000056028366){
										if(pX[10] <= 9.050000190734863){
											return 3;
										} else {
											if(pX[9] <= 0.5349999964237213){
												if(pX[5] <= 41.0){
													if(pX[9] <= 0.39000000059604645){
														return 3;
													} else {
														if(pX[2] <= 0.2750000059604645){
															if(pX[0] <= 7.8999998569488525){
																return 2;
															} else {
																return 1;
															}
														} else {
															return 2;
														}
													}
												} else {
													return 4;
												}
											} else {
												if(pX[6] <= 91.5){
													if(pX[6] <= 73.5){
														if(pX[0] <= 10.0){
															if(pX[2] <= 0.39499999582767487){
																if(pX[4] <= 0.08249999955296516){
																	if(pX[2] <= 0.29999999701976776){
																		return 2;
																	} else {
																		if(pX[0] <= 9.149999618530273){
																			if(pX[4] <= 0.08050000295042992){
																				return 3;
																			} else {
																				return 2;
																			}
																		} else {
																			return 2;
																		}
																	}
																} else {
																	if(pX[5] <= 15.0){
																		return 3;
																	} else {
																		return 2;
																	}
																}
															} else {
																return 2;
															}
														} else {
															if(pX[0] <= 10.300000190734863){
																return 3;
															} else {
																if(pX[8] <= 3.2350000143051147){
																	return 3;
																} else {
																	return 1;
																}
															}
														}
													} else {
														if(pX[2] <= 0.3449999988079071){
															return 3;
														} else {
															return 2;
														}
													}
												} else {
													if(pX[2] <= 0.2499999925494194){
														return 3;
													} else {
														return 2;
													}
												}
											}
										}
									} else {
										if(pX[0] <= 9.5){
											return 3;
										} else {
											if(pX[3] <= 2.0000000596046448){
												return 2;
											} else {
												return 3;
											}
										}
									}
								} else {
									if(pX[8] <= 3.109999895095825){
										if(pX[2] <= 0.3449999988079071){
											return 2;
										} else {
											return 3;
										}
									} else {
										if(pX[9] <= 0.3999999910593033){
											return 3;
										} else {
											if(pX[10] <= 9.900000095367432){
												if(pX[8] <= 3.3149999380111694){
													if(pX[9] <= 0.5199999809265137){
														if(pX[5] <= 19.0){
															return 1;
														} else {
															return 2;
														}
													} else {
														return 2;
													}
												} else {
													if(pX[2] <= 0.3149999976158142){
														if(pX[3] <= 2.6999999284744263){
															return 2;
														} else {
															return 3;
														}
													} else {
														return 2;
													}
												}
											} else {
												if(pX[2] <= 0.4099999889731407){
													return 3;
												} else {
													return 2;
												}
											}
										}
									}
								}
							}
						}
					} else {
						if(pX[10] <= 11.949999809265137){
							if(pX[4] <= 0.058000000193715096){
								if(pX[6] <= 87.0){
									if(pX[10] <= 10.949999809265137){
										if(pX[1] <= 0.1900000050663948){
											if(pX[10] <= 10.25){
												return 3;
											} else {
												return 4;
											}
										} else {
											if(pX[2] <= 0.4449999928474426){
												if(pX[5] <= 22.5){
													if(pX[9] <= 0.29999999701976776){
														return 1;
													} else {
														return 2;
													}
												} else {
													return 4;
												}
											} else {
												if(pX[5] <= 11.5){
													if(pX[1] <= 0.35750000178813934){
														return 1;
													} else {
														return 2;
													}
												} else {
													return 3;
												}
											}
										}
									} else {
										if(pX[2] <= 0.3700000047683716){
											return 3;
										} else {
											return 4;
										}
									}
								} else {
									if(pX[5] <= 15.5){
										if(pX[1] <= 0.3349999934434891){
											if(pX[2] <= 0.5200000107288361){
												if(pX[3] <= 3.350000023841858){
													if(pX[7] <= 0.9938500225543976){
														if(pX[9] <= 0.4099999964237213){
															if(pX[7] <= 0.9928999841213226){
																return 2;
															} else {
																return 1;
															}
														} else {
															return 2;
														}
													} else {
														return 1;
													}
												} else {
													if(pX[8] <= 3.215000033378601){
														return 3;
													} else {
														return 5;
													}
												}
											} else {
												if(pX[6] <= 111.0){
													return 3;
												} else {
													if(pX[1] <= 0.19999999552965164){
														return 1;
													} else {
														if(pX[7] <= 0.9934899806976318){
															return 3;
														} else {
															return 2;
														}
													}
												}
											}
										} else {
											if(pX[4] <= 0.0364999994635582){
												return 4;
											} else {
												return 2;
											}
										}
									} else {
										if(pX[8] <= 3.284999966621399){
											if(pX[8] <= 3.165000081062317){
												if(pX[8] <= 3.059999942779541){
													if(pX[0] <= 7.450000047683716){
														if(pX[3] <= 6.0){
															if(pX[7] <= 0.9934200048446655){
																return 4;
															} else {
																return 1;
															}
														} else {
															return 3;
														}
													} else {
														return 3;
													}
												} else {
													if(pX[2] <= 0.3449999988079071){
														if(pX[0] <= 7.299999952316284){
															if(pX[8] <= 3.0999999046325684){
																return 2;
															} else {
																return 3;
															}
														} else {
															if(pX[7] <= 0.9939999878406525){
																if(pX[6] <= 166.5){
																	return 2;
																} else {
																	return 3;
																}
															} else {
																if(pX[5] <= 22.0){
																	return 3;
																} else {
																	if(pX[10] <= 10.450000286102295){
																		return 3;
																	} else {
																		return 4;
																	}
																}
															}
														}
													} else {
														if(pX[10] <= 10.599999904632568){
															if(pX[4] <= 0.054500000551342964){
																if(pX[3] <= 2.399999976158142){
																	return 4;
																} else {
																	return 2;
																}
															} else {
																return 3;
															}
														} else {
															if(pX[4] <= 0.03800000064074993){
																return 3;
															} else {
																return 4;
															}
														}
													}
												}
											} else {
												if(pX[8] <= 3.2350000143051147){
													if(pX[4] <= 0.053999999538064){
														if(pX[0] <= 8.049999952316284){
															if(pX[5] <= 74.0){
																if(pX[6] <= 141.0){
																	if(pX[4] <= 0.027499999850988388){
																		return 2;
																	} else {
																		if(pX[8] <= 3.215000033378601){
																			return 3;
																		} else {
																			if(pX[7] <= 0.9926950037479401){
																				return 3;
																			} else {
																				return 2;
																			}
																		}
																	}
																} else {
																	return 3;
																}
															} else {
																return 4;
															}
														} else {
															return 2;
														}
													} else {
														return 4;
													}
												} else {
													if(pX[3] <= 1.3499999642372131){
														return 2;
													} else {
														if(pX[2] <= 0.26500000059604645){
															return 4;
														} else {
															if(pX[5] <= 20.5){
																if(pX[9] <= 0.5449999868869781){
																	return 1;
																} else {
																	return 3;
																}
															} else {
																if(pX[6] <= 114.5){
																	return 3;
																} else {
																	if(pX[5] <= 38.0){
																		if(pX[9] <= 0.5250000059604645){
																			return 2;
																		} else {
																			return 3;
																		}
																	} else {
																		return 3;
																	}
																}
															}
														}
													}
												}
											}
										} else {
											if(pX[0] <= 7.6499998569488525){
												if(pX[10] <= 10.650000095367432){
													if(pX[6] <= 138.5){
														if(pX[5] <= 29.5){
															if(pX[10] <= 10.25){
																return 1;
															} else {
																if(pX[1] <= 0.5249999910593033){
																	if(pX[1] <= 0.1250000037252903){
																		return 4;
																	} else {
																		if(pX[7] <= 0.9936850070953369){
																			return 3;
																		} else {
																			if(pX[5] <= 23.5){
																				return 4;
																			} else {
																				return 3;
																			}
																		}
																	}
																} else {
																	return 1;
																}
															}
														} else {
															if(pX[0] <= 6.049999952316284){
																if(pX[2] <= 0.32500000298023224){
																	return 2;
																} else {
																	return 4;
																}
															} else {
																if(pX[2] <= 0.4049999862909317){
																	if(pX[7] <= 0.99549999833107){
																		return 4;
																	} else {
																		return 2;
																	}
																} else {
																	return 5;
																}
															}
														}
													} else {
														if(pX[3] <= 5.6499998569488525){
															if(pX[6] <= 162.0){
																return 3;
															} else {
																if(pX[7] <= 0.9928999841213226){
																	return 2;
																} else {
																	if(pX[2] <= 0.32999999821186066){
																		return 0;
																	} else {
																		return 3;
																	}
																}
															}
														} else {
															if(pX[5] <= 43.5){
																return 2;
															} else {
																return 4;
															}
														}
													}
												} else {
													if(pX[1] <= 0.21000000089406967){
														if(pX[6] <= 148.0){
															return 3;
														} else {
															if(pX[2] <= 0.4150000065565109){
																return 2;
															} else {
																return 3;
															}
														}
													} else {
														if(pX[0] <= 5.75){
															return 4;
														} else {
															if(pX[10] <= 10.75){
																if(pX[4] <= 0.04450000077486038){
																	return 4;
																} else {
																	return 5;
																}
															} else {
																if(pX[3] <= 4.299999952316284){
																	if(pX[4] <= 0.04050000011920929){
																		return 3;
																	} else {
																		return 2;
																	}
																} else {
																	return 3;
																}
															}
														}
													}
												}
											} else {
												if(pX[8] <= 3.4450000524520874){
													return 4;
												} else {
													return 5;
												}
											}
										}
									}
								}
							} else {
								if(pX[6] <= 22.5){
									if(pX[3] <= 2.5){
										if(pX[3] <= 1.800000011920929){
											return 2;
										} else {
											if(pX[7] <= 0.9966250061988831){
												if(pX[4] <= 0.07000000029802322){
													return 4;
												} else {
													return 3;
												}
											} else {
												if(pX[7] <= 0.9974400103092194){
													if(pX[6] <= 12.0){
														return 1;
													} else {
														return 4;
													}
												} else {
													return 3;
												}
											}
										}
									} else {
										if(pX[9] <= 0.6349999904632568){
											if(pX[2] <= 0.4649999886751175){
												if(pX[0] <= 8.549999952316284){
													return 2;
												} else {
													return 4;
												}
											} else {
												if(pX[10] <= 11.549999713897705){
													return 2;
												} else {
													return 3;
												}
											}
										} else {
											return 5;
										}
									}
								} else {
									if(pX[6] <= 33.0){
										if(pX[10] <= 10.066667079925537){
											return 3;
										} else {
											if(pX[7] <= 0.9943999946117401){
												return 4;
											} else {
												if(pX[1] <= 0.4299999922513962){
													return 2;
												} else {
													if(pX[8] <= 3.200000047683716){
														return 2;
													} else {
														return 3;
													}
												}
											}
										}
									} else {
										if(pX[6] <= 102.0){
											if(pX[6] <= 59.5){
												if(pX[5] <= 6.5){
													return 3;
												} else {
													if(pX[7] <= 0.995199978351593){
														return 3;
													} else {
														if(pX[7] <= 0.9986999928951263){
															if(pX[4] <= 0.08150000125169754){
																return 2;
															} else {
																if(pX[2] <= 0.42499999701976776){
																	if(pX[10] <= 10.449999809265137){
																		return 1;
																	} else {
																		return 3;
																	}
																} else {
																	if(pX[0] <= 8.350000143051147){
																		return 3;
																	} else {
																		return 2;
																	}
																}
															}
														} else {
															if(pX[10] <= 10.700000286102295){
																return 2;
															} else {
																return 3;
															}
														}
													}
												}
											} else {
												if(pX[5] <= 8.0){
													return 1;
												} else {
													if(pX[8] <= 3.0199999809265137){
														return 5;
													} else {
														if(pX[4] <= 0.06500000134110451){
															return 2;
														} else {
															if(pX[9] <= 0.6150000095367432){
																return 3;
															} else {
																if(pX[5] <= 17.5){
																	return 3;
																} else {
																	return 2;
																}
															}
														}
													}
												}
											}
										} else {
											if(pX[2] <= 0.35500000417232513){
												if(pX[5] <= 27.0){
													return 3;
												} else {
													return 2;
												}
											} else {
												if(pX[2] <= 0.42499999701976776){
													return 4;
												} else {
													return 2;
												}
											}
										}
									}
								}
							}
						} else {
							if(pX[6] <= 14.5){
								if(pX[1] <= 0.39750000834465027){
									return 4;
								} else {
									return 1;
								}
							} else {
								if(pX[3] <= 4.799999952316284){
									if(pX[10] <= 12.150000095367432){
										if(pX[7] <= 0.9938899874687195){
											return 3;
										} else {
											return 4;
										}
									} else {
										if(pX[10] <= 12.449999809265137){
											return 3;
										} else {
											if(pX[0] <= 8.350000143051147){
												if(pX[3] <= 2.299999952316284){
													return 2;
												} else {
													return 4;
												}
											} else {
												return 3;
											}
										}
									}
								} else {
									return 4;
								}
							}
						}
					}
				} else {
					if(pX[6] <= 44.5){
						if(pX[10] <= 11.949999809265137){
							if(pX[1] <= 0.375){
								if(pX[7] <= 0.9957400262355804){
									if(pX[4] <= 0.079500000923872){
										if(pX[4] <= 0.057499999180436134){
											if(pX[3] <= 2.099999964237213){
												return 3;
											} else {
												return 2;
											}
										} else {
											if(pX[6] <= 9.0){
												return 3;
											} else {
												return 4;
											}
										}
									} else {
										return 3;
									}
								} else {
									if(pX[10] <= 10.150000095367432){
										if(pX[0] <= 9.0){
											return 3;
										} else {
											if(pX[9] <= 0.8100000023841858){
												return 2;
											} else {
												if(pX[2] <= 0.5250000059604645){
													return 3;
												} else {
													if(pX[8] <= 3.0749999284744263){
														return 2;
													} else {
														return 4;
													}
												}
											}
										}
									} else {
										if(pX[3] <= 2.549999952316284){
											if(pX[8] <= 3.25){
												if(pX[9] <= 1.0499999523162842){
													if(pX[4] <= 0.06399999931454659){
														return 3;
													} else {
														return 4;
													}
												} else {
													return 3;
												}
											} else {
												return 3;
											}
										} else {
											if(pX[7] <= 0.9972600042819977){
												if(pX[4] <= 0.09849999845027924){
													return 3;
												} else {
													return 4;
												}
											} else {
												return 4;
											}
										}
									}
								}
							} else {
								if(pX[7] <= 1.0026749968528748){
									if(pX[2] <= 0.3450000137090683){
										if(pX[1] <= 0.7100000083446503){
											if(pX[2] <= 0.26500000059604645){
												return 2;
											} else {
												if(pX[0] <= 8.550000190734863){
													if(pX[7] <= 0.9959900081157684){
														if(pX[7] <= 0.9948099851608276){
															return 5;
														} else {
															return 3;
														}
													} else {
														if(pX[0] <= 7.950000286102295){
															return 2;
														} else {
															return 4;
														}
													}
												} else {
													return 2;
												}
											}
										} else {
											return 3;
										}
									} else {
										if(pX[3] <= 4.400000095367432){
											if(pX[7] <= 0.995820015668869){
												if(pX[8] <= 3.1750000715255737){
													return 4;
												} else {
													return 3;
												}
											} else {
												if(pX[5] <= 4.5){
													if(pX[4] <= 0.1015000008046627){
														return 3;
													} else {
														return 2;
													}
												} else {
													if(pX[8] <= 3.2549999952316284){
														return 3;
													} else {
														if(pX[5] <= 9.0){
															return 3;
														} else {
															return 2;
														}
													}
												}
											}
										} else {
											if(pX[3] <= 5.150000095367432){
												return 2;
											} else {
												if(pX[4] <= 0.07349999994039536){
													return 3;
												} else {
													return 4;
												}
											}
										}
									}
								} else {
									return 2;
								}
							}
						} else {
							if(pX[3] <= 1.949999988079071){
								if(pX[9] <= 0.6949999928474426){
									return 5;
								} else {
									return 3;
								}
							} else {
								if(pX[4] <= 0.08250000327825546){
									if(pX[8] <= 3.134999990463257){
										return 3;
									} else {
										if(pX[2] <= 0.42499999701976776){
											return 4;
										} else {
											if(pX[10] <= 13.650000095367432){
												if(pX[6] <= 21.5){
													return 4;
												} else {
													if(pX[3] <= 2.350000023841858){
														return 3;
													} else {
														return 4;
													}
												}
											} else {
												return 3;
											}
										}
									}
								} else {
									if(pX[10] <= 12.900000095367432){
										return 4;
									} else {
										if(pX[2] <= 0.6650000214576721){
											return 3;
										} else {
											return 5;
										}
									}
								}
							}
						}
					} else {
						if(pX[9] <= 1.0149999856948853){
							if(pX[3] <= 5.8500001430511475){
								if(pX[10] <= 10.650000095367432){
									if(pX[1] <= 0.29999999701976776){
										if(pX[5] <= 14.0){
											return 2;
										} else {
											if(pX[1] <= 0.13499999791383743){
												return 4;
											} else {
												if(pX[4] <= 0.06200000084936619){
													if(pX[7] <= 0.9934999942779541){
														if(pX[9] <= 0.8100000023841858){
															if(pX[5] <= 24.5){
																if(pX[4] <= 0.042000001296401024){
																	return 3;
																} else {
																	return 2;
																}
															} else {
																if(pX[2] <= 0.2800000011920929){
																	return 4;
																} else {
																	return 3;
																}
															}
														} else {
															return 4;
														}
													} else {
														if(pX[4] <= 0.039499999955296516){
															return 1;
														} else {
															return 3;
														}
													}
												} else {
													if(pX[6] <= 152.0){
														return 4;
													} else {
														return 2;
													}
												}
											}
										}
									} else {
										if(pX[6] <= 56.5){
											return 3;
										} else {
											if(pX[1] <= 0.375){
												if(pX[5] <= 36.5){
													if(pX[3] <= 3.299999952316284){
														if(pX[9] <= 0.8950000107288361){
															return 3;
														} else {
															return 2;
														}
													} else {
														return 2;
													}
												} else {
													return 2;
												}
											} else {
												if(pX[0] <= 6.1499998569488525){
													return 3;
												} else {
													if(pX[7] <= 0.9979400038719177){
														if(pX[1] <= 0.38499999046325684){
															if(pX[9] <= 0.7299999892711639){
																return 1;
															} else {
																return 2;
															}
														} else {
															return 2;
														}
													} else {
														if(pX[5] <= 27.5){
															return 3;
														} else {
															return 2;
														}
													}
												}
											}
										}
									}
								} else {
									if(pX[0] <= 6.75){
										if(pX[2] <= 0.47999998927116394){
											return 4;
										} else {
											return 3;
										}
									} else {
										if(pX[7] <= 0.9927000105381012){
											return 5;
										} else {
											if(pX[2] <= 0.39499999582767487){
												if(pX[7] <= 0.9947499930858612){
													if(pX[9] <= 0.8449999988079071){
														return 3;
													} else {
														return 2;
													}
												} else {
													if(pX[5] <= 27.5){
														if(pX[8] <= 3.3399999141693115){
															if(pX[4] <= 0.06799999810755253){
																if(pX[1] <= 0.3100000023841858){
																	return 3;
																} else {
																	return 4;
																}
															} else {
																return 3;
															}
														} else {
															if(pX[10] <= 11.150000095367432){
																return 2;
															} else {
																return 4;
															}
														}
													} else {
														return 4;
													}
												}
											} else {
												if(pX[1] <= 0.3725000023841858){
													if(pX[10] <= 11.199999809265137){
														return 2;
													} else {
														return 3;
													}
												} else {
													return 3;
												}
											}
										}
									}
								}
							} else {
								if(pX[8] <= 3.2100000381469727){
									if(pX[0] <= 9.049999713897705){
										if(pX[8] <= 3.134999990463257){
											return 3;
										} else {
											if(pX[7] <= 0.9944300055503845){
												return 3;
											} else {
												return 2;
											}
										}
									} else {
										return 4;
									}
								} else {
									return 2;
								}
							}
						} else {
							if(pX[4] <= 0.5385000109672546){
								if(pX[10] <= 9.799999713897705){
									if(pX[10] <= 9.150000095367432){
										return 3;
									} else {
										return 2;
									}
								} else {
									if(pX[10] <= 10.550000190734863){
										if(pX[9] <= 1.1749999523162842){
											return 2;
										} else {
											if(pX[7] <= 0.9975550174713135){
												return 3;
											} else {
												return 2;
											}
										}
									} else {
										return 4;
									}
								}
							} else {
								if(pX[3] <= 2.600000023841858){
									return 2;
								} else {
									return 1;
								}
							}
						}
					}
				}
			}
		} else {
			if(pX[9] <= 0.3449999988079071){
				if(pX[8] <= 3.0999999046325684){
					if(pX[7] <= 0.9936600029468536){
						if(pX[8] <= 2.9850000143051147){
							return 4;
						} else {
							if(pX[6] <= 110.0){
								return 3;
							} else {
								return 5;
							}
						}
					} else {
						if(pX[1] <= 0.1600000038743019){
							return 5;
						} else {
							if(pX[0] <= 8.049999952316284){
								if(pX[2] <= 0.27000000327825546){
									return 5;
								} else {
									if(pX[3] <= 8.549999952316284){
										if(pX[0] <= 6.900000095367432){
											return 3;
										} else {
											return 2;
										}
									} else {
										if(pX[9] <= 0.3049999922513962){
											return 3;
										} else {
											return 4;
										}
									}
								}
							} else {
								if(pX[0] <= 9.400000095367432){
									if(pX[1] <= 0.1850000023841858){
										return 1;
									} else {
										return 3;
									}
								} else {
									return 2;
								}
							}
						}
					}
				} else {
					if(pX[9] <= 0.32500000298023224){
						if(pX[2] <= 0.3449999988079071){
							if(pX[9] <= 0.2749999910593033){
								return 4;
							} else {
								return 3;
							}
						} else {
							if(pX[6] <= 98.5){
								if(pX[0] <= 6.8999998569488525){
									return 4;
								} else {
									return 2;
								}
							} else {
								return 2;
							}
						}
					} else {
						if(pX[8] <= 3.240000009536743){
							if(pX[4] <= 0.032999999821186066){
								return 3;
							} else {
								return 2;
							}
						} else {
							if(pX[1] <= 0.2475000023841858){
								return 2;
							} else {
								return 5;
							}
						}
					}
				}
			} else {
				if(pX[4] <= 0.039499999955296516){
					if(pX[1] <= 0.1550000011920929){
						return 5;
					} else {
						if(pX[2] <= 0.32500000298023224){
							if(pX[4] <= 0.024500000290572643){
								if(pX[8] <= 3.0999999046325684){
									if(pX[3] <= 8.525000095367432){
										return 3;
									} else {
										return 4;
									}
								} else {
									if(pX[2] <= 0.26999999582767487){
										return 2;
									} else {
										return 5;
									}
								}
							} else {
								if(pX[10] <= 12.550000190734863){
									if(pX[9] <= 0.39499999582767487){
										if(pX[10] <= 10.550000190734863){
											if(pX[6] <= 135.5){
												return 4;
											} else {
												return 3;
											}
										} else {
											if(pX[8] <= 2.950000047683716){
												if(pX[2] <= 0.2849999964237213){
													return 4;
												} else {
													if(pX[8] <= 2.9200000762939453){
														return 0;
													} else {
														return 2;
													}
												}
											} else {
												if(pX[3] <= 7.650000095367432){
													return 4;
												} else {
													if(pX[5] <= 36.0){
														return 3;
													} else {
														if(pX[9] <= 0.35999999940395355){
															return 2;
														} else {
															if(pX[3] <= 8.775000095367432){
																return 5;
															} else {
																return 3;
															}
														}
													}
												}
											}
										}
									} else {
										if(pX[10] <= 10.75){
											if(pX[2] <= 0.2750000059604645){
												if(pX[3] <= 11.099999904632568){
													if(pX[2] <= 0.2499999925494194){
														return 3;
													} else {
														return 4;
													}
												} else {
													if(pX[8] <= 3.134999990463257){
														return 3;
													} else {
														return 2;
													}
												}
											} else {
												if(pX[3] <= 8.5){
													if(pX[8] <= 3.274999976158142){
														return 2;
													} else {
														return 4;
													}
												} else {
													if(pX[1] <= 0.1900000050663948){
														if(pX[6] <= 196.0){
															return 4;
														} else {
															return 3;
														}
													} else {
														return 3;
													}
												}
											}
										} else {
											if(pX[9] <= 0.6200000047683716){
												if(pX[2] <= 0.3050000071525574){
													if(pX[10] <= 12.050000190734863){
														if(pX[9] <= 0.4099999964237213){
															return 2;
														} else {
															if(pX[5] <= 45.0){
																return 4;
															} else {
																return 5;
															}
														}
													} else {
														return 3;
													}
												} else {
													if(pX[8] <= 3.1850000619888306){
														return 5;
													} else {
														if(pX[7] <= 0.9937300086021423){
															return 0;
														} else {
															return 3;
														}
													}
												}
											} else {
												return 3;
											}
										}
									}
								} else {
									if(pX[10] <= 13.050000190734863){
										return 4;
									} else {
										if(pX[1] <= 0.4750000089406967){
											return 4;
										} else {
											return 3;
										}
									}
								}
							}
						} else {
							if(pX[9] <= 0.4050000011920929){
								if(pX[1] <= 0.29500000178813934){
									if(pX[3] <= 7.799999952316284){
										return 2;
									} else {
										if(pX[9] <= 0.375){
											return 3;
										} else {
											return 4;
										}
									}
								} else {
									if(pX[3] <= 8.674999713897705){
										return 5;
									} else {
										if(pX[8] <= 2.9850000143051147){
											return 3;
										} else {
											return 2;
										}
									}
								}
							} else {
								if(pX[4] <= 0.0364999994635582){
									if(pX[4] <= 0.02650000061839819){
										if(pX[10] <= 12.349999904632568){
											return 4;
										} else {
											return 1;
										}
									} else {
										if(pX[4] <= 0.03500000014901161){
											if(pX[7] <= 0.9978600144386292){
												if(pX[6] <= 107.5){
													if(pX[3] <= 7.299999952316284){
														return 5;
													} else {
														if(pX[2] <= 0.3450000137090683){
															return 4;
														} else {
															return 3;
														}
													}
												} else {
													if(pX[8] <= 3.1350001096725464){
														if(pX[7] <= 0.9968799948692322){
															return 2;
														} else {
															if(pX[0] <= 8.400000095367432){
																return 3;
															} else {
																return 2;
															}
														}
													} else {
														return 3;
													}
												}
											} else {
												if(pX[5] <= 37.5){
													return 0;
												} else {
													return 4;
												}
											}
										} else {
											return 3;
										}
									}
								} else {
									if(pX[9] <= 0.6850000023841858){
										if(pX[2] <= 0.45499999821186066){
											if(pX[5] <= 20.5){
												return 2;
											} else {
												if(pX[6] <= 214.0){
													if(pX[10] <= 8.849999904632568){
														if(pX[8] <= 3.2450000047683716){
															return 3;
														} else {
															return 2;
														}
													} else {
														if(pX[8] <= 3.334999918937683){
															return 3;
														} else {
															return 4;
														}
													}
												} else {
													return 2;
												}
											}
										} else {
											if(pX[3] <= 8.200000286102295){
												return 3;
											} else {
												return 2;
											}
										}
									} else {
										if(pX[0] <= 7.550000190734863){
											return 4;
										} else {
											return 3;
										}
									}
								}
							}
						}
					}
				} else {
					if(pX[3] <= 17.574999809265137){
						if(pX[1] <= 0.2824999988079071){
							if(pX[10] <= 9.050000190734863){
								if(pX[3] <= 12.700000286102295){
									if(pX[8] <= 3.0549999475479126){
										return 2;
									} else {
										if(pX[5] <= 59.0){
											if(pX[2] <= 0.2549999952316284){
												return 2;
											} else {
												if(pX[4] <= 0.04650000110268593){
													return 4;
												} else {
													return 3;
												}
											}
										} else {
											return 2;
										}
									}
								} else {
									if(pX[5] <= 36.5){
										if(pX[0] <= 6.450000047683716){
											if(pX[3] <= 13.0){
												return 1;
											} else {
												return 2;
											}
										} else {
											if(pX[0] <= 7.750000238418579){
												if(pX[4] <= 0.04900000058114529){
													return 3;
												} else {
													return 4;
												}
											} else {
												if(pX[5] <= 33.5){
													return 1;
												} else {
													return 4;
												}
											}
										}
									} else {
										if(pX[7] <= 0.9996299743652344){
											if(pX[0] <= 7.5){
												if(pX[2] <= 0.2750000059604645){
													if(pX[0] <= 6.75){
														if(pX[8] <= 3.1399999856948853){
															return 3;
														} else {
															return 2;
														}
													} else {
														return 5;
													}
												} else {
													if(pX[0] <= 6.75){
														if(pX[3] <= 15.25){
															return 2;
														} else {
															return 3;
														}
													} else {
														if(pX[2] <= 0.38499999046325684){
															if(pX[7] <= 0.9984999895095825){
																return 3;
															} else {
																if(pX[1] <= 0.26500000059604645){
																	return 4;
																} else {
																	return 3;
																}
															}
														} else {
															if(pX[3] <= 14.099999904632568){
																if(pX[3] <= 13.800000190734863){
																	return 2;
																} else {
																	return 3;
																}
															} else {
																return 4;
															}
														}
													}
												}
											} else {
												return 5;
											}
										} else {
											if(pX[8] <= 3.309999942779541){
												if(pX[10] <= 8.700000286102295){
													return 4;
												} else {
													if(pX[9] <= 0.7700000107288361){
														return 2;
													} else {
														return 3;
													}
												}
											} else {
												return 3;
											}
										}
									}
								}
							} else {
								if(pX[1] <= 0.19500000029802322){
									if(pX[9] <= 0.675000011920929){
										if(pX[1] <= 0.13499999791383743){
											if(pX[3] <= 11.450000286102295){
												if(pX[10] <= 9.349999904632568){
													return 4;
												} else {
													return 2;
												}
											} else {
												return 3;
											}
										} else {
											if(pX[10] <= 9.150000095367432){
												if(pX[3] <= 12.950000286102295){
													return 4;
												} else {
													return 3;
												}
											} else {
												if(pX[7] <= 0.9942249953746796){
													if(pX[10] <= 11.049999713897705){
														return 3;
													} else {
														return 5;
													}
												} else {
													if(pX[0] <= 7.450000047683716){
														return 3;
													} else {
														if(pX[2] <= 0.5999999940395355){
															if(pX[3] <= 10.949999809265137){
																return 3;
															} else {
																if(pX[9] <= 0.5550000071525574){
																	return 4;
																} else {
																	return 3;
																}
															}
														} else {
															return 4;
														}
													}
												}
											}
										}
									} else {
										if(pX[1] <= 0.17000000178813934){
											if(pX[5] <= 75.0){
												return 4;
											} else {
												return 3;
											}
										} else {
											return 2;
										}
									}
								} else {
									if(pX[8] <= 3.0749999284744263){
										if(pX[7] <= 0.997759997844696){
											if(pX[0] <= 7.0){
												if(pX[7] <= 0.9962800145149231){
													return 3;
												} else {
													return 2;
												}
											} else {
												if(pX[3] <= 10.199999809265137){
													if(pX[6] <= 210.0){
														if(pX[7] <= 0.99549999833107){
															return 3;
														} else {
															if(pX[7] <= 0.9961699843406677){
																return 2;
															} else {
																return 3;
															}
														}
													} else {
														return 1;
													}
												} else {
													if(pX[5] <= 48.5){
														return 4;
													} else {
														if(pX[4] <= 0.04800000041723251){
															return 3;
														} else {
															if(pX[3] <= 12.300000190734863){
																return 4;
															} else {
																return 2;
															}
														}
													}
												}
											}
										} else {
											if(pX[8] <= 2.9450000524520874){
												if(pX[3] <= 12.650000095367432){
													return 3;
												} else {
													return 2;
												}
											} else {
												if(pX[6] <= 192.0){
													return 3;
												} else {
													if(pX[6] <= 203.5){
														return 4;
													} else {
														return 3;
													}
												}
											}
										}
									} else {
										if(pX[10] <= 9.550000190734863){
											if(pX[1] <= 0.24499999731779099){
												if(pX[7] <= 0.9990400075912476){
													if(pX[1] <= 0.2149999961256981){
														if(pX[2] <= 0.3100000023841858){
															return 2;
														} else {
															return 3;
														}
													} else {
														if(pX[0] <= 7.650000095367432){
															if(pX[3] <= 12.224999904632568){
																if(pX[4] <= 0.05549999885261059){
																	if(pX[3] <= 9.300000190734863){
																		return 3;
																	} else {
																		return 2;
																	}
																} else {
																	return 2;
																}
															} else {
																return 3;
															}
														} else {
															if(pX[1] <= 0.22500000149011612){
																return 3;
															} else {
																return 4;
															}
														}
													}
												} else {
													if(pX[8] <= 3.3049999475479126){
														return 2;
													} else {
														return 4;
													}
												}
											} else {
												if(pX[5] <= 61.5){
													if(pX[6] <= 208.5){
														if(pX[0] <= 6.549999952316284){
															if(pX[4] <= 0.04749999940395355){
																if(pX[7] <= 0.9956600069999695){
																	return 3;
																} else {
																	if(pX[3] <= 9.449999809265137){
																		return 2;
																	} else {
																		if(pX[1] <= 0.2549999952316284){
																			return 2;
																		} else {
																			return 3;
																		}
																	}
																}
															} else {
																if(pX[0] <= 5.75){
																	return 3;
																} else {
																	if(pX[2] <= 0.5049999952316284){
																		return 2;
																	} else {
																		return 1;
																	}
																}
															}
														} else {
															if(pX[0] <= 6.700000047683716){
																return 2;
															} else {
																if(pX[4] <= 0.05350000038743019){
																	return 2;
																} else {
																	return 3;
																}
															}
														}
													} else {
														return 3;
													}
												} else {
													return 3;
												}
											}
										} else {
											if(pX[3] <= 11.5){
												if(pX[3] <= 7.1499998569488525){
													if(pX[9] <= 0.46000000834465027){
														return 2;
													} else {
														if(pX[9] <= 0.5250000059604645){
															return 3;
														} else {
															return 2;
														}
													}
												} else {
													if(pX[10] <= 10.349999904632568){
														if(pX[10] <= 9.700000286102295){
															if(pX[4] <= 0.04700000025331974){
																return 3;
															} else {
																return 2;
															}
														} else {
															if(pX[9] <= 0.5){
																return 3;
															} else {
																if(pX[9] <= 0.5199999809265137){
																	if(pX[10] <= 10.0){
																		return 2;
																	} else {
																		if(pX[8] <= 3.1449999809265137){
																			return 3;
																		} else {
																			return 2;
																		}
																	}
																} else {
																	if(pX[0] <= 8.050000190734863){
																		return 3;
																	} else {
																		if(pX[5] <= 38.5){
																			return 3;
																		} else {
																			return 2;
																		}
																	}
																}
															}
														}
													} else {
														if(pX[3] <= 8.799999713897705){
															if(pX[9] <= 0.5949999988079071){
																if(pX[1] <= 0.22500000149011612){
																	return 3;
																} else {
																	if(pX[1] <= 0.23499999940395355){
																		return 4;
																	} else {
																		return 3;
																	}
																}
															} else {
																return 2;
															}
														} else {
															if(pX[9] <= 0.5349999964237213){
																if(pX[2] <= 0.255000002682209){
																	return 2;
																} else {
																	return 3;
																}
															} else {
																if(pX[8] <= 3.174999952316284){
																	return 2;
																} else {
																	return 4;
																}
															}
														}
													}
												}
											} else {
												if(pX[7] <= 0.9957300126552582){
													return 2;
												} else {
													if(pX[0] <= 7.3500001430511475){
														if(pX[9] <= 0.4099999964237213){
															if(pX[8] <= 3.180000066757202){
																return 3;
															} else {
																if(pX[7] <= 0.999099999666214){
																	return 2;
																} else {
																	return 3;
																}
															}
														} else {
															if(pX[2] <= 0.33500000834465027){
																return 3;
															} else {
																if(pX[5] <= 71.5){
																	if(pX[0] <= 6.650000095367432){
																		return 2;
																	} else {
																		if(pX[2] <= 0.3500000089406967){
																			if(pX[4] <= 0.051500000059604645){
																				return 3;
																			} else {
																				return 0;
																			}
																		} else {
																			return 3;
																		}
																	}
																} else {
																	return 2;
																}
															}
														}
													} else {
														if(pX[1] <= 0.21000000089406967){
															return 4;
														} else {
															if(pX[4] <= 0.04700000025331974){
																return 3;
															} else {
																if(pX[1] <= 0.24500000476837158){
																	if(pX[5] <= 57.5){
																		return 2;
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
											}
										}
									}
								}
							}
						} else {
							if(pX[0] <= 6.549999952316284){
								if(pX[6] <= 165.0){
									if(pX[8] <= 3.1700000762939453){
										if(pX[10] <= 10.28333330154419){
											return 2;
										} else {
											return 4;
										}
									} else {
										if(pX[10] <= 11.0){
											return 3;
										} else {
											return 1;
										}
									}
								} else {
									if(pX[9] <= 0.5099999904632568){
										if(pX[7] <= 0.9974749982357025){
											if(pX[7] <= 0.9971599876880646){
												if(pX[2] <= 0.45000000298023224){
													if(pX[7] <= 0.9941049814224243){
														return 3;
													} else {
														if(pX[9] <= 0.42499999701976776){
															if(pX[8] <= 3.149999976158142){
																return 2;
															} else {
																return 3;
															}
														} else {
															return 2;
														}
													}
												} else {
													return 3;
												}
											} else {
												return 3;
											}
										} else {
											if(pX[0] <= 6.0){
												return 3;
											} else {
												return 2;
											}
										}
									} else {
										if(pX[8] <= 3.1149998903274536){
											return 2;
										} else {
											return 3;
										}
									}
								}
							} else {
								if(pX[3] <= 16.800000190734863){
									if(pX[7] <= 0.9950399994850159){
										if(pX[1] <= 0.49000000953674316){
											if(pX[10] <= 11.900000095367432){
												if(pX[8] <= 3.1750000715255737){
													return 3;
												} else {
													return 2;
												}
											} else {
												if(pX[6] <= 147.5){
													return 3;
												} else {
													return 4;
												}
											}
										} else {
											return 1;
										}
									} else {
										if(pX[4] <= 0.21249999850988388){
											if(pX[8] <= 3.2450000047683716){
												if(pX[9] <= 0.6349999904632568){
													if(pX[6] <= 175.5){
														if(pX[1] <= 0.42000000178813934){
															if(pX[10] <= 8.849999904632568){
																if(pX[4] <= 0.04350000061094761){
																	return 2;
																} else {
																	if(pX[2] <= 0.6500000059604645){
																		return 3;
																	} else {
																		return 2;
																	}
																}
															} else {
																return 2;
															}
														} else {
															if(pX[4] <= 0.04150000028312206){
																return 3;
															} else {
																if(pX[2] <= 0.6150000095367432){
																	return 2;
																} else {
																	return 3;
																}
															}
														}
													} else {
														if(pX[1] <= 0.4050000011920929){
															if(pX[5] <= 42.5){
																if(pX[8] <= 3.0199999809265137){
																	return 2;
																} else {
																	if(pX[5] <= 39.5){
																		return 3;
																	} else {
																		if(pX[10] <= 9.050000190734863){
																			return 2;
																		} else {
																			return 3;
																		}
																	}
																}
															} else {
																if(pX[6] <= 193.5){
																	if(pX[0] <= 7.1499998569488525){
																		if(pX[3] <= 9.449999809265137){
																			return 2;
																		} else {
																			return 3;
																		}
																	} else {
																		if(pX[6] <= 188.5){
																			if(pX[0] <= 7.400000095367432){
																				return 2;
																			} else {
																				if(pX[4] <= 0.054500000551342964){
																					if(pX[0] <= 7.599999904632568){
																						return 3;
																					} else {
																						return 2;
																					}
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			return 1;
																		}
																	}
																} else {
																	if(pX[6] <= 228.5){
																		if(pX[7] <= 0.9960500001907349){
																			return 3;
																		} else {
																			return 2;
																		}
																	} else {
																		return 3;
																	}
																}
															}
														} else {
															if(pX[3] <= 14.849999904632568){
																if(pX[6] <= 228.0){
																	return 2;
																} else {
																	return 3;
																}
															} else {
																return 0;
															}
														}
													}
												} else {
													return 2;
												}
											} else {
												if(pX[0] <= 6.75){
													if(pX[5] <= 13.0){
														return 1;
													} else {
														if(pX[2] <= 0.33000001311302185){
															return 4;
														} else {
															return 2;
														}
													}
												} else {
													if(pX[3] <= 7.650000095367432){
														if(pX[0] <= 6.950000047683716){
															return 4;
														} else {
															if(pX[0] <= 7.3500001430511475){
																return 2;
															} else {
																return 1;
															}
														}
													} else {
														if(pX[4] <= 0.04150000028312206){
															return 2;
														} else {
															if(pX[7] <= 0.9964500069618225){
																return 2;
															} else {
																if(pX[0] <= 8.150000095367432){
																	return 3;
																} else {
																	if(pX[2] <= 0.4350000023841858){
																		return 2;
																	} else {
																		return 3;
																	}
																}
															}
														}
													}
												}
											}
										} else {
											return 3;
										}
									}
								} else {
									if(pX[5] <= 56.5){
										return 3;
									} else {
										return 1;
									}
								}
							}
						}
					} else {
						if(pX[7] <= 0.9997299909591675){
							if(pX[4] <= 0.04899999871850014){
								if(pX[9] <= 0.4749999940395355){
									return 3;
								} else {
									return 2;
								}
							} else {
								if(pX[9] <= 0.4650000035762787){
									if(pX[10] <= 11.050000190734863){
										return 3;
									} else {
										return 2;
									}
								} else {
									return 2;
								}
							}
						} else {
							if(pX[1] <= 0.19999999552965164){
								if(pX[10] <= 8.900000095367432){
									return 3;
								} else {
									return 4;
								}
							} else {
								if(pX[2] <= 0.29500000178813934){
									if(pX[1] <= 0.3050000071525574){
										return 2;
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
			}
		}
	}
}
unsigned int LLVMTAStandardIfTree_predict2(float const pX[11]){
	if(pX[4] <= 0.039499999955296516){
		if(pX[1] <= 0.27250000834465027){
			if(pX[8] <= 3.2450000047683716){
				if(pX[2] <= 0.29500000178813934){
					if(pX[8] <= 3.125){
						if(pX[5] <= 25.5){
							if(pX[5] <= 19.5){
								if(pX[10] <= 11.0){
									if(pX[0] <= 7.5){
										if(pX[1] <= 0.23500000685453415){
											return 4;
										} else {
											return 2;
										}
									} else {
										return 2;
									}
								} else {
									if(pX[2] <= 0.2750000059604645){
										if(pX[8] <= 2.9850000143051147){
											return 5;
										} else {
											return 3;
										}
									} else {
										if(pX[9] <= 0.33500000834465027){
											return 1;
										} else {
											if(pX[9] <= 0.679999977350235){
												return 4;
											} else {
												return 3;
											}
										}
									}
								}
							} else {
								return 3;
							}
						} else {
							if(pX[6] <= 115.5){
								if(pX[9] <= 0.4099999964237213){
									if(pX[7] <= 0.9892550110816956){
										return 4;
									} else {
										if(pX[9] <= 0.375){
											return 3;
										} else {
											if(pX[1] <= 0.23499999940395355){
												return 4;
											} else {
												return 3;
											}
										}
									}
								} else {
									return 4;
								}
							} else {
								if(pX[7] <= 0.9930000007152557){
									if(pX[3] <= 7.099999904632568){
										if(pX[1] <= 0.1850000023841858){
											return 3;
										} else {
											return 4;
										}
									} else {
										return 5;
									}
								} else {
									if(pX[9] <= 0.4699999988079071){
										if(pX[3] <= 15.65000057220459){
											if(pX[5] <= 85.0){
												return 3;
											} else {
												return 0;
											}
										} else {
											return 2;
										}
									} else {
										return 3;
									}
								}
							}
						}
					} else {
						if(pX[6] <= 97.5){
							return 3;
						} else {
							if(pX[9] <= 0.5450000166893005){
								if(pX[8] <= 3.1850000619888306){
									if(pX[8] <= 3.165000081062317){
										if(pX[7] <= 0.9936999976634979){
											if(pX[6] <= 103.0){
												return 4;
											} else {
												if(pX[2] <= 0.2750000059604645){
													if(pX[7] <= 0.9929499924182892){
														return 3;
													} else {
														return 4;
													}
												} else {
													return 3;
												}
											}
										} else {
											if(pX[3] <= 13.449999809265137){
												return 2;
											} else {
												return 3;
											}
										}
									} else {
										return 3;
									}
								} else {
									if(pX[2] <= 0.2750000059604645){
										if(pX[8] <= 3.2200000286102295){
											return 2;
										} else {
											return 3;
										}
									} else {
										if(pX[7] <= 0.9927250146865845){
											if(pX[0] <= 5.8500001430511475){
												return 2;
											} else {
												return 3;
											}
										} else {
											return 5;
										}
									}
								}
							} else {
								if(pX[7] <= 0.9927299916744232){
									return 4;
								} else {
									if(pX[4] <= 0.02800000086426735){
										return 4;
									} else {
										return 3;
									}
								}
							}
						}
					}
				} else {
					if(pX[5] <= 13.5){
						if(pX[8] <= 3.1950000524520874){
							if(pX[1] <= 0.2199999988079071){
								if(pX[6] <= 112.0){
									return 2;
								} else {
									return 1;
								}
							} else {
								if(pX[10] <= 11.25){
									if(pX[6] <= 100.5){
										return 3;
									} else {
										return 1;
									}
								} else {
									if(pX[4] <= 0.03550000116229057){
										return 2;
									} else {
										return 3;
									}
								}
							}
						} else {
							return 3;
						}
					} else {
						if(pX[10] <= 10.949999809265137){
							if(pX[5] <= 17.5){
								if(pX[9] <= 0.5149999856948853){
									if(pX[2] <= 0.32500000298023224){
										return 3;
									} else {
										if(pX[0] <= 7.950000047683716){
											return 4;
										} else {
											return 3;
										}
									}
								} else {
									if(pX[0] <= 7.500000238418579){
										return 5;
									} else {
										if(pX[9] <= 0.5399999916553497){
											return 2;
										} else {
											return 0;
										}
									}
								}
							} else {
								if(pX[1] <= 0.26500000059604645){
									if(pX[9] <= 0.6650000214576721){
										if(pX[8] <= 2.8550000190734863){
											return 1;
										} else {
											if(pX[1] <= 0.19500000029802322){
												if(pX[0] <= 6.049999952316284){
													return 5;
												} else {
													if(pX[8] <= 3.069999933242798){
														if(pX[0] <= 7.200000047683716){
															return 3;
														} else {
															if(pX[7] <= 0.9931299984455109){
																return 3;
															} else {
																return 2;
															}
														}
													} else {
														if(pX[10] <= 10.25){
															if(pX[1] <= 0.1600000038743019){
																return 3;
															} else {
																return 4;
															}
														} else {
															if(pX[2] <= 0.3700000047683716){
																if(pX[10] <= 10.75){
																	return 2;
																} else {
																	return 4;
																}
															} else {
																return 2;
															}
														}
													}
												}
											} else {
												if(pX[3] <= 8.949999809265137){
													if(pX[7] <= 0.9954000115394592){
														if(pX[10] <= 10.75){
															if(pX[0] <= 6.099999904632568){
																if(pX[1] <= 0.23499999195337296){
																	return 2;
																} else {
																	return 3;
																}
															} else {
																if(pX[1] <= 0.23499999940395355){
																	return 3;
																} else {
																	if(pX[5] <= 35.5){
																		return 3;
																	} else {
																		return 2;
																	}
																}
															}
														} else {
															if(pX[5] <= 35.5){
																if(pX[9] <= 0.5250000059604645){
																	return 2;
																} else {
																	return 3;
																}
															} else {
																if(pX[2] <= 0.3500000089406967){
																	return 4;
																} else {
																	return 3;
																}
															}
														}
													} else {
														if(pX[5] <= 51.0){
															return 2;
														} else {
															if(pX[4] <= 0.030500000342726707){
																return 3;
															} else {
																return 2;
															}
														}
													}
												} else {
													if(pX[8] <= 3.034999966621399){
														if(pX[4] <= 0.032499998807907104){
															return 2;
														} else {
															if(pX[1] <= 0.2149999961256981){
																return 2;
															} else {
																return 3;
															}
														}
													} else {
														return 3;
													}
												}
											}
										}
									} else {
										if(pX[5] <= 35.0){
											return 2;
										} else {
											if(pX[0] <= 7.1499998569488525){
												return 4;
											} else {
												return 3;
											}
										}
									}
								} else {
									if(pX[7] <= 0.9968449771404266){
										return 2;
									} else {
										return 6;
									}
								}
							}
						} else {
							if(pX[0] <= 5.700000047683716){
								return 4;
							} else {
								if(pX[10] <= 13.150000095367432){
									if(pX[2] <= 0.4750000089406967){
										if(pX[7] <= 0.992374986410141){
											if(pX[7] <= 0.9921199977397919){
												if(pX[6] <= 50.0){
													return 4;
												} else {
													if(pX[9] <= 0.38499999046325684){
														if(pX[10] <= 12.650000095367432){
															if(pX[0] <= 6.950000047683716){
																if(pX[5] <= 61.5){
																	return 3;
																} else {
																	return 1;
																}
															} else {
																if(pX[6] <= 104.5){
																	return 4;
																} else {
																	if(pX[9] <= 0.3150000125169754){
																		return 3;
																	} else {
																		return 5;
																	}
																}
															}
														} else {
															return 4;
														}
													} else {
														if(pX[7] <= 0.9910700023174286){
															if(pX[7] <= 0.9903050065040588){
																if(pX[10] <= 11.450000286102295){
																	return 4;
																} else {
																	if(pX[5] <= 24.5){
																		if(pX[10] <= 12.25){
																			return 3;
																		} else {
																			if(pX[7] <= 0.9897550046443939){
																				return 3;
																			} else {
																				return 4;
																			}
																		}
																	} else {
																		if(pX[6] <= 93.5){
																			if(pX[10] <= 12.300000190734863){
																				return 3;
																			} else {
																				return 5;
																			}
																		} else {
																			if(pX[6] <= 101.0){
																				if(pX[6] <= 97.0){
																					return 3;
																				} else {
																					return 4;
																				}
																			} else {
																				return 3;
																			}
																		}
																	}
																}
															} else {
																if(pX[9] <= 0.7000000178813934){
																	return 3;
																} else {
																	if(pX[9] <= 0.7400000095367432){
																		return 4;
																	} else {
																		return 3;
																	}
																}
															}
														} else {
															if(pX[1] <= 0.2149999961256981){
																if(pX[7] <= 0.9914549887180328){
																	if(pX[7] <= 0.9911649823188782){
																		return 3;
																	} else {
																		return 4;
																	}
																} else {
																	return 3;
																}
															} else {
																if(pX[6] <= 134.0){
																	if(pX[2] <= 0.35999999940395355){
																		if(pX[5] <= 31.5){
																			return 3;
																		} else {
																			if(pX[9] <= 0.4699999988079071){
																				return 5;
																			} else {
																				return 4;
																			}
																		}
																	} else {
																		return 2;
																	}
																} else {
																	return 4;
																}
															}
														}
													}
												}
											} else {
												return 4;
											}
										} else {
											if(pX[9] <= 0.32500000298023224){
												return 2;
											} else {
												if(pX[2] <= 0.38500000536441803){
													return 3;
												} else {
													if(pX[2] <= 0.4050000011920929){
														return 1;
													} else {
														return 3;
													}
												}
											}
										}
									} else {
										if(pX[6] <= 149.5){
											return 4;
										} else {
											return 3;
										}
									}
								} else {
									if(pX[3] <= 4.825000107288361){
										return 5;
									} else {
										return 4;
									}
								}
							}
						}
					}
				}
			} else {
				if(pX[7] <= 0.9915550053119659){
					if(pX[7] <= 0.9904699921607971){
						if(pX[5] <= 46.5){
							if(pX[6] <= 75.5){
								if(pX[7] <= 0.9897750020027161){
									if(pX[3] <= 1.25){
										return 3;
									} else {
										return 5;
									}
								} else {
									return 4;
								}
							} else {
								if(pX[1] <= 0.1850000023841858){
									if(pX[8] <= 3.365000009536743){
										return 3;
									} else {
										return 4;
									}
								} else {
									if(pX[2] <= 0.21000000089406967){
										return 4;
									} else {
										if(pX[8] <= 3.384999990463257){
											if(pX[6] <= 84.0){
												if(pX[7] <= 0.989549994468689){
													return 4;
												} else {
													return 3;
												}
											} else {
												return 3;
											}
										} else {
											if(pX[6] <= 116.0){
												if(pX[3] <= 3.149999976158142){
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
						} else {
							if(pX[4] <= 0.027499999850988388){
								return 5;
							} else {
								return 4;
							}
						}
					} else {
						if(pX[6] <= 165.0){
							if(pX[1] <= 0.16499999910593033){
								if(pX[10] <= 10.5){
									return 3;
								} else {
									if(pX[3] <= 1.149999976158142){
										if(pX[4] <= 0.0364999994635582){
											return 5;
										} else {
											return 3;
										}
									} else {
										if(pX[0] <= 6.25){
											return 4;
										} else {
											if(pX[2] <= 0.36500000953674316){
												return 4;
											} else {
												return 2;
											}
										}
									}
								}
							} else {
								if(pX[2] <= 0.39499999582767487){
									if(pX[8] <= 3.3850001096725464){
										if(pX[4] <= 0.02650000061839819){
											if(pX[2] <= 0.3499999940395355){
												return 3;
											} else {
												if(pX[5] <= 26.0){
													return 4;
												} else {
													return 5;
												}
											}
										} else {
											if(pX[9] <= 0.4350000023841858){
												if(pX[9] <= 0.39499999582767487){
													return 4;
												} else {
													if(pX[3] <= 1.9499999284744263){
														return 3;
													} else {
														return 5;
													}
												}
											} else {
												return 4;
											}
										}
									} else {
										if(pX[7] <= 0.9907800257205963){
											return 2;
										} else {
											if(pX[8] <= 3.430000066757202){
												return 4;
											} else {
												return 3;
											}
										}
									}
								} else {
									if(pX[2] <= 0.4099999964237213){
										return 2;
									} else {
										if(pX[7] <= 0.9907000064849854){
											return 4;
										} else {
											if(pX[8] <= 3.399999976158142){
												return 3;
											} else {
												return 0;
											}
										}
									}
								}
							}
						} else {
							if(pX[4] <= 0.035499999299645424){
								return 5;
							} else {
								return 3;
							}
						}
					}
				} else {
					if(pX[7] <= 0.9985550045967102){
						if(pX[9] <= 0.6599999964237213){
							if(pX[9] <= 0.4650000035762787){
								if(pX[3] <= 11.950000286102295){
									if(pX[8] <= 3.34499990940094){
										if(pX[6] <= 128.5){
											if(pX[9] <= 0.4449999928474426){
												if(pX[4] <= 0.033000001683831215){
													return 2;
												} else {
													return 3;
												}
											} else {
												return 3;
											}
										} else {
											if(pX[9] <= 0.3999999910593033){
												if(pX[7] <= 0.9930700063705444){
													return 3;
												} else {
													if(pX[1] <= 0.26500000059604645){
														return 2;
													} else {
														return 3;
													}
												}
											} else {
												return 2;
											}
										}
									} else {
										if(pX[6] <= 125.5){
											if(pX[1] <= 0.18250000476837158){
												return 2;
											} else {
												if(pX[3] <= 10.400000095367432){
													return 3;
												} else {
													return 4;
												}
											}
										} else {
											if(pX[2] <= 0.2849999964237213){
												return 4;
											} else {
												if(pX[6] <= 161.5){
													if(pX[0] <= 6.049999952316284){
														if(pX[5] <= 31.0){
															return 4;
														} else {
															return 2;
														}
													} else {
														if(pX[7] <= 0.9932700097560883){
															return 4;
														} else {
															return 3;
														}
													}
												} else {
													return 1;
												}
											}
										}
									}
								} else {
									return 5;
								}
							} else {
								if(pX[4] <= 0.03749999962747097){
									if(pX[9] <= 0.625){
										if(pX[3] <= 2.100000023841858){
											if(pX[7] <= 0.9918499886989594){
												if(pX[5] <= 32.0){
													return 5;
												} else {
													return 3;
												}
											} else {
												return 3;
											}
										} else {
											if(pX[1] <= 0.17999999970197678){
												return 4;
											} else {
												if(pX[7] <= 0.992249995470047){
													if(pX[1] <= 0.2150000035762787){
														return 2;
													} else {
														return 5;
													}
												} else {
													if(pX[1] <= 0.26500000059604645){
														if(pX[0] <= 5.700000047683716){
															if(pX[5] <= 35.0){
																return 3;
															} else {
																return 4;
															}
														} else {
															return 3;
														}
													} else {
														return 4;
													}
												}
											}
										}
									} else {
										return 1;
									}
								} else {
									if(pX[3] <= 4.0){
										if(pX[7] <= 0.9928499758243561){
											if(pX[10] <= 11.049999713897705){
												return 2;
											} else {
												return 4;
											}
										} else {
											if(pX[7] <= 0.9939599931240082){
												return 3;
											} else {
												return 1;
											}
										}
									} else {
										if(pX[10] <= 9.599999904632568){
											return 3;
										} else {
											if(pX[9] <= 0.5900000035762787){
												if(pX[0] <= 6.050000190734863){
													return 3;
												} else {
													if(pX[7] <= 0.9944349825382233){
														return 3;
													} else {
														return 4;
													}
												}
											} else {
												return 3;
											}
										}
									}
								}
							}
						} else {
							if(pX[1] <= 0.1600000038743019){
								if(pX[5] <= 17.5){
									return 3;
								} else {
									return 5;
								}
							} else {
								return 4;
							}
						}
					} else {
						return 2;
					}
				}
			}
		} else {
			if(pX[5] <= 11.5){
				if(pX[9] <= 0.3449999988079071){
					if(pX[1] <= 0.3149999976158142){
						return 1;
					} else {
						if(pX[7] <= 0.990449994802475){
							if(pX[8] <= 3.125){
								return 2;
							} else {
								if(pX[3] <= 0.949999988079071){
									return 1;
								} else {
									return 2;
								}
							}
						} else {
							return 2;
						}
					}
				} else {
					if(pX[3] <= 1.1500000357627869){
						return 1;
					} else {
						if(pX[8] <= 3.309999942779541){
							if(pX[2] <= 0.38499999046325684){
								if(pX[7] <= 0.9921799898147583){
									if(pX[9] <= 0.3700000047683716){
										if(pX[4] <= 0.03749999962747097){
											return 3;
										} else {
											return 4;
										}
									} else {
										return 3;
									}
								} else {
									if(pX[9] <= 0.4599999934434891){
										if(pX[2] <= 0.33000001311302185){
											return 4;
										} else {
											return 3;
										}
									} else {
										if(pX[6] <= 184.0){
											return 2;
										} else {
											return 3;
										}
									}
								}
							} else {
								if(pX[9] <= 0.4650000035762787){
									if(pX[5] <= 7.0){
										return 2;
									} else {
										return 4;
									}
								} else {
									if(pX[9] <= 0.6800000071525574){
										return 5;
									} else {
										return 3;
									}
								}
							}
						} else {
							return 1;
						}
					}
				}
			} else {
				if(pX[10] <= 11.150000095367432){
					if(pX[10] <= 9.75){
						if(pX[7] <= 0.9982500076293945){
							if(pX[0] <= 7.049999952316284){
								if(pX[3] <= 11.449999809265137){
									if(pX[3] <= 5.8500001430511475){
										return 2;
									} else {
										if(pX[10] <= 9.050000190734863){
											return 3;
										} else {
											if(pX[3] <= 7.450000047683716){
												return 3;
											} else {
												if(pX[4] <= 0.033000001683831215){
													return 3;
												} else {
													return 2;
												}
											}
										}
									}
								} else {
									return 2;
								}
							} else {
								if(pX[5] <= 49.5){
									if(pX[8] <= 3.1500000953674316){
										return 2;
									} else {
										if(pX[7] <= 0.9955749809741974){
											return 1;
										} else {
											return 3;
										}
									}
								} else {
									if(pX[8] <= 3.1050000190734863){
										if(pX[5] <= 55.5){
											return 3;
										} else {
											return 1;
										}
									} else {
										return 3;
									}
								}
							}
						} else {
							if(pX[2] <= 0.3999999910593033){
								if(pX[7] <= 0.9988899827003479){
									return 4;
								} else {
									return 3;
								}
							} else {
								return 3;
							}
						}
					} else {
						if(pX[6] <= 85.5){
							if(pX[4] <= 0.03350000083446503){
								if(pX[10] <= 10.950000286102295){
									return 3;
								} else {
									return 4;
								}
							} else {
								return 2;
							}
						} else {
							if(pX[10] <= 10.650000095367432){
								if(pX[0] <= 5.1000001430511475){
									return 2;
								} else {
									if(pX[8] <= 3.309999942779541){
										if(pX[9] <= 0.6800000071525574){
											if(pX[6] <= 160.5){
												if(pX[8] <= 3.1850000619888306){
													if(pX[5] <= 40.0){
														if(pX[0] <= 7.700000047683716){
															if(pX[0] <= 7.1000001430511475){
																return 3;
															} else {
																if(pX[2] <= 0.3099999949336052){
																	return 2;
																} else {
																	return 3;
																}
															}
														} else {
															return 4;
														}
													} else {
														return 2;
													}
												} else {
													return 3;
												}
											} else {
												if(pX[0] <= 7.400000095367432){
													if(pX[7] <= 0.9949249923229218){
														if(pX[5] <= 85.25){
															return 3;
														} else {
															return 1;
														}
													} else {
														if(pX[5] <= 36.5){
															return 3;
														} else {
															return 2;
														}
													}
												} else {
													return 2;
												}
											}
										} else {
											return 2;
										}
									} else {
										if(pX[5] <= 15.0){
											return 4;
										} else {
											if(pX[0] <= 6.25){
												if(pX[4] <= 0.03700000047683716){
													return 3;
												} else {
													return 4;
												}
											} else {
												return 2;
											}
										}
									}
								}
							} else {
								if(pX[7] <= 0.9913999736309052){
									return 4;
								} else {
									if(pX[8] <= 3.299999952316284){
										if(pX[6] <= 109.0){
											if(pX[0] <= 7.0){
												return 3;
											} else {
												return 1;
											}
										} else {
											if(pX[3] <= 7.2250001430511475){
												if(pX[6] <= 125.0){
													if(pX[8] <= 3.0){
														return 3;
													} else {
														if(pX[0] <= 6.400000095367432){
															return 2;
														} else {
															if(pX[0] <= 7.150000095367432){
																return 3;
															} else {
																return 2;
															}
														}
													}
												} else {
													return 2;
												}
											} else {
												if(pX[8] <= 3.1100000143051147){
													return 4;
												} else {
													if(pX[5] <= 44.5){
														return 2;
													} else {
														return 3;
													}
												}
											}
										}
									} else {
										if(pX[10] <= 10.900000095367432){
											if(pX[2] <= 0.4950000196695328){
												return 4;
											} else {
												return 2;
											}
										} else {
											if(pX[5] <= 36.5){
												return 3;
											} else {
												if(pX[0] <= 5.549999952316284){
													return 4;
												} else {
													return 3;
												}
											}
										}
									}
								}
							}
						}
					}
				} else {
					if(pX[2] <= 0.32500000298023224){
						if(pX[8] <= 3.1149998903274536){
							if(pX[9] <= 0.32999999821186066){
								return 4;
							} else {
								if(pX[9] <= 0.45499999821186066){
									if(pX[0] <= 8.200000286102295){
										if(pX[2] <= 0.24499999731779099){
											if(pX[7] <= 0.9893999993801117){
												return 3;
											} else {
												if(pX[6] <= 89.0){
													return 2;
												} else {
													return 4;
												}
											}
										} else {
											if(pX[8] <= 2.9950000047683716){
												if(pX[5] <= 33.0){
													return 3;
												} else {
													return 5;
												}
											} else {
												return 3;
											}
										}
									} else {
										return 2;
									}
								} else {
									if(pX[5] <= 20.5){
										if(pX[8] <= 2.9350000619888306){
											return 4;
										} else {
											return 3;
										}
									} else {
										if(pX[8] <= 2.990000009536743){
											return 5;
										} else {
											if(pX[3] <= 9.500000238418579){
												return 4;
											} else {
												return 2;
											}
										}
									}
								}
							}
						} else {
							if(pX[6] <= 67.0){
								if(pX[4] <= 0.03699999861419201){
									if(pX[0] <= 5.5){
										return 3;
									} else {
										return 2;
									}
								} else {
									return 0;
								}
							} else {
								if(pX[2] <= 0.2750000059604645){
									if(pX[9] <= 0.3400000035762787){
										return 5;
									} else {
										if(pX[7] <= 0.9895200133323669){
											if(pX[5] <= 55.0){
												return 4;
											} else {
												return 2;
											}
										} else {
											if(pX[9] <= 0.4099999964237213){
												if(pX[10] <= 11.75){
													return 3;
												} else {
													if(pX[4] <= 0.03150000050663948){
														return 5;
													} else {
														return 4;
													}
												}
											} else {
												if(pX[10] <= 12.25){
													if(pX[4] <= 0.03500000014901161){
														if(pX[0] <= 5.25){
															return 3;
														} else {
															return 4;
														}
													} else {
														if(pX[10] <= 11.25){
															return 4;
														} else {
															return 3;
														}
													}
												} else {
													if(pX[3] <= 4.25){
														if(pX[8] <= 3.3799999952316284){
															if(pX[6] <= 121.0){
																return 3;
															} else {
																return 4;
															}
														} else {
															return 2;
														}
													} else {
														if(pX[6] <= 95.5){
															return 5;
														} else {
															if(pX[0] <= 6.6499998569488525){
																if(pX[4] <= 0.03500000014901161){
																	if(pX[5] <= 28.0){
																		if(pX[10] <= 13.300000190734863){
																			return 3;
																		} else {
																			return 4;
																		}
																	} else {
																		if(pX[7] <= 0.9900400042533875){
																			return 4;
																		} else {
																			return 5;
																		}
																	}
																} else {
																	if(pX[2] <= 0.07499999739229679){
																		return 3;
																	} else {
																		return 4;
																	}
																}
															} else {
																return 4;
															}
														}
													}
												}
											}
										}
									}
								} else {
									if(pX[4] <= 0.027500000782310963){
										if(pX[7] <= 0.9935300052165985){
											if(pX[5] <= 38.0){
												if(pX[8] <= 3.375){
													if(pX[0] <= 7.049999952316284){
														if(pX[1] <= 0.2849999964237213){
															if(pX[10] <= 12.625){
																return 4;
															} else {
																return 3;
															}
														} else {
															return 4;
														}
													} else {
														return 3;
													}
												} else {
													return 6;
												}
											} else {
												if(pX[5] <= 40.0){
													return 5;
												} else {
													return 3;
												}
											}
										} else {
											return 5;
										}
									} else {
										if(pX[5] <= 21.0){
											if(pX[10] <= 12.300000190734863){
												return 4;
											} else {
												if(pX[6] <= 105.0){
													return 4;
												} else {
													return 3;
												}
											}
										} else {
											if(pX[0] <= 8.049999952316284){
												if(pX[6] <= 197.5){
													if(pX[5] <= 28.0){
														if(pX[2] <= 0.3149999976158142){
															if(pX[8] <= 3.1399999856948853){
																return 3;
															} else {
																if(pX[1] <= 0.3400000035762787){
																	return 4;
																} else {
																	if(pX[10] <= 12.150000095367432){
																		return 3;
																	} else {
																		return 4;
																	}
																}
															}
														} else {
															return 3;
														}
													} else {
														if(pX[8] <= 3.225000023841858){
															if(pX[10] <= 12.75){
																if(pX[8] <= 3.2050000429153442){
																	if(pX[5] <= 32.0){
																		return 3;
																	} else {
																		return 4;
																	}
																} else {
																	return 3;
																}
															} else {
																return 4;
															}
														} else {
															return 4;
														}
													}
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
						}
					} else {
						if(pX[8] <= 3.1049998998641968){
							if(pX[6] <= 95.5){
								if(pX[6] <= 85.0){
									return 3;
								} else {
									if(pX[3] <= 1.149999976158142){
										return 5;
									} else {
										if(pX[8] <= 3.024999976158142){
											return 2;
										} else {
											if(pX[10] <= 11.699999809265137){
												return 2;
											} else {
												return 4;
											}
										}
									}
								}
							} else {
								if(pX[7] <= 0.9907999932765961){
									if(pX[9] <= 0.375){
										return 3;
									} else {
										return 4;
									}
								} else {
									if(pX[1] <= 0.2900000065565109){
										return 5;
									} else {
										if(pX[10] <= 12.599999904632568){
											if(pX[5] <= 23.0){
												return 3;
											} else {
												return 4;
											}
										} else {
											return 5;
										}
									}
								}
							}
						} else {
							if(pX[4] <= 0.035499999299645424){
								if(pX[4] <= 0.022499999962747097){
									if(pX[7] <= 0.99058997631073){
										if(pX[5] <= 50.5){
											return 5;
										} else {
											return 6;
										}
									} else {
										return 4;
									}
								} else {
									if(pX[9] <= 0.4950000047683716){
										if(pX[8] <= 3.3850001096725464){
											if(pX[6] <= 106.0){
												return 3;
											} else {
												if(pX[2] <= 0.39000000059604645){
													if(pX[8] <= 3.1950000524520874){
														if(pX[0] <= 7.75){
															return 4;
														} else {
															return 3;
														}
													} else {
														if(pX[1] <= 0.32500000298023224){
															return 3;
														} else {
															if(pX[1] <= 0.4000000059604645){
																if(pX[8] <= 3.2649999856948853){
																	return 3;
																} else {
																	return 4;
																}
															} else {
																return 3;
															}
														}
													}
												} else {
													if(pX[7] <= 0.9917249977588654){
														if(pX[1] <= 0.42000000178813934){
															return 4;
														} else {
															return 3;
														}
													} else {
														if(pX[1] <= 0.4649999886751175){
															return 5;
														} else {
															return 3;
														}
													}
												}
											}
										} else {
											return 4;
										}
									} else {
										if(pX[3] <= 3.75){
											return 3;
										} else {
											if(pX[4] <= 0.027999999932944775){
												return 3;
											} else {
												if(pX[3] <= 5.775000095367432){
													return 5;
												} else {
													if(pX[6] <= 131.0){
														return 4;
													} else {
														return 3;
													}
												}
											}
										}
									}
								}
							} else {
								if(pX[4] <= 0.0364999994635582){
									if(pX[1] <= 0.2900000065565109){
										return 2;
									} else {
										if(pX[10] <= 11.800000190734863){
											return 3;
										} else {
											return 4;
										}
									}
								} else {
									if(pX[0] <= 6.3500001430511475){
										if(pX[6] <= 109.5){
											if(pX[0] <= 5.5){
												return 5;
											} else {
												return 4;
											}
										} else {
											return 3;
										}
									} else {
										return 4;
									}
								}
							}
						}
					}
				}
			}
		}
	} else {
		if(pX[10] <= 10.724999904632568){
			if(pX[10] <= 9.775000095367432){
				if(pX[2] <= 0.26500000059604645){
					if(pX[3] <= 17.199999809265137){
						if(pX[1] <= 0.22500000149011612){
							if(pX[5] <= 56.5){
								if(pX[3] <= 16.875){
									if(pX[2] <= 0.22500000149011612){
										return 3;
									} else {
										if(pX[7] <= 0.9951499998569489){
											if(pX[9] <= 0.4949999898672104){
												if(pX[6] <= 145.0){
													return 2;
												} else {
													if(pX[1] <= 0.19500000029802322){
														return 4;
													} else {
														return 2;
													}
												}
											} else {
												return 3;
											}
										} else {
											return 3;
										}
									}
								} else {
									return 2;
								}
							} else {
								if(pX[1] <= 0.21249999850988388){
									if(pX[4] <= 0.04450000077486038){
										return 3;
									} else {
										return 2;
									}
								} else {
									return 0;
								}
							}
						} else {
							if(pX[2] <= 0.03499999921768904){
								if(pX[3] <= 1.949999988079071){
									if(pX[5] <= 6.5){
										if(pX[6] <= 11.5){
											if(pX[4] <= 0.0625){
												return 1;
											} else {
												return 2;
											}
										} else {
											return 1;
										}
									} else {
										if(pX[6] <= 66.5){
											if(pX[4] <= 0.0885000005364418){
												if(pX[10] <= 9.199999809265137){
													return 1;
												} else {
													if(pX[8] <= 3.2649999856948853){
														return 3;
													} else {
														return 2;
													}
												}
											} else {
												if(pX[0] <= 7.099999904632568){
													return 2;
												} else {
													return 3;
												}
											}
										} else {
											return 1;
										}
									}
								} else {
									if(pX[9] <= 0.5450000166893005){
										if(pX[0] <= 7.900000095367432){
											return 2;
										} else {
											if(pX[8] <= 3.3649998903274536){
												return 2;
											} else {
												return 1;
											}
										}
									} else {
										if(pX[9] <= 0.6800000071525574){
											if(pX[0] <= 7.1499998569488525){
												return 3;
											} else {
												if(pX[3] <= 2.149999976158142){
													return 4;
												} else {
													if(pX[3] <= 2.399999976158142){
														return 2;
													} else {
														return 3;
													}
												}
											}
										} else {
											return 2;
										}
									}
								}
							} else {
								if(pX[9] <= 0.45499999821186066){
									if(pX[3] <= 3.25){
										if(pX[4] <= 0.04350000061094761){
											return 2;
										} else {
											if(pX[2] <= 0.24499999731779099){
												if(pX[5] <= 5.5){
													return 1;
												} else {
													if(pX[2] <= 0.1900000050663948){
														if(pX[4] <= 0.051500000059604645){
															return 3;
														} else {
															if(pX[5] <= 8.0){
																return 3;
															} else {
																return 2;
															}
														}
													} else {
														return 3;
													}
												}
											} else {
												if(pX[9] <= 0.375){
													return 1;
												} else {
													return 2;
												}
											}
										}
									} else {
										if(pX[4] <= 0.1015000008046627){
											if(pX[8] <= 3.2450000047683716){
												if(pX[6] <= 235.0){
													if(pX[4] <= 0.04050000011920929){
														return 1;
													} else {
														if(pX[3] <= 9.949999809265137){
															if(pX[7] <= 0.9956850111484528){
																if(pX[6] <= 198.5){
																	return 2;
																} else {
																	return 3;
																}
															} else {
																return 2;
															}
														} else {
															if(pX[5] <= 40.0){
																return 2;
															} else {
																if(pX[1] <= 0.3050000071525574){
																	return 3;
																} else {
																	return 2;
																}
															}
														}
													}
												} else {
													return 3;
												}
											} else {
												if(pX[4] <= 0.051500000059604645){
													return 2;
												} else {
													if(pX[9] <= 0.4350000023841858){
														return 1;
													} else {
														return 4;
													}
												}
											}
										} else {
											return 3;
										}
									}
								} else {
									if(pX[0] <= 7.75){
										if(pX[8] <= 3.3549998998641968){
											if(pX[1] <= 0.2549999952316284){
												if(pX[6] <= 180.5){
													if(pX[6] <= 87.5){
														return 1;
													} else {
														if(pX[9] <= 0.625){
															return 3;
														} else {
															return 2;
														}
													}
												} else {
													return 2;
												}
											} else {
												if(pX[9] <= 0.7949999868869781){
													if(pX[6] <= 222.0){
														if(pX[8] <= 2.990000009536743){
															if(pX[10] <= 9.349999904632568){
																if(pX[6] <= 145.5){
																	return 2;
																} else {
																	return 3;
																}
															} else {
																if(pX[9] <= 0.5550000071525574){
																	return 2;
																} else {
																	return 3;
																}
															}
														} else {
															if(pX[10] <= 8.549999713897705){
																if(pX[0] <= 6.299999952316284){
																	return 2;
																} else {
																	return 1;
																}
															} else {
																if(pX[2] <= 0.24499999731779099){
																	if(pX[0] <= 7.549999952316284){
																		if(pX[1] <= 0.7775000035762787){
																			return 2;
																		} else {
																			if(pX[0] <= 7.3500001430511475){
																				return 2;
																			} else {
																				return 3;
																			}
																		}
																	} else {
																		if(pX[9] <= 0.5649999976158142){
																			if(pX[9] <= 0.5200000107288361){
																				if(pX[2] <= 0.17500000074505806){
																					return 2;
																				} else {
																					return 1;
																				}
																			} else {
																				return 3;
																			}
																		} else {
																			return 2;
																		}
																	}
																} else {
																	if(pX[9] <= 0.5149999856948853){
																		if(pX[7] <= 0.9942899942398071){
																			return 3;
																		} else {
																			if(pX[1] <= 0.2800000011920929){
																				return 2;
																			} else {
																				if(pX[0] <= 6.650000095367432){
																					return 2;
																				} else {
																					if(pX[3] <= 11.625){
																						if(pX[6] <= 145.5){
																							return 2;
																						} else {
																							return 3;
																						}
																					} else {
																						return 1;
																					}
																				}
																			}
																		}
																	} else {
																		return 2;
																	}
																}
															}
														}
													} else {
														if(pX[2] <= 0.1900000050663948){
															return 2;
														} else {
															if(pX[0] <= 6.900000095367432){
																return 2;
															} else {
																return 3;
															}
														}
													}
												} else {
													if(pX[2] <= 0.0949999988079071){
														return 3;
													} else {
														return 2;
													}
												}
											}
										} else {
											if(pX[5] <= 11.5){
												if(pX[2] <= 0.04999999888241291){
													return 3;
												} else {
													return 2;
												}
											} else {
												if(pX[6] <= 48.0){
													if(pX[2] <= 0.14999999850988388){
														return 3;
													} else {
														if(pX[8] <= 3.450000047683716){
															return 4;
														} else {
															return 3;
														}
													}
												} else {
													if(pX[2] <= 0.19999999552965164){
														if(pX[2] <= 0.1850000023841858){
															if(pX[9] <= 0.7150000035762787){
																if(pX[6] <= 113.5){
																	return 2;
																} else {
																	return 1;
																}
															} else {
																return 2;
															}
														} else {
															return 1;
														}
													} else {
														if(pX[9] <= 0.5649999976158142){
															return 2;
														} else {
															if(pX[7] <= 0.9952000081539154){
																return 0;
															} else {
																return 3;
															}
														}
													}
												}
											}
										}
									} else {
										if(pX[10] <= 9.099999904632568){
											return 3;
										} else {
											if(pX[4] <= 0.07349999994039536){
												if(pX[10] <= 9.449999809265137){
													return 3;
												} else {
													return 2;
												}
											} else {
												if(pX[6] <= 58.5){
													if(pX[7] <= 0.9968999922275543){
														return 2;
													} else {
														if(pX[2] <= 0.10500000044703484){
															return 2;
														} else {
															if(pX[6] <= 25.5){
																return 2;
															} else {
																if(pX[1] <= 0.5699999928474426){
																	return 3;
																} else {
																	if(pX[10] <= 9.650000095367432){
																		if(pX[10] <= 9.349999904632568){
																			return 1;
																		} else {
																			if(pX[5] <= 11.5){
																				if(pX[5] <= 10.0){
																					return 2;
																				} else {
																					return 3;
																				}
																			} else {
																				return 2;
																			}
																		}
																	} else {
																		return 3;
																	}
																}
															}
														}
													}
												} else {
													if(pX[9] <= 0.6299999952316284){
														if(pX[2] <= 0.19500000029802322){
															if(pX[9] <= 0.5649999976158142){
																return 2;
															} else {
																return 1;
															}
														} else {
															return 2;
														}
													} else {
														if(pX[7] <= 0.9981200098991394){
															if(pX[2] <= 0.17499999701976776){
																return 2;
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
									}
								}
							}
						}
					} else {
						if(pX[6] <= 128.5){
							return 3;
						} else {
							if(pX[7] <= 0.9991700053215027){
								if(pX[10] <= 9.299999713897705){
									if(pX[9] <= 0.5049999952316284){
										if(pX[7] <= 0.9990600049495697){
											return 2;
										} else {
											return 3;
										}
									} else {
										return 2;
									}
								} else {
									return 3;
								}
							} else {
								if(pX[9] <= 0.5600000023841858){
									return 2;
								} else {
									return 3;
								}
							}
						}
					}
				} else {
					if(pX[3] <= 12.650000095367432){
						if(pX[10] <= 8.550000190734863){
							if(pX[7] <= 1.000100016593933){
								return 0;
							} else {
								return 3;
							}
						} else {
							if(pX[5] <= 23.5){
								if(pX[2] <= 0.3149999976158142){
									if(pX[8] <= 3.0149999856948853){
										return 3;
									} else {
										if(pX[5] <= 14.5){
											if(pX[0] <= 6.799999952316284){
												if(pX[1] <= 0.39000000059604645){
													if(pX[4] <= 0.12000000104308128){
														return 4;
													} else {
														return 2;
													}
												} else {
													return 1;
												}
											} else {
												if(pX[0] <= 8.5){
													if(pX[6] <= 38.0){
														return 4;
													} else {
														return 3;
													}
												} else {
													return 2;
												}
											}
										} else {
											if(pX[0] <= 6.1499998569488525){
												return 3;
											} else {
												if(pX[10] <= 9.25){
													return 3;
												} else {
													if(pX[0] <= 7.900000095367432){
														if(pX[1] <= 0.20000000298023224){
															return 3;
														} else {
															return 2;
														}
													} else {
														if(pX[4] <= 0.07400000095367432){
															return 3;
														} else {
															if(pX[4] <= 0.08749999850988388){
																return 2;
															} else {
																if(pX[10] <= 9.400000095367432){
																	return 1;
																} else {
																	return 3;
																}
															}
														}
													}
												}
											}
										}
									}
								} else {
									if(pX[6] <= 36.5){
										if(pX[0] <= 12.349999904632568){
											if(pX[4] <= 0.15949999913573265){
												if(pX[0] <= 8.450000286102295){
													return 3;
												} else {
													if(pX[6] <= 12.0){
														return 3;
													} else {
														if(pX[5] <= 9.5){
															if(pX[10] <= 9.25){
																return 3;
															} else {
																if(pX[1] <= 0.5249999761581421){
																	return 2;
																} else {
																	return 3;
																}
															}
														} else {
															if(pX[1] <= 0.2850000038743019){
																return 1;
															} else {
																return 3;
															}
														}
													}
												}
											} else {
												return 3;
											}
										} else {
											if(pX[9] <= 0.7699999809265137){
												return 3;
											} else {
												return 4;
											}
										}
									} else {
										if(pX[4] <= 0.045500000938773155){
											if(pX[10] <= 8.849999904632568){
												return 3;
											} else {
												return 1;
											}
										} else {
											if(pX[3] <= 7.450000047683716){
												if(pX[4] <= 0.060499999672174454){
													if(pX[0] <= 9.049999713897705){
														return 2;
													} else {
														if(pX[10] <= 9.400000095367432){
															return 1;
														} else {
															return 2;
														}
													}
												} else {
													if(pX[6] <= 140.5){
														if(pX[0] <= 11.350000381469727){
															if(pX[9] <= 1.3199999928474426){
																if(pX[10] <= 9.550000190734863){
																	if(pX[10] <= 9.050000190734863){
																		if(pX[4] <= 0.08699999749660492){
																			return 3;
																		} else {
																			return 2;
																		}
																	} else {
																		if(pX[3] <= 1.6500000357627869){
																			if(pX[4] <= 0.08400000259280205){
																				return 2;
																			} else {
																				if(pX[0] <= 7.849999904632568){
																					return 3;
																				} else {
																					return 2;
																				}
																			}
																		} else {
																			return 2;
																		}
																	}
																} else {
																	if(pX[9] <= 0.7950000166893005){
																		if(pX[8] <= 3.2050000429153442){
																			return 2;
																		} else {
																			if(pX[8] <= 3.2699999809265137){
																				return 4;
																			} else {
																				if(pX[8] <= 3.3399999141693115){
																					if(pX[3] <= 2.1999999284744263){
																						return 1;
																					} else {
																						if(pX[1] <= 0.375){
																							return 3;
																						} else {
																							return 1;
																						}
																					}
																				} else {
																					return 2;
																				}
																			}
																		}
																	} else {
																		return 3;
																	}
																}
															} else {
																return 3;
															}
														} else {
															if(pX[4] <= 0.07349999994039536){
																return 2;
															} else {
																return 0;
															}
														}
													} else {
														if(pX[8] <= 3.125){
															return 1;
														} else {
															return 3;
														}
													}
												}
											} else {
												if(pX[4] <= 0.05199999921023846){
													if(pX[3] <= 9.900000095367432){
														if(pX[1] <= 0.20500000566244125){
															return 4;
														} else {
															return 3;
														}
													} else {
														return 2;
													}
												} else {
													return 2;
												}
											}
										}
									}
								}
							} else {
								if(pX[1] <= 0.3050000071525574){
									if(pX[5] <= 53.5){
										if(pX[0] <= 5.75){
											if(pX[0] <= 5.6499998569488525){
												if(pX[3] <= 3.6499999165534973){
													return 3;
												} else {
													return 2;
												}
											} else {
												return 2;
											}
										} else {
											if(pX[7] <= 0.9950500130653381){
												if(pX[6] <= 182.0){
													if(pX[3] <= 2.100000023841858){
														if(pX[9] <= 0.35500000417232513){
															return 2;
														} else {
															return 3;
														}
													} else {
														if(pX[0] <= 7.3999998569488525){
															if(pX[1] <= 0.26000000536441803){
																if(pX[3] <= 3.450000047683716){
																	return 4;
																} else {
																	if(pX[0] <= 6.1000001430511475){
																		return 4;
																	} else {
																		return 3;
																	}
																}
															} else {
																return 3;
															}
														} else {
															return 2;
														}
													}
												} else {
													if(pX[8] <= 3.3550000190734863){
														return 2;
													} else {
														return 3;
													}
												}
											} else {
												if(pX[6] <= 164.5){
													if(pX[6] <= 112.5){
														if(pX[0] <= 7.1000001430511475){
															return 3;
														} else {
															if(pX[10] <= 9.25){
																return 3;
															} else {
																return 2;
															}
														}
													} else {
														if(pX[1] <= 0.11499999836087227){
															return 4;
														} else {
															if(pX[9] <= 0.4950000047683716){
																if(pX[7] <= 0.9952699840068817){
																	if(pX[1] <= 0.13999999687075615){
																		return 3;
																	} else {
																		return 2;
																	}
																} else {
																	if(pX[3] <= 5.900000095367432){
																		if(pX[8] <= 3.1449999809265137){
																			return 2;
																		} else {
																			return 3;
																		}
																	} else {
																		return 2;
																	}
																}
															} else {
																if(pX[4] <= 0.04400000162422657){
																	return 2;
																} else {
																	if(pX[2] <= 0.42000000178813934){
																		if(pX[10] <= 9.050000190734863){
																			return 2;
																		} else {
																			return 3;
																		}
																	} else {
																		if(pX[2] <= 0.4450000077486038){
																			return 4;
																		} else {
																			return 2;
																		}
																	}
																}
															}
														}
													}
												} else {
													if(pX[0] <= 7.049999952316284){
														if(pX[2] <= 0.4449999928474426){
															if(pX[7] <= 0.9957399964332581){
																return 2;
															} else {
																if(pX[8] <= 3.180000066757202){
																	return 3;
																} else {
																	if(pX[9] <= 0.4350000023841858){
																		return 3;
																	} else {
																		return 2;
																	}
																}
															}
														} else {
															if(pX[10] <= 9.299999713897705){
																return 3;
															} else {
																if(pX[6] <= 196.0){
																	return 3;
																} else {
																	if(pX[3] <= 7.8500001430511475){
																		return 1;
																	} else {
																		return 2;
																	}
																}
															}
														}
													} else {
														if(pX[4] <= 0.045499999076128006){
															if(pX[7] <= 0.9970999956130981){
																return 2;
															} else {
																return 3;
															}
														} else {
															return 3;
														}
													}
												}
											}
										}
									} else {
										if(pX[0] <= 6.6499998569488525){
											if(pX[7] <= 0.9934499859809875){
												return 4;
											} else {
												if(pX[3] <= 10.75){
													if(pX[6] <= 208.5){
														if(pX[1] <= 0.29500000178813934){
															return 2;
														} else {
															if(pX[9] <= 0.4599999934434891){
																return 3;
															} else {
																return 2;
															}
														}
													} else {
														if(pX[10] <= 9.149999618530273){
															return 2;
														} else {
															if(pX[4] <= 0.0494999997317791){
																if(pX[7] <= 0.995309978723526){
																	return 2;
																} else {
																	return 3;
																}
															} else {
																return 2;
															}
														}
													}
												} else {
													if(pX[10] <= 8.949999809265137){
														return 2;
													} else {
														return 3;
													}
												}
											}
										} else {
											if(pX[8] <= 3.0899999141693115){
												if(pX[4] <= 0.11149999871850014){
													if(pX[1] <= 0.23999999463558197){
														return 3;
													} else {
														return 2;
													}
												} else {
													return 2;
												}
											} else {
												if(pX[4] <= 0.0409999992698431){
													return 2;
												} else {
													if(pX[6] <= 168.0){
														if(pX[8] <= 3.28000009059906){
															return 3;
														} else {
															return 2;
														}
													} else {
														return 3;
													}
												}
											}
										}
									}
								} else {
									if(pX[7] <= 0.9980549812316895){
										if(pX[3] <= 2.049999952316284){
											if(pX[0] <= 6.049999952316284){
												return 2;
											} else {
												if(pX[6] <= 83.0){
													if(pX[6] <= 66.5){
														return 3;
													} else {
														if(pX[8] <= 3.4350000619888306){
															return 3;
														} else {
															return 2;
														}
													}
												} else {
													if(pX[0] <= 7.3500001430511475){
														if(pX[7] <= 0.9945850074291229){
															return 3;
														} else {
															if(pX[2] <= 0.29500000178813934){
																return 2;
															} else {
																if(pX[8] <= 3.1699999570846558){
																	return 2;
																} else {
																	return 3;
																}
															}
														}
													} else {
														return 2;
													}
												}
											}
										} else {
											if(pX[0] <= 6.3500001430511475){
												if(pX[8] <= 3.3200000524520874){
													if(pX[2] <= 0.48999999463558197){
														if(pX[6] <= 172.5){
															if(pX[3] <= 5.300000071525574){
																return 3;
															} else {
																if(pX[4] <= 0.1744999960064888){
																	return 2;
																} else {
																	return 3;
																}
															}
														} else {
															return 3;
														}
													} else {
														return 2;
													}
												} else {
													return 2;
												}
											} else {
												if(pX[4] <= 0.04649999924004078){
													if(pX[7] <= 0.9952200055122375){
														return 3;
													} else {
														if(pX[1] <= 0.4350000023841858){
															if(pX[8] <= 3.0999999046325684){
																if(pX[0] <= 7.25){
																	if(pX[7] <= 0.9975000023841858){
																		return 3;
																	} else {
																		if(pX[3] <= 11.200000286102295){
																			return 1;
																		} else {
																			return 2;
																		}
																	}
																} else {
																	return 2;
																}
															} else {
																return 2;
															}
														} else {
															if(pX[3] <= 9.650000095367432){
																return 2;
															} else {
																return 3;
															}
														}
													}
												} else {
													return 2;
												}
											}
										}
									} else {
										if(pX[0] <= 8.349999904632568){
											if(pX[9] <= 0.5049999952316284){
												if(pX[8] <= 3.25){
													return 2;
												} else {
													return 3;
												}
											} else {
												return 3;
											}
										} else {
											if(pX[2] <= 0.4150000065565109){
												return 3;
											} else {
												if(pX[1] <= 0.4650000035762787){
													return 1;
												} else {
													return 2;
												}
											}
										}
									}
								}
							}
						}
					} else {
						if(pX[2] <= 0.3050000071525574){
							if(pX[7] <= 0.9988000094890594){
								if(pX[1] <= 0.20499999821186066){
									if(pX[7] <= 0.998075008392334){
										if(pX[10] <= 8.900000095367432){
											return 5;
										} else {
											if(pX[3] <= 15.549999713897705){
												return 4;
											} else {
												return 3;
											}
										}
									} else {
										return 4;
									}
								} else {
									if(pX[6] <= 191.5){
										if(pX[6] <= 139.5){
											if(pX[7] <= 0.9983700215816498){
												return 3;
											} else {
												return 2;
											}
										} else {
											return 3;
										}
									} else {
										if(pX[5] <= 57.5){
											return 4;
										} else {
											return 2;
										}
									}
								}
							} else {
								if(pX[3] <= 17.824999809265137){
									if(pX[2] <= 0.29500000178813934){
										return 3;
									} else {
										return 5;
									}
								} else {
									return 2;
								}
							}
						} else {
							if(pX[0] <= 7.549999952316284){
								if(pX[1] <= 0.2849999964237213){
									if(pX[4] <= 0.045500000938773155){
										if(pX[3] <= 18.699999809265137){
											if(pX[5] <= 44.25){
												return 3;
											} else {
												if(pX[7] <= 0.9995000064373016){
													if(pX[9] <= 0.7150000035762787){
														return 3;
													} else {
														if(pX[7] <= 0.9993100166320801){
															return 2;
														} else {
															return 4;
														}
													}
												} else {
													return 4;
												}
											}
										} else {
											if(pX[7] <= 1.0002700090408325){
												return 4;
											} else {
												return 3;
											}
										}
									} else {
										if(pX[3] <= 17.549999237060547){
											if(pX[9] <= 0.7999999821186066){
												if(pX[7] <= 0.9975250065326691){
													if(pX[2] <= 0.3349999934434891){
														return 3;
													} else {
														return 2;
													}
												} else {
													if(pX[6] <= 160.75){
														if(pX[7] <= 0.9980250000953674){
															return 3;
														} else {
															if(pX[3] <= 15.474999904632568){
																if(pX[1] <= 0.19500000029802322){
																	if(pX[6] <= 157.0){
																		return 2;
																	} else {
																		return 3;
																	}
																} else {
																	return 2;
																}
															} else {
																if(pX[3] <= 15.575000286102295){
																	return 4;
																} else {
																	return 3;
																}
															}
														}
													} else {
														if(pX[1] <= 0.24499999731779099){
															if(pX[6] <= 197.5){
																if(pX[7] <= 0.9981000125408173){
																	if(pX[2] <= 0.38499999046325684){
																		return 3;
																	} else {
																		if(pX[9] <= 0.4699999988079071){
																			return 3;
																		} else {
																			return 4;
																		}
																	}
																} else {
																	return 3;
																}
															} else {
																if(pX[1] <= 0.23499999940395355){
																	return 3;
																} else {
																	if(pX[3] <= 14.699999809265137){
																		return 3;
																	} else {
																		return 2;
																	}
																}
															}
														} else {
															if(pX[10] <= 8.949999809265137){
																return 4;
															} else {
																if(pX[3] <= 14.900000095367432){
																	return 3;
																} else {
																	return 2;
																}
															}
														}
													}
												}
											} else {
												return 4;
											}
										} else {
											if(pX[10] <= 8.950000286102295){
												return 2;
											} else {
												return 4;
											}
										}
									}
								} else {
									if(pX[1] <= 0.3700000047683716){
										if(pX[6] <= 134.5){
											if(pX[3] <= 13.099999904632568){
												return 3;
											} else {
												return 2;
											}
										} else {
											if(pX[10] <= 8.75){
												return 3;
											} else {
												if(pX[4] <= 0.04649999924004078){
													if(pX[2] <= 0.5300000160932541){
														return 2;
													} else {
														return 3;
													}
												} else {
													return 2;
												}
											}
										}
									} else {
										if(pX[10] <= 8.849999904632568){
											return 2;
										} else {
											if(pX[10] <= 9.050000190734863){
												return 3;
											} else {
												if(pX[5] <= 30.5){
													return 2;
												} else {
													return 3;
												}
											}
										}
									}
								}
							} else {
								if(pX[0] <= 7.8500001430511475){
									if(pX[7] <= 0.9997299909591675){
										if(pX[1] <= 0.3200000077486038){
											if(pX[7] <= 0.9981950223445892){
												return 2;
											} else {
												return 3;
											}
										} else {
											return 2;
										}
									} else {
										return 2;
									}
								} else {
									if(pX[3] <= 17.674999237060547){
										if(pX[5] <= 49.0){
											if(pX[3] <= 15.299999713897705){
												if(pX[2] <= 0.45499999821186066){
													if(pX[4] <= 0.048499999567866325){
														return 4;
													} else {
														if(pX[9] <= 0.625){
															return 2;
														} else {
															return 5;
														}
													}
												} else {
													return 2;
												}
											} else {
												if(pX[9] <= 0.5149999856948853){
													return 2;
												} else {
													return 1;
												}
											}
										} else {
											if(pX[3] <= 16.899999618530273){
												if(pX[0] <= 8.25){
													return 2;
												} else {
													if(pX[9] <= 0.5149999856948853){
														if(pX[1] <= 0.2850000038743019){
															return 2;
														} else {
															return 3;
														}
													} else {
														return 3;
													}
												}
											} else {
												if(pX[5] <= 65.5){
													return 1;
												} else {
													return 4;
												}
											}
										}
									} else {
										return 2;
									}
								}
							}
						}
					}
				}
			} else {
				if(pX[1] <= 0.26500000059604645){
					if(pX[3] <= 3.25){
						if(pX[1] <= 0.14500000327825546){
							if(pX[8] <= 3.3949999809265137){
								return 4;
							} else {
								return 3;
							}
						} else {
							if(pX[2] <= 0.3149999976158142){
								if(pX[5] <= 15.5){
									return 2;
								} else {
									if(pX[5] <= 61.0){
										if(pX[8] <= 3.7300000190734863){
											if(pX[3] <= 2.75){
												if(pX[2] <= 0.22999999672174454){
													if(pX[8] <= 3.375){
														return 2;
													} else {
														return 3;
													}
												} else {
													if(pX[4] <= 0.04350000061094761){
														return 3;
													} else {
														if(pX[10] <= 10.650000095367432){
															if(pX[4] <= 0.04649999924004078){
																if(pX[2] <= 0.29500000178813934){
																	return 2;
																} else {
																	if(pX[1] <= 0.17000000178813934){
																		return 3;
																	} else {
																		return 4;
																	}
																}
															} else {
																if(pX[0] <= 5.3999998569488525){
																	return 2;
																} else {
																	if(pX[5] <= 44.5){
																		if(pX[5] <= 38.5){
																			if(pX[5] <= 22.0){
																				if(pX[6] <= 103.0){
																					return 3;
																				} else {
																					return 4;
																				}
																			} else {
																				return 3;
																			}
																		} else {
																			return 4;
																		}
																	} else {
																		return 3;
																	}
																}
															}
														} else {
															return 5;
														}
													}
												}
											} else {
												return 4;
											}
										} else {
											return 2;
										}
									} else {
										if(pX[1] <= 0.2549999952316284){
											return 2;
										} else {
											return 0;
										}
									}
								}
							} else {
								if(pX[5] <= 43.0){
									if(pX[6] <= 92.0){
										if(pX[4] <= 0.04350000061094761){
											if(pX[0] <= 7.549999952316284){
												return 4;
											} else {
												return 1;
											}
										} else {
											if(pX[5] <= 12.5){
												if(pX[3] <= 1.8499999642372131){
													if(pX[2] <= 0.4999999850988388){
														return 3;
													} else {
														return 4;
													}
												} else {
													return 2;
												}
											} else {
												return 3;
											}
										}
									} else {
										if(pX[10] <= 10.150000095367432){
											if(pX[6] <= 132.0){
												if(pX[8] <= 3.0149999856948853){
													return 2;
												} else {
													if(pX[5] <= 18.5){
														if(pX[9] <= 0.5900000035762787){
															return 2;
														} else {
															return 1;
														}
													} else {
														return 4;
													}
												}
											} else {
												if(pX[5] <= 25.5){
													if(pX[0] <= 7.049999952316284){
														return 1;
													} else {
														return 2;
													}
												} else {
													return 3;
												}
											}
										} else {
											if(pX[0] <= 8.100000143051147){
												if(pX[9] <= 0.42499999701976776){
													if(pX[0] <= 7.450000047683716){
														return 5;
													} else {
														return 3;
													}
												} else {
													if(pX[4] <= 0.05649999901652336){
														if(pX[2] <= 0.32999999821186066){
															if(pX[6] <= 126.0){
																return 3;
															} else {
																return 2;
															}
														} else {
															return 2;
														}
													} else {
														return 3;
													}
												}
											} else {
												return 3;
											}
										}
									}
								} else {
									if(pX[8] <= 3.319999933242798){
										if(pX[10] <= 9.949999809265137){
											if(pX[3] <= 2.25){
												return 2;
											} else {
												return 4;
											}
										} else {
											return 3;
										}
									} else {
										if(pX[5] <= 51.5){
											return 4;
										} else {
											return 3;
										}
									}
								}
							}
						}
					} else {
						if(pX[3] <= 15.0){
							if(pX[8] <= 3.6750000715255737){
								if(pX[2] <= 0.5300000011920929){
									if(pX[10] <= 10.650000095367432){
										if(pX[2] <= 0.36500000953674316){
											if(pX[0] <= 7.174999952316284){
												if(pX[0] <= 6.200000047683716){
													if(pX[2] <= 0.29500000178813934){
														if(pX[7] <= 0.9943250119686127){
															if(pX[7] <= 0.9939050078392029){
																return 3;
															} else {
																return 2;
															}
														} else {
															return 3;
														}
													} else {
														if(pX[8] <= 3.2050000429153442){
															return 0;
														} else {
															return 2;
														}
													}
												} else {
													if(pX[7] <= 0.9979200065135956){
														if(pX[7] <= 0.9944500029087067){
															if(pX[5] <= 43.5){
																if(pX[2] <= 0.2900000065565109){
																	return 3;
																} else {
																	if(pX[6] <= 130.5){
																		return 4;
																	} else {
																		return 3;
																	}
																}
															} else {
																if(pX[7] <= 0.9943850040435791){
																	return 2;
																} else {
																	return 4;
																}
															}
														} else {
															if(pX[4] <= 0.04350000061094761){
																if(pX[7] <= 0.995529979467392){
																	if(pX[0] <= 6.75){
																		if(pX[2] <= 0.29999999701976776){
																			return 3;
																		} else {
																			return 2;
																		}
																	} else {
																		return 3;
																	}
																} else {
																	return 3;
																}
															} else {
																if(pX[2] <= 0.3500000089406967){
																	if(pX[5] <= 41.0){
																		if(pX[6] <= 236.5){
																			return 3;
																		} else {
																			return 2;
																		}
																	} else {
																		return 3;
																	}
																} else {
																	return 2;
																}
															}
														}
													} else {
														return 2;
													}
												}
											} else {
												if(pX[6] <= 169.0){
													if(pX[0] <= 7.549999952316284){
														if(pX[4] <= 0.048499999567866325){
															if(pX[1] <= 0.20499999821186066){
																return 4;
															} else {
																return 3;
															}
														} else {
															if(pX[1] <= 0.2149999961256981){
																if(pX[8] <= 3.1399999856948853){
																	return 4;
																} else {
																	return 5;
																}
															} else {
																return 2;
															}
														}
													} else {
														if(pX[1] <= 0.2499999925494194){
															return 3;
														} else {
															if(pX[8] <= 3.0800000429153442){
																return 4;
															} else {
																return 3;
															}
														}
													}
												} else {
													if(pX[5] <= 70.0){
														if(pX[2] <= 0.32500000298023224){
															if(pX[1] <= 0.22500000149011612){
																return 2;
															} else {
																return 3;
															}
														} else {
															return 2;
														}
													} else {
														return 3;
													}
												}
											}
										} else {
											if(pX[6] <= 203.5){
												if(pX[7] <= 0.9930999875068665){
													if(pX[2] <= 0.4699999988079071){
														return 3;
													} else {
														return 2;
													}
												} else {
													if(pX[9] <= 0.42000000178813934){
														if(pX[2] <= 0.39000000059604645){
															return 3;
														} else {
															if(pX[7] <= 0.9953500032424927){
																return 4;
															} else {
																return 3;
															}
														}
													} else {
														if(pX[4] <= 0.042500000447034836){
															if(pX[3] <= 4.599999904632568){
																return 3;
															} else {
																return 4;
															}
														} else {
															return 3;
														}
													}
												}
											} else {
												return 4;
											}
										}
									} else {
										if(pX[2] <= 0.35999999940395355){
											if(pX[6] <= 128.0){
												return 4;
											} else {
												if(pX[7] <= 0.9951600134372711){
													return 3;
												} else {
													return 2;
												}
											}
										} else {
											return 3;
										}
									}
								} else {
									return 2;
								}
							} else {
								return 1;
							}
						} else {
							if(pX[4] <= 0.05949999950826168){
								return 2;
							} else {
								return 0;
							}
						}
					}
				} else {
					if(pX[2] <= 0.39499999582767487){
						if(pX[1] <= 0.6924999952316284){
							if(pX[9] <= 0.5249999761581421){
								if(pX[5] <= 26.5){
									if(pX[7] <= 0.9979999959468842){
										if(pX[4] <= 0.09750000014901161){
											if(pX[9] <= 0.32500000298023224){
												return 1;
											} else {
												if(pX[4] <= 0.04450000077486038){
													if(pX[6] <= 138.5){
														if(pX[0] <= 6.25){
															return 2;
														} else {
															return 1;
														}
													} else {
														return 2;
													}
												} else {
													if(pX[1] <= 0.2750000059604645){
														if(pX[8] <= 3.625){
															if(pX[5] <= 14.0){
																return 4;
															} else {
																return 2;
															}
														} else {
															return 3;
														}
													} else {
														if(pX[2] <= 0.07500000111758709){
															if(pX[2] <= 0.04999999888241291){
																if(pX[9] <= 0.4049999862909317){
																	return 1;
																} else {
																	return 2;
																}
															} else {
																return 3;
															}
														} else {
															if(pX[8] <= 3.3949999809265137){
																if(pX[9] <= 0.5049999952316284){
																	return 2;
																} else {
																	if(pX[1] <= 0.4699999988079071){
																		return 3;
																	} else {
																		return 2;
																	}
																}
															} else {
																return 1;
															}
														}
													}
												}
											}
										} else {
											return 1;
										}
									} else {
										return 3;
									}
								} else {
									if(pX[3] <= 6.549999952316284){
										if(pX[0] <= 6.6499998569488525){
											if(pX[1] <= 0.41999998688697815){
												if(pX[6] <= 179.5){
													if(pX[5] <= 51.0){
														return 2;
													} else {
														if(pX[3] <= 2.6999999284744263){
															return 2;
														} else {
															return 4;
														}
													}
												} else {
													return 3;
												}
											} else {
												if(pX[6] <= 206.5){
													return 1;
												} else {
													return 2;
												}
											}
										} else {
											if(pX[9] <= 0.4749999940395355){
												if(pX[0] <= 7.75){
													if(pX[2] <= 0.29500000178813934){
														return 2;
													} else {
														if(pX[8] <= 3.149999976158142){
															return 3;
														} else {
															return 2;
														}
													}
												} else {
													return 3;
												}
											} else {
												if(pX[0] <= 7.5){
													if(pX[10] <= 10.549999713897705){
														return 3;
													} else {
														return 5;
													}
												} else {
													return 2;
												}
											}
										}
									} else {
										if(pX[7] <= 0.996595025062561){
											if(pX[2] <= 0.3050000071525574){
												if(pX[3] <= 6.75){
													if(pX[6] <= 164.5){
														return 2;
													} else {
														return 3;
													}
												} else {
													if(pX[7] <= 0.9962500035762787){
														return 3;
													} else {
														if(pX[0] <= 6.849999904632568){
															return 2;
														} else {
															return 3;
														}
													}
												}
											} else {
												return 2;
											}
										} else {
											if(pX[6] <= 182.0){
												if(pX[8] <= 3.340000033378601){
													return 2;
												} else {
													return 3;
												}
											} else {
												return 3;
											}
										}
									}
								}
							} else {
								if(pX[6] <= 19.0){
									if(pX[6] <= 15.5){
										if(pX[9] <= 0.8850000202655792){
											if(pX[7] <= 0.9954549968242645){
												if(pX[4] <= 0.07899999991059303){
													return 3;
												} else {
													return 1;
												}
											} else {
												return 3;
											}
										} else {
											return 5;
										}
									} else {
										if(pX[7] <= 0.9953199923038483){
											return 2;
										} else {
											if(pX[7] <= 0.9972849786281586){
												if(pX[0] <= 7.3999998569488525){
													if(pX[0] <= 7.0){
														return 3;
													} else {
														return 2;
													}
												} else {
													return 4;
												}
											} else {
												return 3;
											}
										}
									}
								} else {
									if(pX[0] <= 9.949999809265137){
										if(pX[8] <= 3.4850000143051147){
											if(pX[9] <= 0.5849999785423279){
												if(pX[1] <= 0.2849999964237213){
													if(pX[10] <= 10.449999809265137){
														return 3;
													} else {
														if(pX[10] <= 10.599999904632568){
															return 4;
														} else {
															return 3;
														}
													}
												} else {
													if(pX[8] <= 3.2450000047683716){
														if(pX[7] <= 0.9961050152778625){
															if(pX[4] <= 0.04749999940395355){
																if(pX[0] <= 7.150000095367432){
																	return 2;
																} else {
																	return 3;
																}
															} else {
																return 3;
															}
														} else {
															if(pX[0] <= 6.150000095367432){
																return 3;
															} else {
																return 2;
															}
														}
													} else {
														if(pX[7] <= 0.9961249828338623){
															if(pX[7] <= 0.9959649741649628){
																if(pX[2] <= 0.2750000059604645){
																	if(pX[2] <= 0.22999999672174454){
																		if(pX[7] <= 0.9950999915599823){
																			if(pX[10] <= 10.25){
																				return 2;
																			} else {
																				return 3;
																			}
																		} else {
																			return 3;
																		}
																	} else {
																		if(pX[9] <= 0.550000011920929){
																			return 1;
																		} else {
																			return 2;
																		}
																	}
																} else {
																	return 3;
																}
															} else {
																return 2;
															}
														} else {
															if(pX[2] <= 0.2800000011920929){
																return 3;
															} else {
																return 2;
															}
														}
													}
												}
											} else {
												if(pX[10] <= 10.25){
													if(pX[1] <= 0.5450000166893005){
														if(pX[9] <= 0.6349999904632568){
															if(pX[3] <= 6.3500001430511475){
																if(pX[7] <= 0.9975450038909912){
																	return 2;
																} else {
																	return 3;
																}
															} else {
																if(pX[8] <= 3.209999918937683){
																	return 2;
																} else {
																	if(pX[7] <= 0.9984099864959717){
																		return 3;
																	} else {
																		return 2;
																	}
																}
															}
														} else {
															if(pX[5] <= 13.0){
																return 2;
															} else {
																if(pX[6] <= 239.25){
																	if(pX[5] <= 28.5){
																		return 3;
																	} else {
																		if(pX[0] <= 6.650000095367432){
																			return 3;
																		} else {
																			return 4;
																		}
																	}
																} else {
																	return 2;
																}
															}
														}
													} else {
														if(pX[6] <= 53.5){
															if(pX[10] <= 9.849999904632568){
																return 2;
															} else {
																if(pX[6] <= 29.5){
																	return 2;
																} else {
																	if(pX[0] <= 7.0){
																		return 2;
																	} else {
																		return 3;
																	}
																}
															}
														} else {
															return 2;
														}
													}
												} else {
													if(pX[2] <= 0.35500000417232513){
														if(pX[7] <= 0.9974250197410583){
															if(pX[1] <= 0.4350000023841858){
																if(pX[2] <= 0.2849999964237213){
																	if(pX[2] <= 0.17999999597668648){
																		return 3;
																	} else {
																		if(pX[3] <= 10.25){
																			return 2;
																		} else {
																			return 3;
																		}
																	}
																} else {
																	if(pX[3] <= 4.0000001192092896){
																		return 3;
																	} else {
																		return 2;
																	}
																}
															} else {
																if(pX[6] <= 29.0){
																	return 4;
																} else {
																	return 3;
																}
															}
														} else {
															if(pX[10] <= 10.449999809265137){
																return 3;
															} else {
																if(pX[3] <= 2.950000047683716){
																	return 4;
																} else {
																	if(pX[4] <= 0.08300000056624413){
																		return 2;
																	} else {
																		return 4;
																	}
																}
															}
														}
													} else {
														if(pX[10] <= 10.599999904632568){
															return 2;
														} else {
															return 3;
														}
													}
												}
											}
										} else {
											if(pX[1] <= 0.6450000107288361){
												if(pX[5] <= 40.25){
													return 2;
												} else {
													return 3;
												}
											} else {
												return 3;
											}
										}
									} else {
										return 3;
									}
								}
							}
						} else {
							if(pX[2] <= 0.044999999925494194){
								if(pX[6] <= 25.0){
									if(pX[9] <= 0.5349999964237213){
										if(pX[3] <= 1.850000023841858){
											return 3;
										} else {
											return 2;
										}
									} else {
										if(pX[8] <= 3.5399999618530273){
											if(pX[7] <= 0.9960750043392181){
												return 3;
											} else {
												return 2;
											}
										} else {
											return 0;
										}
									}
								} else {
									if(pX[8] <= 3.684999942779541){
										return 2;
									} else {
										return 1;
									}
								}
							} else {
								if(pX[3] <= 2.450000047683716){
									if(pX[4] <= 0.11800000444054604){
										if(pX[0] <= 7.6000001430511475){
											return 2;
										} else {
											if(pX[1] <= 0.8975000083446503){
												if(pX[0] <= 8.150000095367432){
													if(pX[7] <= 0.996539980173111){
														return 1;
													} else {
														return 3;
													}
												} else {
													if(pX[9] <= 0.5449999868869781){
														return 2;
													} else {
														if(pX[10] <= 10.199999809265137){
															return 2;
														} else {
															return 3;
														}
													}
												}
											} else {
												return 3;
											}
										}
									} else {
										return 4;
									}
								} else {
									if(pX[10] <= 10.050000190734863){
										if(pX[5] <= 10.5){
											if(pX[7] <= 0.9976249933242798){
												return 3;
											} else {
												return 2;
											}
										} else {
											return 2;
										}
									} else {
										return 2;
									}
								}
							}
						}
					} else {
						if(pX[9] <= 1.0149999856948853){
							if(pX[8] <= 3.334999918937683){
								if(pX[5] <= 4.5){
									if(pX[1] <= 0.5199999958276749){
										return 2;
									} else {
										return 1;
									}
								} else {
									if(pX[8] <= 3.0549999475479126){
										if(pX[1] <= 0.3049999922513962){
											if(pX[10] <= 10.349999904632568){
												return 3;
											} else {
												return 4;
											}
										} else {
											if(pX[6] <= 89.0){
												return 2;
											} else {
												return 1;
											}
										}
									} else {
										if(pX[4] <= 0.0625){
											if(pX[1] <= 0.6049999892711639){
												if(pX[4] <= 0.05049999989569187){
													if(pX[3] <= 6.950000047683716){
														if(pX[3] <= 1.3499999642372131){
															if(pX[4] <= 0.04749999940395355){
																if(pX[7] <= 0.9923149943351746){
																	return 3;
																} else {
																	if(pX[6] <= 137.0){
																		return 2;
																	} else {
																		return 3;
																	}
																}
															} else {
																return 1;
															}
														} else {
															if(pX[9] <= 0.6649999916553497){
																return 3;
															} else {
																if(pX[5] <= 26.0){
																	return 1;
																} else {
																	return 3;
																}
															}
														}
													} else {
														if(pX[7] <= 0.9966000020503998){
															return 2;
														} else {
															return 1;
														}
													}
												} else {
													if(pX[3] <= 1.850000023841858){
														return 4;
													} else {
														if(pX[0] <= 7.3999998569488525){
															if(pX[5] <= 30.5){
																return 3;
															} else {
																return 2;
															}
														} else {
															return 2;
														}
													}
												}
											} else {
												return 1;
											}
										} else {
											if(pX[2] <= 0.5699999928474426){
												if(pX[4] <= 0.0859999991953373){
													return 3;
												} else {
													if(pX[6] <= 51.0){
														if(pX[9] <= 0.6149999797344208){
															return 2;
														} else {
															return 3;
														}
													} else {
														if(pX[7] <= 0.9926699995994568){
															return 1;
														} else {
															return 3;
														}
													}
												}
											} else {
												if(pX[8] <= 3.1200000047683716){
													if(pX[3] <= 4.3500001430511475){
														if(pX[7] <= 0.9988499879837036){
															return 3;
														} else {
															if(pX[4] <= 0.08300000056624413){
																return 2;
															} else {
																return 3;
															}
														}
													} else {
														return 4;
													}
												} else {
													return 2;
												}
											}
										}
									}
								}
							} else {
								if(pX[9] <= 0.5450000166893005){
									if(pX[2] <= 0.5949999839067459){
										return 5;
									} else {
										return 3;
									}
								} else {
									if(pX[1] <= 0.2750000059604645){
										return 3;
									} else {
										if(pX[10] <= 10.300000190734863){
											if(pX[8] <= 3.4299999475479126){
												return 3;
											} else {
												return 2;
											}
										} else {
											return 2;
										}
									}
								}
							}
						} else {
							return 4;
						}
					}
				}
			}
		} else {
			if(pX[9] <= 0.7150000035762787){
				if(pX[5] <= 4.5){
					if(pX[6] <= 11.5){
						if(pX[7] <= 0.9977750182151794){
							if(pX[9] <= 0.5450000166893005){
								return 3;
							} else {
								if(pX[3] <= 5.5){
									if(pX[8] <= 3.299999952316284){
										if(pX[10] <= 12.0){
											return 3;
										} else {
											return 4;
										}
									} else {
										return 4;
									}
								} else {
									return 1;
								}
							}
						} else {
							if(pX[0] <= 8.850000381469727){
								return 2;
							} else {
								return 3;
							}
						}
					} else {
						if(pX[7] <= 0.9959850013256073){
							if(pX[10] <= 11.800000190734863){
								return 1;
							} else {
								return 3;
							}
						} else {
							return 2;
						}
					}
				} else {
					if(pX[6] <= 15.5){
						if(pX[1] <= 0.3500000089406967){
							return 4;
						} else {
							if(pX[0] <= 9.900000095367432){
								if(pX[7] <= 0.995529979467392){
									if(pX[5] <= 8.0){
										if(pX[1] <= 1.2325000166893005){
											if(pX[6] <= 10.5){
												return 3;
											} else {
												if(pX[10] <= 11.149999618530273){
													if(pX[1] <= 0.677499994635582){
														return 1;
													} else {
														return 2;
													}
												} else {
													return 2;
												}
											}
										} else {
											return 0;
										}
									} else {
										return 4;
									}
								} else {
									return 3;
								}
							} else {
								return 4;
							}
						}
					} else {
						if(pX[6] <= 298.25){
							if(pX[8] <= 3.3549998998641968){
								if(pX[4] <= 0.05049999989569187){
									if(pX[10] <= 11.25){
										if(pX[2] <= 0.36500000953674316){
											if(pX[8] <= 3.34499990940094){
												if(pX[3] <= 7.799999952316284){
													if(pX[7] <= 0.9945999979972839){
														if(pX[4] <= 0.0494999997317791){
															if(pX[5] <= 9.5){
																return 1;
															} else {
																if(pX[3] <= 1.300000011920929){
																	if(pX[7] <= 0.9919500052928925){
																		return 3;
																	} else {
																		return 4;
																	}
																} else {
																	if(pX[9] <= 0.6449999809265137){
																		if(pX[6] <= 97.5){
																			if(pX[0] <= 7.5){
																				return 3;
																			} else {
																				return 2;
																			}
																		} else {
																			if(pX[9] <= 0.4299999922513962){
																				if(pX[0] <= 5.900000095367432){
																					return 4;
																				} else {
																					return 3;
																				}
																			} else {
																				return 3;
																			}
																		}
																	} else {
																		return 4;
																	}
																}
															}
														} else {
															if(pX[3] <= 6.25){
																return 2;
															} else {
																return 3;
															}
														}
													} else {
														return 1;
													}
												} else {
													if(pX[6] <= 144.0){
														if(pX[9] <= 0.32500000298023224){
															return 1;
														} else {
															if(pX[7] <= 0.9946399927139282){
																if(pX[5] <= 34.0){
																	return 4;
																} else {
																	return 3;
																}
															} else {
																if(pX[4] <= 0.04800000041723251){
																	return 3;
																} else {
																	return 2;
																}
															}
														}
													} else {
														return 2;
													}
												}
											} else {
												return 4;
											}
										} else {
											if(pX[0] <= 7.349999904632568){
												if(pX[9] <= 0.4699999988079071){
													if(pX[8] <= 2.9850000143051147){
														if(pX[0] <= 6.949999809265137){
															return 4;
														} else {
															return 3;
														}
													} else {
														return 3;
													}
												} else {
													if(pX[7] <= 0.9918699860572815){
														if(pX[7] <= 0.991430014371872){
															return 4;
														} else {
															return 3;
														}
													} else {
														if(pX[9] <= 0.6150000095367432){
															return 4;
														} else {
															return 2;
														}
													}
												}
											} else {
												if(pX[8] <= 3.1100000143051147){
													if(pX[10] <= 10.900000095367432){
														return 2;
													} else {
														return 3;
													}
												} else {
													if(pX[9] <= 0.39500001072883606){
														return 1;
													} else {
														return 2;
													}
												}
											}
										}
									} else {
										if(pX[3] <= 9.625){
											if(pX[8] <= 3.0649999380111694){
												if(pX[0] <= 8.550000190734863){
													if(pX[5] <= 29.5){
														if(pX[5] <= 9.5){
															if(pX[1] <= 0.24499999731779099){
																return 1;
															} else {
																return 5;
															}
														} else {
															return 3;
														}
													} else {
														if(pX[7] <= 0.990435004234314){
															return 3;
														} else {
															if(pX[7] <= 0.9911650121212006){
																return 4;
															} else {
																if(pX[6] <= 162.5){
																	if(pX[7] <= 0.9913299977779388){
																		return 5;
																	} else {
																		return 3;
																	}
																} else {
																	if(pX[0] <= 7.5){
																		if(pX[10] <= 11.349999904632568){
																			return 5;
																		} else {
																			return 2;
																		}
																	} else {
																		return 4;
																	}
																}
															}
														}
													}
												} else {
													return 2;
												}
											} else {
												if(pX[3] <= 1.050000011920929){
													if(pX[7] <= 0.990105003118515){
														if(pX[9] <= 0.48000000417232513){
															return 5;
														} else {
															return 4;
														}
													} else {
														return 2;
													}
												} else {
													if(pX[5] <= 36.5){
														if(pX[9] <= 0.5349999964237213){
															if(pX[9] <= 0.45499999821186066){
																if(pX[1] <= 0.13249999657273293){
																	return 5;
																} else {
																	if(pX[3] <= 1.1500000357627869){
																		return 4;
																	} else {
																		if(pX[3] <= 2.1999999284744263){
																			return 3;
																		} else {
																			if(pX[1] <= 0.22500000149011612){
																				if(pX[10] <= 11.800000190734863){
																					return 2;
																				} else {
																					return 3;
																				}
																			} else {
																				if(pX[9] <= 0.4449999928474426){
																					if(pX[0] <= 7.400000095367432){
																						if(pX[2] <= 0.29999999701976776){
																							return 3;
																						} else {
																							if(pX[9] <= 0.4099999964237213){
																								return 4;
																							} else {
																								if(pX[8] <= 3.2549999952316284){
																									return 3;
																								} else {
																									return 4;
																								}
																							}
																						}
																					} else {
																						return 3;
																					}
																				} else {
																					return 5;
																				}
																			}
																		}
																	}
																}
															} else {
																if(pX[8] <= 3.2699999809265137){
																	if(pX[10] <= 11.700000286102295){
																		if(pX[3] <= 1.550000011920929){
																			return 4;
																		} else {
																			if(pX[6] <= 145.5){
																				if(pX[6] <= 124.5){
																					return 3;
																				} else {
																					if(pX[10] <= 11.5){
																						return 2;
																					} else {
																						return 4;
																					}
																				}
																			} else {
																				return 3;
																			}
																		}
																	} else {
																		return 4;
																	}
																} else {
																	return 3;
																}
															}
														} else {
															if(pX[8] <= 3.1700000762939453){
																if(pX[2] <= 0.2749999985098839){
																	return 4;
																} else {
																	return 2;
																}
															} else {
																if(pX[9] <= 0.5649999976158142){
																	return 3;
																} else {
																	if(pX[2] <= 0.2900000065565109){
																		if(pX[1] <= 0.4050000011920929){
																			return 2;
																		} else {
																			return 3;
																		}
																	} else {
																		if(pX[9] <= 0.6749999821186066){
																			return 4;
																		} else {
																			return 3;
																		}
																	}
																}
															}
														}
													} else {
														if(pX[1] <= 0.23499999940395355){
															if(pX[5] <= 42.5){
																if(pX[7] <= 0.9904899895191193){
																	return 4;
																} else {
																	return 3;
																}
															} else {
																if(pX[7] <= 0.9913999736309052){
																	if(pX[10] <= 11.449999809265137){
																		return 3;
																	} else {
																		return 5;
																	}
																} else {
																	return 4;
																}
															}
														} else {
															if(pX[2] <= 0.39499999582767487){
																if(pX[2] <= 0.29500000178813934){
																	if(pX[0] <= 5.400000095367432){
																		return 3;
																	} else {
																		if(pX[0] <= 6.5){
																			return 4;
																		} else {
																			return 3;
																		}
																	}
																} else {
																	return 3;
																}
															} else {
																return 4;
															}
														}
													}
												}
											}
										} else {
											if(pX[5] <= 30.5){
												if(pX[1] <= 0.3050000071525574){
													return 4;
												} else {
													return 2;
												}
											} else {
												if(pX[4] <= 0.04400000162422657){
													return 3;
												} else {
													return 5;
												}
											}
										}
									}
								} else {
									if(pX[7] <= 0.9956600069999695){
										if(pX[6] <= 139.0){
											if(pX[2] <= 0.4950000047683716){
												if(pX[1] <= 0.35500000417232513){
													if(pX[6] <= 26.5){
														if(pX[0] <= 9.0){
															if(pX[3] <= 2.149999976158142){
																return 3;
															} else {
																return 4;
															}
														} else {
															if(pX[2] <= 0.4099999964237213){
																return 3;
															} else {
																return 2;
															}
														}
													} else {
														if(pX[5] <= 20.5){
															return 3;
														} else {
															if(pX[10] <= 11.200000286102295){
																if(pX[5] <= 36.5){
																	if(pX[3] <= 1.550000011920929){
																		return 4;
																	} else {
																		return 2;
																	}
																} else {
																	if(pX[6] <= 123.5){
																		return 5;
																	} else {
																		return 4;
																	}
																}
															} else {
																if(pX[3] <= 4.099999904632568){
																	if(pX[0] <= 7.549999952316284){
																		if(pX[10] <= 12.75){
																			if(pX[7] <= 0.9898400008678436){
																				if(pX[10] <= 12.099999904632568){
																					return 4;
																				} else {
																					return 3;
																				}
																			} else {
																				return 3;
																			}
																		} else {
																			return 2;
																		}
																	} else {
																		return 4;
																	}
																} else {
																	if(pX[1] <= 0.2549999952316284){
																		return 3;
																	} else {
																		return 5;
																	}
																}
															}
														}
													}
												} else {
													return 3;
												}
											} else {
												if(pX[6] <= 75.0){
													if(pX[8] <= 3.215000033378601){
														return 5;
													} else {
														return 3;
													}
												} else {
													return 2;
												}
											}
										} else {
											if(pX[3] <= 1.300000011920929){
												if(pX[0] <= 7.5){
													return 3;
												} else {
													return 2;
												}
											} else {
												return 3;
											}
										}
									} else {
										if(pX[5] <= 18.5){
											if(pX[1] <= 0.35500000417232513){
												if(pX[5] <= 10.5){
													if(pX[5] <= 8.0){
														return 1;
													} else {
														return 2;
													}
												} else {
													return 3;
												}
											} else {
												if(pX[10] <= 13.049999713897705){
													if(pX[9] <= 0.5850000083446503){
														if(pX[6] <= 27.5){
															return 3;
														} else {
															return 2;
														}
													} else {
														if(pX[4] <= 0.07999999821186066){
															if(pX[0] <= 10.949999809265137){
																if(pX[5] <= 9.5){
																	return 3;
																} else {
																	return 4;
																}
															} else {
																return 3;
															}
														} else {
															return 3;
														}
													}
												} else {
													return 5;
												}
											}
										} else {
											if(pX[4] <= 0.054499998688697815){
												return 4;
											} else {
												return 2;
											}
										}
									}
								}
							} else {
								if(pX[6] <= 43.5){
									if(pX[1] <= 0.9899999797344208){
										if(pX[4] <= 0.05599999986588955){
											return 2;
										} else {
											if(pX[8] <= 3.5649999380111694){
												if(pX[2] <= 0.08000000193715096){
													return 3;
												} else {
													if(pX[1] <= 0.39000000059604645){
														return 3;
													} else {
														if(pX[7] <= 0.9968250095844269){
															if(pX[6] <= 30.5){
																if(pX[4] <= 0.06500000134110451){
																	return 4;
																} else {
																	return 3;
																}
															} else {
																if(pX[0] <= 6.700000047683716){
																	return 1;
																} else {
																	return 2;
																}
															}
														} else {
															return 2;
														}
													}
												}
											} else {
												if(pX[1] <= 0.5){
													return 3;
												} else {
													return 2;
												}
											}
										}
									} else {
										return 1;
									}
								} else {
									if(pX[7] <= 0.9923499822616577){
										if(pX[1] <= 0.36499999463558197){
											if(pX[10] <= 12.299999713897705){
												if(pX[9] <= 0.4350000023841858){
													if(pX[9] <= 0.3999999910593033){
														return 2;
													} else {
														return 3;
													}
												} else {
													if(pX[10] <= 11.849999904632568){
														if(pX[1] <= 0.1850000023841858){
															return 3;
														} else {
															if(pX[5] <= 83.0){
																if(pX[5] <= 27.5){
																	if(pX[10] <= 11.349999904632568){
																		return 3;
																	} else {
																		return 4;
																	}
																} else {
																	return 4;
																}
															} else {
																return 3;
															}
														}
													} else {
														return 3;
													}
												}
											} else {
												if(pX[2] <= 0.33500000834465027){
													return 2;
												} else {
													return 4;
												}
											}
										} else {
											return 5;
										}
									} else {
										if(pX[3] <= 4.5){
											if(pX[9] <= 0.6349999904632568){
												if(pX[0] <= 5.25){
													if(pX[5] <= 13.5){
														return 1;
													} else {
														return 4;
													}
												} else {
													if(pX[7] <= 0.9959900081157684){
														if(pX[4] <= 0.04600000008940697){
															if(pX[8] <= 3.450000047683716){
																return 2;
															} else {
																if(pX[8] <= 3.475000023841858){
																	return 4;
																} else {
																	return 3;
																}
															}
														} else {
															return 2;
														}
													} else {
														return 3;
													}
												}
											} else {
												if(pX[0] <= 7.849999904632568){
													if(pX[8] <= 3.450000047683716){
														if(pX[0] <= 7.5){
															if(pX[6] <= 62.5){
																return 3;
															} else {
																return 2;
															}
														} else {
															return 3;
														}
													} else {
														return 3;
													}
												} else {
													if(pX[10] <= 11.25){
														return 2;
													} else {
														if(pX[9] <= 0.6749999821186066){
															return 1;
														} else {
															return 4;
														}
													}
												}
											}
										} else {
											if(pX[7] <= 0.9928800165653229){
												return 5;
											} else {
												if(pX[4] <= 0.044999999925494194){
													return 4;
												} else {
													return 3;
												}
											}
										}
									}
								}
							}
						} else {
							return 0;
						}
					}
				}
			} else {
				if(pX[10] <= 12.150000095367432){
					if(pX[7] <= 0.9917300045490265){
						if(pX[1] <= 0.16499999910593033){
							if(pX[7] <= 0.9908850193023682){
								return 4;
							} else {
								if(pX[8] <= 3.1699999570846558){
									return 3;
								} else {
									return 4;
								}
							}
						} else {
							if(pX[2] <= 0.38500000536441803){
								if(pX[5] <= 83.0){
									return 4;
								} else {
									return 5;
								}
							} else {
								return 5;
							}
						}
					} else {
						if(pX[1] <= 0.375){
							if(pX[2] <= 0.4749999940395355){
								if(pX[5] <= 25.0){
									if(pX[4] <= 0.05300000123679638){
										if(pX[3] <= 1.699999988079071){
											return 2;
										} else {
											return 3;
										}
									} else {
										if(pX[1] <= 0.1900000050663948){
											if(pX[7] <= 0.9951100051403046){
												return 3;
											} else {
												return 4;
											}
										} else {
											if(pX[6] <= 45.5){
												if(pX[3] <= 3.899999976158142){
													return 4;
												} else {
													return 3;
												}
											} else {
												if(pX[5] <= 13.5){
													return 3;
												} else {
													if(pX[2] <= 0.39499999582767487){
														return 4;
													} else {
														return 3;
													}
												}
											}
										}
									}
								} else {
									if(pX[0] <= 8.550000190734863){
										return 3;
									} else {
										if(pX[4] <= 0.07200000062584877){
											return 4;
										} else {
											return 3;
										}
									}
								}
							} else {
								if(pX[2] <= 0.5249999761581421){
									if(pX[6] <= 75.0){
										return 3;
									} else {
										return 2;
									}
								} else {
									if(pX[0] <= 10.149999618530273){
										if(pX[10] <= 11.549999713897705){
											return 3;
										} else {
											return 5;
										}
									} else {
										return 4;
									}
								}
							}
						} else {
							if(pX[10] <= 11.650000095367432){
								if(pX[0] <= 11.550000190734863){
									if(pX[0] <= 5.75){
										return 2;
									} else {
										if(pX[7] <= 0.9947399795055389){
											if(pX[7] <= 0.9945499897003174){
												return 3;
											} else {
												return 5;
											}
										} else {
											return 3;
										}
									}
								} else {
									if(pX[10] <= 10.849999904632568){
										return 3;
									} else {
										return 2;
									}
								}
							} else {
								if(pX[0] <= 7.5){
									return 3;
								} else {
									if(pX[2] <= 0.1299999998882413){
										return 4;
									} else {
										if(pX[9] <= 0.8900000154972076){
											if(pX[2] <= 0.5999999940395355){
												if(pX[2] <= 0.41499999165534973){
													return 4;
												} else {
													return 3;
												}
											} else {
												return 4;
											}
										} else {
											return 3;
										}
									}
								}
							}
						}
					}
				} else {
					if(pX[9] <= 0.8299999833106995){
						if(pX[5] <= 26.5){
							if(pX[10] <= 12.550000190734863){
								if(pX[5] <= 20.0){
									if(pX[9] <= 0.7549999952316284){
										if(pX[2] <= 0.27000000327825546){
											return 4;
										} else {
											return 3;
										}
									} else {
										return 4;
									}
								} else {
									if(pX[3] <= 1.9499999284744263){
										return 4;
									} else {
										return 3;
									}
								}
							} else {
								if(pX[7] <= 0.9916349947452545){
									return 4;
								} else {
									if(pX[10] <= 13.0){
										if(pX[6] <= 16.5){
											return 5;
										} else {
											return 4;
										}
									} else {
										if(pX[5] <= 7.5){
											return 3;
										} else {
											return 5;
										}
									}
								}
							}
						} else {
							if(pX[1] <= 0.4150000065565109){
								return 3;
							} else {
								if(pX[4] <= 0.0560000017285347){
									return 5;
								} else {
									return 3;
								}
							}
						}
					} else {
						if(pX[5] <= 36.5){
							return 4;
						} else {
							return 5;
						}
					}
				}
			}
		}
	}
}
unsigned int LLVMTAStandardIfTree_predict3(float const pX[11]){
	if(pX[10] <= 10.650000095367432){
		if(pX[7] <= 0.9959250092506409){
			if(pX[1] <= 0.2750000059604645){
				if(pX[9] <= 0.48499999940395355){
					if(pX[0] <= 6.1499998569488525){
						if(pX[4] <= 0.048499999567866325){
							if(pX[10] <= 9.099999904632568){
								return 2;
							} else {
								if(pX[9] <= 0.4050000011920929){
									if(pX[1] <= 0.1899999976158142){
										if(pX[6] <= 63.0){
											return 2;
										} else {
											return 3;
										}
									} else {
										return 2;
									}
								} else {
									if(pX[10] <= 9.849999904632568){
										if(pX[3] <= 5.900000095367432){
											if(pX[4] <= 0.03500000014901161){
												return 3;
											} else {
												return 2;
											}
										} else {
											return 3;
										}
									} else {
										if(pX[7] <= 0.9948050081729889){
											return 3;
										} else {
											if(pX[9] <= 0.45000000298023224){
												return 0;
											} else {
												if(pX[1] <= 0.2150000035762787){
													return 2;
												} else {
													return 5;
												}
											}
										}
									}
								}
							}
						} else {
							if(pX[4] <= 0.07249999791383743){
								return 2;
							} else {
								if(pX[1] <= 0.22999999672174454){
									return 2;
								} else {
									return 3;
								}
							}
						}
					} else {
						if(pX[8] <= 3.2050000429153442){
							if(pX[0] <= 6.6499998569488525){
								if(pX[7] <= 0.9951650202274323){
									if(pX[5] <= 21.5){
										return 2;
									} else {
										if(pX[5] <= 35.5){
											if(pX[9] <= 0.4449999928474426){
												return 4;
											} else {
												return 3;
											}
										} else {
											if(pX[7] <= 0.9937199950218201){
												if(pX[8] <= 3.134999990463257){
													return 4;
												} else {
													if(pX[2] <= 0.20499999821186066){
														return 3;
													} else {
														return 2;
													}
												}
											} else {
												if(pX[9] <= 0.36500000953674316){
													return 3;
												} else {
													return 2;
												}
											}
										}
									}
								} else {
									if(pX[9] <= 0.4749999940395355){
										if(pX[1] <= 0.24499999731779099){
											return 3;
										} else {
											if(pX[0] <= 6.549999952316284){
												return 2;
											} else {
												if(pX[4] <= 0.04600000008940697){
													return 2;
												} else {
													return 3;
												}
											}
										}
									} else {
										return 3;
									}
								}
							} else {
								if(pX[4] <= 0.1289999969303608){
									if(pX[10] <= 10.150000095367432){
										if(pX[1] <= 0.20499999821186066){
											if(pX[8] <= 2.9350000619888306){
												if(pX[5] <= 5.5){
													return 0;
												} else {
													if(pX[3] <= 1.050000011920929){
														return 2;
													} else {
														return 1;
													}
												}
											} else {
												if(pX[4] <= 0.04299999959766865){
													if(pX[5] <= 53.5){
														if(pX[7] <= 0.9936400055885315){
															return 3;
														} else {
															return 2;
														}
													} else {
														return 3;
													}
												} else {
													if(pX[7] <= 0.9949299991130829){
														if(pX[7] <= 0.9926999807357788){
															return 4;
														} else {
															return 3;
														}
													} else {
														if(pX[10] <= 9.199999809265137){
															return 1;
														} else {
															if(pX[8] <= 3.0600000619888306){
																return 3;
															} else {
																return 4;
															}
														}
													}
												}
											}
										} else {
											if(pX[8] <= 3.059999942779541){
												if(pX[7] <= 0.9941000044345856){
													if(pX[8] <= 2.9199999570846558){
														return 2;
													} else {
														return 3;
													}
												} else {
													return 1;
												}
											} else {
												if(pX[7] <= 0.9950000047683716){
													return 2;
												} else {
													if(pX[9] <= 0.39000000059604645){
														return 2;
													} else {
														return 3;
													}
												}
											}
										}
									} else {
										if(pX[8] <= 3.165000081062317){
											if(pX[1] <= 0.1900000050663948){
												if(pX[6] <= 116.0){
													if(pX[9] <= 0.4049999862909317){
														if(pX[0] <= 7.800000190734863){
															return 5;
														} else {
															return 4;
														}
													} else {
														if(pX[10] <= 10.550000190734863){
															return 2;
														} else {
															return 3;
														}
													}
												} else {
													if(pX[4] <= 0.039499999955296516){
														if(pX[7] <= 0.9938499927520752){
															return 3;
														} else {
															return 4;
														}
													} else {
														return 3;
													}
												}
											} else {
												if(pX[9] <= 0.35999999940395355){
													return 3;
												} else {
													if(pX[4] <= 0.03350000083446503){
														if(pX[5] <= 13.5){
															return 1;
														} else {
															if(pX[6] <= 87.5){
																return 3;
															} else {
																return 4;
															}
														}
													} else {
														if(pX[1] <= 0.2150000035762787){
															return 4;
														} else {
															if(pX[8] <= 3.0749999284744263){
																return 3;
															} else {
																if(pX[5] <= 10.0){
																	return 3;
																} else {
																	return 2;
																}
															}
														}
													}
												}
											}
										} else {
											if(pX[9] <= 0.38499999046325684){
												return 5;
											} else {
												if(pX[2] <= 0.4450000077486038){
													if(pX[2] <= 0.3700000047683716){
														return 2;
													} else {
														return 4;
													}
												} else {
													return 3;
												}
											}
										}
									}
								} else {
									return 3;
								}
							}
						} else {
							if(pX[1] <= 0.20499999821186066){
								if(pX[2] <= 0.26000000536441803){
									return 2;
								} else {
									if(pX[8] <= 3.5149999856948853){
										if(pX[9] <= 0.4350000023841858){
											if(pX[7] <= 0.9957000017166138){
												if(pX[8] <= 3.450000047683716){
													if(pX[7] <= 0.9951599836349487){
														return 3;
													} else {
														if(pX[1] <= 0.14999999850988388){
															return 3;
														} else {
															return 2;
														}
													}
												} else {
													if(pX[9] <= 0.39499999582767487){
														return 2;
													} else {
														return 3;
													}
												}
											} else {
												return 2;
											}
										} else {
											if(pX[10] <= 10.050000190734863){
												return 2;
											} else {
												if(pX[10] <= 10.150000095367432){
													return 4;
												} else {
													if(pX[8] <= 3.259999990463257){
														return 5;
													} else {
														return 3;
													}
												}
											}
										}
									} else {
										return 2;
									}
								}
							} else {
								if(pX[6] <= 144.0){
									if(pX[3] <= 4.8999998569488525){
										if(pX[3] <= 1.3499999642372131){
											return 4;
										} else {
											if(pX[8] <= 3.4250000715255737){
												if(pX[10] <= 8.900000095367432){
													return 1;
												} else {
													if(pX[0] <= 7.099999904632568){
														return 3;
													} else {
														if(pX[4] <= 0.04649999924004078){
															return 3;
														} else {
															return 2;
														}
													}
												}
											} else {
												return 5;
											}
										}
									} else {
										if(pX[4] <= 0.042500000447034836){
											return 4;
										} else {
											return 3;
										}
									}
								} else {
									if(pX[1] <= 0.2149999961256981){
										if(pX[2] <= 0.3700000047683716){
											return 3;
										} else {
											return 2;
										}
									} else {
										return 3;
									}
								}
							}
						}
					}
				} else {
					if(pX[10] <= 10.449999809265137){
						if(pX[5] <= 24.5){
							if(pX[3] <= 2.950000047683716){
								if(pX[6] <= 121.0){
									if(pX[5] <= 12.5){
										if(pX[2] <= 0.3500000089406967){
											return 2;
										} else {
											if(pX[1] <= 0.2500000074505806){
												if(pX[3] <= 1.100000023841858){
													return 3;
												} else {
													if(pX[6] <= 82.0){
														return 4;
													} else {
														return 2;
													}
												}
											} else {
												return 1;
											}
										}
									} else {
										if(pX[3] <= 1.800000011920929){
											if(pX[9] <= 0.5349999964237213){
												if(pX[7] <= 0.9920400083065033){
													return 3;
												} else {
													return 2;
												}
											} else {
												if(pX[8] <= 3.5649999380111694){
													return 3;
												} else {
													if(pX[1] <= 0.12999999895691872){
														return 4;
													} else {
														return 3;
													}
												}
											}
										} else {
											return 1;
										}
									}
								} else {
									if(pX[7] <= 0.9933499991893768){
										return 2;
									} else {
										if(pX[9] <= 0.5550000071525574){
											return 3;
										} else {
											if(pX[7] <= 0.9954800009727478){
												if(pX[0] <= 7.0){
													return 1;
												} else {
													return 2;
												}
											} else {
												return 2;
											}
										}
									}
								}
							} else {
								if(pX[0] <= 7.099999904632568){
									return 3;
								} else {
									if(pX[1] <= 0.23499999940395355){
										if(pX[2] <= 0.39499999582767487){
											return 2;
										} else {
											return 3;
										}
									} else {
										return 3;
									}
								}
							}
						} else {
							if(pX[7] <= 0.9941249787807465){
								if(pX[8] <= 3.2450000047683716){
									if(pX[5] <= 37.5){
										return 3;
									} else {
										if(pX[0] <= 7.1499998569488525){
											if(pX[8] <= 3.1299999952316284){
												return 2;
											} else {
												return 3;
											}
										} else {
											if(pX[5] <= 47.5){
												if(pX[1] <= 0.2149999961256981){
													return 4;
												} else {
													return 3;
												}
											} else {
												return 3;
											}
										}
									}
								} else {
									if(pX[1] <= 0.2199999988079071){
										if(pX[4] <= 0.033000001683831215){
											return 3;
										} else {
											if(pX[8] <= 3.384999990463257){
												if(pX[7] <= 0.9930999875068665){
													return 3;
												} else {
													if(pX[6] <= 138.5){
														if(pX[5] <= 27.5){
															return 1;
														} else {
															return 4;
														}
													} else {
														return 3;
													}
												}
											} else {
												if(pX[0] <= 5.75){
													return 2;
												} else {
													if(pX[10] <= 10.349999904632568){
														return 3;
													} else {
														return 4;
													}
												}
											}
										}
									} else {
										if(pX[2] <= 0.23499999940395355){
											return 3;
										} else {
											if(pX[1] <= 0.2549999952316284){
												return 4;
											} else {
												return 5;
											}
										}
									}
								}
							} else {
								if(pX[5] <= 35.5){
									if(pX[1] <= 0.26500000059604645){
										if(pX[0] <= 7.049999952316284){
											return 3;
										} else {
											if(pX[8] <= 3.040000081062317){
												return 2;
											} else {
												if(pX[7] <= 0.994949996471405){
													if(pX[8] <= 3.3100000619888306){
														return 3;
													} else {
														return 4;
													}
												} else {
													return 3;
												}
											}
										}
									} else {
										return 1;
									}
								} else {
									if(pX[5] <= 96.25){
										if(pX[3] <= 8.550000190734863){
											if(pX[1] <= 0.1850000023841858){
												if(pX[2] <= 0.38499999046325684){
													return 3;
												} else {
													return 4;
												}
											} else {
												if(pX[4] <= 0.05350000038743019){
													if(pX[8] <= 3.284999966621399){
														if(pX[2] <= 0.3150000125169754){
															return 2;
														} else {
															if(pX[6] <= 183.5){
																if(pX[8] <= 3.1449999809265137){
																	return 3;
																} else {
																	if(pX[0] <= 7.0){
																		return 2;
																	} else {
																		if(pX[6] <= 152.0){
																			return 2;
																		} else {
																			return 3;
																		}
																	}
																}
															} else {
																return 3;
															}
														}
													} else {
														if(pX[5] <= 54.0){
															if(pX[3] <= 7.3999998569488525){
																return 3;
															} else {
																if(pX[7] <= 0.9958250224590302){
																	return 4;
																} else {
																	return 3;
																}
															}
														} else {
															return 2;
														}
													}
												} else {
													return 2;
												}
											}
										} else {
											if(pX[2] <= 0.3400000035762787){
												if(pX[1] <= 0.19500000029802322){
													return 4;
												} else {
													if(pX[7] <= 0.9953199923038483){
														if(pX[2] <= 0.3100000023841858){
															return 3;
														} else {
															return 4;
														}
													} else {
														return 3;
													}
												}
											} else {
												return 2;
											}
										}
									} else {
										if(pX[2] <= 0.2499999925494194){
											return 1;
										} else {
											return 0;
										}
									}
								}
							}
						}
					} else {
						if(pX[3] <= 1.3499999642372131){
							if(pX[4] <= 0.03500000014901161){
								return 3;
							} else {
								if(pX[9] <= 0.6300000250339508){
									if(pX[2] <= 0.4399999976158142){
										return 2;
									} else {
										return 4;
									}
								} else {
									return 3;
								}
							}
						} else {
							if(pX[6] <= 346.5){
								if(pX[2] <= 0.23499999940395355){
									if(pX[9] <= 0.5049999952316284){
										return 3;
									} else {
										if(pX[3] <= 4.9750001430511475){
											return 2;
										} else {
											return 4;
										}
									}
								} else {
									return 3;
								}
							} else {
								return 0;
							}
						}
					}
				}
			} else {
				if(pX[6] <= 45.5){
					if(pX[9] <= 0.5450000166893005){
						if(pX[8] <= 3.3649998903274536){
							if(pX[4] <= 0.17649999633431435){
								if(pX[2] <= 0.27000000327825546){
									if(pX[1] <= 0.5149999856948853){
										if(pX[0] <= 6.75){
											return 2;
										} else {
											return 3;
										}
									} else {
										return 2;
									}
								} else {
									return 3;
								}
							} else {
								return 0;
							}
						} else {
							if(pX[2] <= 0.014999999664723873){
								return 4;
							} else {
								return 1;
							}
						}
					} else {
						if(pX[5] <= 10.0){
							if(pX[7] <= 0.9957949817180634){
								if(pX[8] <= 3.384999990463257){
									return 3;
								} else {
									return 2;
								}
							} else {
								return 3;
							}
						} else {
							if(pX[2] <= 0.029999999329447746){
								if(pX[10] <= 10.400000095367432){
									return 2;
								} else {
									return 3;
								}
							} else {
								if(pX[8] <= 3.40500009059906){
									return 3;
								} else {
									if(pX[8] <= 3.4550000429153442){
										return 4;
									} else {
										return 3;
									}
								}
							}
						}
					}
				} else {
					if(pX[2] <= 0.14500000327825546){
						if(pX[4] <= 0.04450000077486038){
							if(pX[4] <= 0.035499999299645424){
								if(pX[9] <= 0.35500000417232513){
									return 3;
								} else {
									return 2;
								}
							} else {
								return 2;
							}
						} else {
							if(pX[9] <= 0.4050000011920929){
								return 1;
							} else {
								if(pX[1] <= 0.7425000071525574){
									if(pX[2] <= 0.08500000089406967){
										if(pX[1] <= 0.32999999821186066){
											return 3;
										} else {
											return 2;
										}
									} else {
										if(pX[4] <= 0.05550000071525574){
											return 2;
										} else {
											if(pX[7] <= 0.9954500198364258){
												return 1;
											} else {
												if(pX[1] <= 0.48999999463558197){
													return 3;
												} else {
													return 2;
												}
											}
										}
									}
								} else {
									if(pX[3] <= 1.5999999642372131){
										return 1;
									} else {
										return 3;
									}
								}
							}
						}
					} else {
						if(pX[7] <= 0.993149995803833){
							if(pX[9] <= 0.5550000071525574){
								if(pX[5] <= 15.5){
									if(pX[3] <= 0.949999988079071){
										return 1;
									} else {
										if(pX[0] <= 6.650000095367432){
											if(pX[0] <= 6.450000047683716){
												if(pX[10] <= 9.949999809265137){
													return 2;
												} else {
													return 4;
												}
											} else {
												return 1;
											}
										} else {
											return 2;
										}
									}
								} else {
									if(pX[3] <= 1.449999988079071){
										if(pX[8] <= 3.165000081062317){
											if(pX[4] <= 0.039499999955296516){
												if(pX[4] <= 0.03500000014901161){
													return 2;
												} else {
													if(pX[6] <= 172.25){
														return 3;
													} else {
														return 1;
													}
												}
											} else {
												return 2;
											}
										} else {
											if(pX[1] <= 0.3100000023841858){
												return 2;
											} else {
												if(pX[3] <= 1.1500000357627869){
													if(pX[10] <= 9.666666507720947){
														return 2;
													} else {
														return 3;
													}
												} else {
													return 3;
												}
											}
										}
									} else {
										if(pX[3] <= 5.849999904632568){
											if(pX[9] <= 0.4150000065565109){
												if(pX[0] <= 7.5){
													return 3;
												} else {
													return 2;
												}
											} else {
												if(pX[1] <= 0.38500000536441803){
													return 2;
												} else {
													return 3;
												}
											}
										} else {
											return 2;
										}
									}
								}
							} else {
								if(pX[2] <= 0.6200000047683716){
									if(pX[8] <= 3.409999966621399){
										if(pX[5] <= 10.5){
											return 1;
										} else {
											if(pX[5] <= 34.0){
												return 3;
											} else {
												if(pX[6] <= 190.0){
													return 2;
												} else {
													return 3;
												}
											}
										}
									} else {
										return 4;
									}
								} else {
									return 1;
								}
							}
						} else {
							if(pX[10] <= 9.849999904632568){
								if(pX[10] <= 9.349999904632568){
									if(pX[7] <= 0.9940950274467468){
										if(pX[5] <= 11.0){
											if(pX[4] <= 0.054500000551342964){
												return 1;
											} else {
												return 4;
											}
										} else {
											if(pX[10] <= 8.75){
												return 3;
											} else {
												if(pX[4] <= 0.08349999971687794){
													return 2;
												} else {
													return 3;
												}
											}
										}
									} else {
										if(pX[9] <= 0.36500000953674316){
											return 3;
										} else {
											if(pX[8] <= 3.1850000619888306){
												if(pX[8] <= 3.1750000715255737){
													if(pX[6] <= 160.0){
														return 2;
													} else {
														if(pX[10] <= 8.799999713897705){
															return 3;
														} else {
															if(pX[8] <= 3.0899999141693115){
																if(pX[6] <= 197.5){
																	return 2;
																} else {
																	return 3;
																}
															} else {
																if(pX[10] <= 9.25){
																	return 2;
																} else {
																	return 3;
																}
															}
														}
													}
												} else {
													return 3;
												}
											} else {
												return 2;
											}
										}
									}
								} else {
									if(pX[8] <= 3.1450001001358032){
										if(pX[9] <= 0.45499999821186066){
											if(pX[5] <= 33.5){
												if(pX[4] <= 0.05700000002980232){
													if(pX[0] <= 8.949999809265137){
														if(pX[6] <= 89.0){
															return 1;
														} else {
															return 2;
														}
													} else {
														return 1;
													}
												} else {
													return 3;
												}
											} else {
												if(pX[1] <= 0.3199999928474426){
													return 3;
												} else {
													return 2;
												}
											}
										} else {
											if(pX[6] <= 216.25){
												return 2;
											} else {
												return 3;
											}
										}
									} else {
										if(pX[5] <= 56.0){
											if(pX[5] <= 8.5){
												return 1;
											} else {
												if(pX[4] <= 0.05300000123679638){
													if(pX[6] <= 237.5){
														if(pX[4] <= 0.03399999998509884){
															return 3;
														} else {
															if(pX[6] <= 77.0){
																return 3;
															} else {
																if(pX[3] <= 1.25){
																	return 3;
																} else {
																	if(pX[1] <= 0.33500000834465027){
																		return 2;
																	} else {
																		if(pX[3] <= 1.5){
																			return 1;
																		} else {
																			return 2;
																		}
																	}
																}
															}
														}
													} else {
														return 3;
													}
												} else {
													if(pX[5] <= 38.0){
														if(pX[6] <= 150.0){
															if(pX[8] <= 3.1700000762939453){
																return 3;
															} else {
																return 2;
															}
														} else {
															return 2;
														}
													} else {
														return 3;
													}
												}
											}
										} else {
											if(pX[0] <= 6.3500001430511475){
												if(pX[7] <= 0.9949049949645996){
													return 2;
												} else {
													return 3;
												}
											} else {
												return 3;
											}
										}
									}
								}
							} else {
								if(pX[8] <= 3.4450000524520874){
									if(pX[7] <= 0.9941499829292297){
										if(pX[4] <= 0.03449999913573265){
											if(pX[8] <= 3.2200000286102295){
												if(pX[8] <= 3.03000009059906){
													return 4;
												} else {
													return 2;
												}
											} else {
												return 3;
											}
										} else {
											if(pX[10] <= 10.449999809265137){
												if(pX[1] <= 0.2849999964237213){
													if(pX[2] <= 0.26500000804662704){
														return 2;
													} else {
														return 3;
													}
												} else {
													if(pX[4] <= 0.03849999979138374){
														if(pX[2] <= 0.29500000178813934){
															return 2;
														} else {
															if(pX[4] <= 0.03699999861419201){
																return 2;
															} else {
																return 3;
															}
														}
													} else {
														return 2;
													}
												}
											} else {
												if(pX[7] <= 0.9936999976634979){
													if(pX[5] <= 18.5){
														return 2;
													} else {
														return 3;
													}
												} else {
													return 1;
												}
											}
										}
									} else {
										if(pX[3] <= 2.350000023841858){
											if(pX[2] <= 0.2800000011920929){
												if(pX[5] <= 20.0){
													return 2;
												} else {
													if(pX[1] <= 0.3449999988079071){
														return 2;
													} else {
														if(pX[2] <= 0.2149999961256981){
															return 3;
														} else {
															return 1;
														}
													}
												}
											} else {
												return 3;
											}
										} else {
											if(pX[5] <= 22.5){
												if(pX[1] <= 0.5050000101327896){
													if(pX[7] <= 0.9943000078201294){
														return 1;
													} else {
														return 2;
													}
												} else {
													return 3;
												}
											} else {
												if(pX[2] <= 0.6800000071525574){
													if(pX[7] <= 0.994949996471405){
														return 3;
													} else {
														if(pX[1] <= 0.42499999701976776){
															if(pX[0] <= 6.6499998569488525){
																return 3;
															} else {
																if(pX[0] <= 6.75){
																	return 2;
																} else {
																	if(pX[4] <= 0.036000000312924385){
																		return 2;
																	} else {
																		if(pX[5] <= 31.0){
																			if(pX[4] <= 0.06650000065565109){
																				return 2;
																			} else {
																				return 3;
																			}
																		} else {
																			return 3;
																		}
																	}
																}
															}
														} else {
															return 2;
														}
													}
												} else {
													return 2;
												}
											}
										}
									}
								} else {
									if(pX[8] <= 3.475000023841858){
										return 4;
									} else {
										return 3;
									}
								}
							}
						}
					}
				}
			}
		} else {
			if(pX[4] <= 0.09349999949336052){
				if(pX[5] <= 49.5){
					if(pX[1] <= 0.2824999988079071){
						if(pX[7] <= 0.9994649887084961){
							if(pX[3] <= 15.599999904632568){
								if(pX[8] <= 3.09499990940094){
									if(pX[4] <= 0.048499999567866325){
										if(pX[2] <= 0.35500000417232513){
											if(pX[0] <= 7.6499998569488525){
												return 3;
											} else {
												if(pX[0] <= 7.849999904632568){
													return 4;
												} else {
													return 3;
												}
											}
										} else {
											if(pX[1] <= 0.21000000089406967){
												return 4;
											} else {
												if(pX[0] <= 7.549999952316284){
													return 2;
												} else {
													return 3;
												}
											}
										}
									} else {
										if(pX[7] <= 0.998075008392334){
											if(pX[2] <= 0.48000000417232513){
												if(pX[3] <= 14.099999904632568){
													if(pX[10] <= 8.849999904632568){
														return 5;
													} else {
														if(pX[2] <= 0.3449999988079071){
															if(pX[4] <= 0.06250000186264515){
																return 3;
															} else {
																return 2;
															}
														} else {
															return 3;
														}
													}
												} else {
													if(pX[10] <= 9.050000190734863){
														if(pX[7] <= 0.9978500008583069){
															return 3;
														} else {
															return 4;
														}
													} else {
														return 3;
													}
												}
											} else {
												if(pX[0] <= 8.600000143051147){
													return 2;
												} else {
													return 1;
												}
											}
										} else {
											if(pX[0] <= 7.450000047683716){
												return 4;
											} else {
												if(pX[4] <= 0.052000001072883606){
													return 3;
												} else {
													return 2;
												}
											}
										}
									}
								} else {
									if(pX[10] <= 10.150000095367432){
										if(pX[6] <= 124.5){
											if(pX[7] <= 0.9962199926376343){
												return 1;
											} else {
												if(pX[4] <= 0.051500000059604645){
													if(pX[0] <= 6.950000047683716){
														return 3;
													} else {
														if(pX[10] <= 9.349999904632568){
															return 3;
														} else {
															return 4;
														}
													}
												} else {
													return 3;
												}
											}
										} else {
											if(pX[1] <= 0.20499999821186066){
												if(pX[0] <= 6.700000047683716){
													if(pX[1] <= 0.1850000023841858){
														return 4;
													} else {
														return 3;
													}
												} else {
													if(pX[4] <= 0.058000000193715096){
														return 3;
													} else {
														return 2;
													}
												}
											} else {
												if(pX[2] <= 0.29500000178813934){
													if(pX[8] <= 3.4250000715255737){
														return 2;
													} else {
														if(pX[5] <= 23.0){
															return 3;
														} else {
															return 2;
														}
													}
												} else {
													if(pX[8] <= 3.1750000715255737){
														if(pX[1] <= 0.22499999403953552){
															return 3;
														} else {
															if(pX[10] <= 9.550000190734863){
																return 2;
															} else {
																return 3;
															}
														}
													} else {
														if(pX[1] <= 0.2549999952316284){
															if(pX[5] <= 46.5){
																if(pX[1] <= 0.2149999961256981){
																	return 4;
																} else {
																	if(pX[8] <= 3.490000009536743){
																		if(pX[10] <= 9.900000095367432){
																			return 3;
																		} else {
																			if(pX[5] <= 16.5){
																				return 2;
																			} else {
																				return 3;
																			}
																		}
																	} else {
																		return 2;
																	}
																}
															} else {
																return 2;
															}
														} else {
															if(pX[5] <= 48.0){
																return 3;
															} else {
																if(pX[2] <= 0.4049999862909317){
																	return 3;
																} else {
																	return 4;
																}
															}
														}
													}
												}
											}
										}
									} else {
										if(pX[9] <= 0.7050000131130219){
											if(pX[0] <= 9.0){
												if(pX[2] <= 0.3149999976158142){
													if(pX[2] <= 0.2749999910593033){
														return 4;
													} else {
														if(pX[3] <= 5.950000047683716){
															if(pX[2] <= 0.29999999701976776){
																return 2;
															} else {
																return 3;
															}
														} else {
															return 3;
														}
													}
												} else {
													if(pX[3] <= 12.900000095367432){
														if(pX[5] <= 27.5){
															return 2;
														} else {
															if(pX[8] <= 3.475000023841858){
																return 3;
															} else {
																return 2;
															}
														}
													} else {
														return 0;
													}
												}
											} else {
												if(pX[0] <= 10.400000095367432){
													return 6;
												} else {
													return 4;
												}
											}
										} else {
											if(pX[5] <= 3.5){
												return 3;
											} else {
												if(pX[7] <= 0.996749997138977){
													return 3;
												} else {
													return 4;
												}
											}
										}
									}
								}
							} else {
								if(pX[6] <= 185.5){
									if(pX[9] <= 0.4950000047683716){
										if(pX[4] <= 0.03849999979138374){
											return 2;
										} else {
											return 3;
										}
									} else {
										if(pX[3] <= 17.649999618530273){
											return 3;
										} else {
											return 2;
										}
									}
								} else {
									return 0;
								}
							}
						} else {
							if(pX[3] <= 13.75){
								return 4;
							} else {
								if(pX[4] <= 0.0494999997317791){
									if(pX[5] <= 41.25){
										if(pX[7] <= 0.999750018119812){
											if(pX[0] <= 6.75){
												return 3;
											} else {
												if(pX[3] <= 18.649999618530273){
													return 2;
												} else {
													return 4;
												}
											}
										} else {
											if(pX[0] <= 7.349999904632568){
												return 2;
											} else {
												return 4;
											}
										}
									} else {
										if(pX[8] <= 3.0449999570846558){
											return 3;
										} else {
											if(pX[1] <= 0.20499999821186066){
												return 3;
											} else {
												if(pX[5] <= 47.0){
													return 4;
												} else {
													return 2;
												}
											}
										}
									}
								} else {
									if(pX[6] <= 166.5){
										if(pX[1] <= 0.17500000447034836){
											return 5;
										} else {
											return 2;
										}
									} else {
										if(pX[0] <= 7.700000286102295){
											return 3;
										} else {
											return 1;
										}
									}
								}
							}
						}
					} else {
						if(pX[7] <= 1.0007500052452087){
							if(pX[6] <= 91.5){
								if(pX[3] <= 7.800000190734863){
									if(pX[1] <= 0.5349999964237213){
										if(pX[10] <= 10.449999809265137){
											if(pX[5] <= 5.5){
												if(pX[9] <= 0.6699999868869781){
													return 2;
												} else {
													if(pX[5] <= 4.0){
														return 5;
													} else {
														return 3;
													}
												}
											} else {
												if(pX[9] <= 0.574999988079071){
													if(pX[6] <= 88.5){
														if(pX[4] <= 0.08150000125169754){
															if(pX[10] <= 9.299999713897705){
																if(pX[2] <= 0.5499999821186066){
																	return 3;
																} else {
																	return 2;
																}
															} else {
																if(pX[2] <= 0.3050000071525574){
																	return 2;
																} else {
																	if(pX[0] <= 9.400000095367432){
																		if(pX[3] <= 2.149999976158142){
																			return 3;
																		} else {
																			return 2;
																		}
																	} else {
																		return 3;
																	}
																}
															}
														} else {
															if(pX[0] <= 7.049999952316284){
																return 3;
															} else {
																return 2;
															}
														}
													} else {
														return 3;
													}
												} else {
													if(pX[0] <= 7.950000047683716){
														if(pX[6] <= 48.5){
															if(pX[7] <= 0.998199999332428){
																if(pX[4] <= 0.08449999988079071){
																	return 2;
																} else {
																	if(pX[2] <= 0.32500000298023224){
																		return 4;
																	} else {
																		return 2;
																	}
																}
															} else {
																return 3;
															}
														} else {
															if(pX[4] <= 0.08050000295042992){
																if(pX[9] <= 0.6349999904632568){
																	return 3;
																} else {
																	return 4;
																}
															} else {
																if(pX[7] <= 0.9975500106811523){
																	return 3;
																} else {
																	return 2;
																}
															}
														}
													} else {
														if(pX[3] <= 3.600000023841858){
															if(pX[8] <= 3.034999966621399){
																if(pX[1] <= 0.35500000417232513){
																	return 3;
																} else {
																	return 2;
																}
															} else {
																if(pX[5] <= 33.0){
																	if(pX[1] <= 0.41499999165534973){
																		if(pX[0] <= 11.349999904632568){
																			if(pX[5] <= 6.5){
																				return 2;
																			} else {
																				if(pX[7] <= 0.996399998664856){
																					return 2;
																				} else {
																					if(pX[9] <= 0.6550000011920929){
																						return 2;
																					} else {
																						return 3;
																					}
																				}
																			}
																		} else {
																			return 3;
																		}
																	} else {
																		return 3;
																	}
																} else {
																	return 2;
																}
															}
														} else {
															return 2;
														}
													}
												}
											}
										} else {
											if(pX[0] <= 8.5){
												if(pX[3] <= 3.200000047683716){
													if(pX[1] <= 0.46000000834465027){
														if(pX[4] <= 0.07200000062584877){
															return 2;
														} else {
															return 3;
														}
													} else {
														return 2;
													}
												} else {
													return 2;
												}
											} else {
												if(pX[7] <= 0.9974400103092194){
													return 2;
												} else {
													if(pX[9] <= 0.7350000143051147){
														if(pX[0] <= 8.950000286102295){
															return 2;
														} else {
															if(pX[6] <= 68.0){
																if(pX[8] <= 3.190000057220459){
																	if(pX[1] <= 0.4399999976158142){
																		return 2;
																	} else {
																		return 3;
																	}
																} else {
																	return 3;
																}
															} else {
																return 2;
															}
														}
													} else {
														if(pX[8] <= 3.3700000047683716){
															return 4;
														} else {
															if(pX[5] <= 25.5){
																return 4;
															} else {
																return 3;
															}
														}
													}
												}
											}
										}
									} else {
										if(pX[6] <= 12.5){
											if(pX[7] <= 0.9964600205421448){
												if(pX[10] <= 9.674999713897705){
													return 2;
												} else {
													return 0;
												}
											} else {
												return 1;
											}
										} else {
											if(pX[5] <= 8.5){
												if(pX[8] <= 3.180000066757202){
													if(pX[3] <= 1.9999999403953552){
														if(pX[1] <= 0.625){
															return 3;
														} else {
															return 2;
														}
													} else {
														return 2;
													}
												} else {
													if(pX[5] <= 3.5){
														return 4;
													} else {
														if(pX[4] <= 0.07649999856948853){
															if(pX[9] <= 0.5999999940395355){
																if(pX[0] <= 8.700000286102295){
																	if(pX[1] <= 0.9025000035762787){
																		return 2;
																	} else {
																		return 3;
																	}
																} else {
																	return 1;
																}
															} else {
																if(pX[0] <= 6.599999904632568){
																	return 2;
																} else {
																	return 3;
																}
															}
														} else {
															if(pX[0] <= 8.349999904632568){
																if(pX[9] <= 0.5349999964237213){
																	if(pX[9] <= 0.5099999904632568){
																		if(pX[0] <= 7.6000001430511475){
																			return 1;
																		} else {
																			if(pX[6] <= 18.0){
																				return 2;
																			} else {
																				if(pX[6] <= 25.5){
																					return 1;
																				} else {
																					return 3;
																				}
																			}
																		}
																	} else {
																		return 2;
																	}
																} else {
																	if(pX[5] <= 7.5){
																		return 3;
																	} else {
																		if(pX[6] <= 47.5){
																			return 2;
																		} else {
																			return 3;
																		}
																	}
																}
															} else {
																return 3;
															}
														}
													}
												}
											} else {
												if(pX[8] <= 3.225000023841858){
													if(pX[0] <= 8.849999904632568){
														if(pX[1] <= 0.6400000154972076){
															return 2;
														} else {
															if(pX[7] <= 0.9970200061798096){
																return 2;
															} else {
																return 1;
															}
														}
													} else {
														if(pX[4] <= 0.08700000122189522){
															if(pX[7] <= 0.9973949790000916){
																return 3;
															} else {
																return 2;
															}
														} else {
															return 3;
														}
													}
												} else {
													if(pX[0] <= 10.199999809265137){
														if(pX[0] <= 8.25){
															if(pX[5] <= 15.5){
																if(pX[10] <= 9.050000190734863){
																	return 3;
																} else {
																	if(pX[4] <= 0.0885000005364418){
																		if(pX[2] <= 0.24500000476837158){
																			if(pX[6] <= 29.5){
																				if(pX[4] <= 0.0755000002682209){
																					return 2;
																				} else {
																					if(pX[10] <= 9.650000095367432){
																						return 3;
																					} else {
																						if(pX[4] <= 0.08349999785423279){
																							return 4;
																						} else {
																							return 2;
																						}
																					}
																				}
																			} else {
																				return 2;
																			}
																		} else {
																			if(pX[3] <= 1.850000023841858){
																				return 2;
																			} else {
																				return 1;
																			}
																		}
																	} else {
																		if(pX[6] <= 47.5){
																			if(pX[2] <= 0.03500000014901161){
																				return 1;
																			} else {
																				return 3;
																			}
																		} else {
																			return 2;
																		}
																	}
																}
															} else {
																if(pX[4] <= 0.08049999922513962){
																	if(pX[8] <= 3.415000081062317){
																		if(pX[1] <= 0.8250000178813934){
																			return 2;
																		} else {
																			return 0;
																		}
																	} else {
																		if(pX[9] <= 0.6899999976158142){
																			return 2;
																		} else {
																			if(pX[5] <= 31.5){
																				return 3;
																			} else {
																				return 2;
																			}
																		}
																	}
																} else {
																	if(pX[1] <= 0.6450000107288361){
																		return 3;
																	} else {
																		return 2;
																	}
																}
															}
														} else {
															return 2;
														}
													} else {
														return 1;
													}
												}
											}
										}
									}
								} else {
									return 3;
								}
							} else {
								if(pX[8] <= 3.430000066757202){
									if(pX[0] <= 9.349999904632568){
										if(pX[9] <= 1.0950000286102295){
											if(pX[6] <= 181.5){
												if(pX[4] <= 0.06949999928474426){
													if(pX[2] <= 0.32500000298023224){
														if(pX[4] <= 0.042500000447034836){
															if(pX[6] <= 115.5){
																return 3;
															} else {
																if(pX[0] <= 7.3999998569488525){
																	return 2;
																} else {
																	if(pX[3] <= 10.550000190734863){
																		return 2;
																	} else {
																		return 3;
																	}
																}
															}
														} else {
															if(pX[2] <= 0.24499999731779099){
																if(pX[9] <= 0.45499999821186066){
																	if(pX[5] <= 33.0){
																		return 3;
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[9] <= 0.6350000202655792){
																		if(pX[1] <= 0.3400000035762787){
																			return 2;
																		} else {
																			if(pX[7] <= 0.9990299940109253){
																				return 2;
																			} else {
																				return 3;
																			}
																		}
																	} else {
																		return 3;
																	}
																}
															} else {
																if(pX[8] <= 3.1350001096725464){
																	if(pX[7] <= 0.9975900053977966){
																		return 2;
																	} else {
																		return 1;
																	}
																} else {
																	if(pX[7] <= 0.9963500201702118){
																		return 1;
																	} else {
																		if(pX[10] <= 9.25){
																			return 3;
																		} else {
																			if(pX[6] <= 169.5){
																				return 3;
																			} else {
																				return 2;
																			}
																		}
																	}
																}
															}
														}
													} else {
														if(pX[4] <= 0.042500000447034836){
															if(pX[5] <= 37.0){
																return 3;
															} else {
																return 2;
															}
														} else {
															if(pX[7] <= 0.997299998998642){
																if(pX[3] <= 6.950000047683716){
																	return 1;
																} else {
																	return 2;
																}
															} else {
																if(pX[8] <= 3.3950001001358032){
																	if(pX[10] <= 8.949999809265137){
																		if(pX[7] <= 0.9974499940872192){
																			return 3;
																		} else {
																			return 2;
																		}
																	} else {
																		if(pX[8] <= 3.0799999237060547){
																			if(pX[1] <= 0.3050000071525574){
																				return 4;
																			} else {
																				return 2;
																			}
																		} else {
																			return 2;
																		}
																	}
																} else {
																	return 3;
																}
															}
														}
													}
												} else {
													if(pX[9] <= 0.625){
														return 2;
													} else {
														if(pX[9] <= 0.6450000107288361){
															return 3;
														} else {
															return 2;
														}
													}
												}
											} else {
												if(pX[8] <= 3.3399999141693115){
													if(pX[0] <= 5.950000047683716){
														return 3;
													} else {
														if(pX[4] <= 0.0409999992698431){
															return 3;
														} else {
															if(pX[1] <= 0.5200000107288361){
																if(pX[9] <= 0.48000000417232513){
																	return 2;
																} else {
																	if(pX[9] <= 0.6349999904632568){
																		if(pX[1] <= 0.3449999988079071){
																			if(pX[10] <= 9.150000095367432){
																				if(pX[2] <= 0.3700000047683716){
																					if(pX[5] <= 34.0){
																						return 2;
																					} else {
																						return 3;
																					}
																				} else {
																					return 2;
																				}
																			} else {
																				return 2;
																			}
																		} else {
																			if(pX[5] <= 39.5){
																				if(pX[2] <= 0.2150000035762787){
																					return 2;
																				} else {
																					return 3;
																				}
																			} else {
																				return 2;
																			}
																		}
																	} else {
																		return 2;
																	}
																}
															} else {
																if(pX[5] <= 33.5){
																	return 3;
																} else {
																	if(pX[0] <= 8.75){
																		return 2;
																	} else {
																		return 0;
																	}
																}
															}
														}
													}
												} else {
													return 3;
												}
											}
										} else {
											if(pX[1] <= 0.5825000107288361){
												if(pX[4] <= 0.07049999944865704){
													return 2;
												} else {
													return 3;
												}
											} else {
												return 1;
											}
										}
									} else {
										if(pX[9] <= 0.45499999821186066){
											return 2;
										} else {
											if(pX[2] <= 0.3499999940395355){
												return 2;
											} else {
												return 1;
											}
										}
									}
								} else {
									if(pX[2] <= 0.3100000023841858){
										if(pX[9] <= 0.5599999725818634){
											return 3;
										} else {
											return 2;
										}
									} else {
										return 3;
									}
								}
							}
						} else {
							if(pX[1] <= 0.5349999964237213){
								return 3;
							} else {
								if(pX[6] <= 44.5){
									return 4;
								} else {
									return 0;
								}
							}
						}
					}
				} else {
					if(pX[9] <= 0.375){
						if(pX[6] <= 135.0){
							return 4;
						} else {
							return 3;
						}
					} else {
						if(pX[3] <= 9.799999713897705){
							if(pX[0] <= 7.25){
								if(pX[9] <= 0.5300000011920929){
									return 2;
								} else {
									if(pX[0] <= 6.349999904632568){
										return 2;
									} else {
										if(pX[4] <= 0.06949999928474426){
											return 3;
										} else {
											return 2;
										}
									}
								}
							} else {
								if(pX[6] <= 158.5){
									return 2;
								} else {
									if(pX[0] <= 7.549999952316284){
										return 3;
									} else {
										return 2;
									}
								}
							}
						} else {
							if(pX[2] <= 0.625){
								if(pX[5] <= 68.5){
									if(pX[7] <= 0.9964600205421448){
										return 3;
									} else {
										if(pX[8] <= 3.1149998903274536){
											if(pX[1] <= 0.2549999952316284){
												if(pX[9] <= 0.5349999964237213){
													if(pX[4] <= 0.06500000134110451){
														if(pX[6] <= 255.0){
															if(pX[6] <= 160.0){
																if(pX[5] <= 53.75){
																	return 3;
																} else {
																	return 2;
																}
															} else {
																if(pX[1] <= 0.23499999940395355){
																	return 3;
																} else {
																	if(pX[9] <= 0.48499998450279236){
																		return 2;
																	} else {
																		return 3;
																	}
																}
															}
														} else {
															return 2;
														}
													} else {
														return 3;
													}
												} else {
													if(pX[10] <= 8.599999904632568){
														return 3;
													} else {
														if(pX[2] <= 0.3449999988079071){
															if(pX[9] <= 0.5600000023841858){
																return 2;
															} else {
																return 3;
															}
														} else {
															return 2;
														}
													}
												}
											} else {
												if(pX[6] <= 164.5){
													if(pX[6] <= 155.5){
														if(pX[9] <= 0.4950000047683716){
															return 2;
														} else {
															return 3;
														}
													} else {
														if(pX[7] <= 0.9977500140666962){
															return 4;
														} else {
															return 3;
														}
													}
												} else {
													if(pX[3] <= 10.900000095367432){
														return 3;
													} else {
														if(pX[8] <= 3.0199999809265137){
															if(pX[9] <= 0.5600000023841858){
																return 2;
															} else {
																return 3;
															}
														} else {
															if(pX[0] <= 7.1499998569488525){
																return 2;
															} else {
																if(pX[6] <= 226.0){
																	if(pX[1] <= 0.3400000035762787){
																		return 2;
																	} else {
																		if(pX[2] <= 0.4950000047683716){
																			return 2;
																		} else {
																			if(pX[2] <= 0.5200000107288361){
																				return 3;
																			} else {
																				return 1;
																			}
																		}
																	}
																} else {
																	return 3;
																}
															}
														}
													}
												}
											}
										} else {
											if(pX[6] <= 247.0){
												if(pX[5] <= 61.0){
													if(pX[9] <= 0.4050000011920929){
														return 2;
													} else {
														if(pX[4] <= 0.033000001683831215){
															return 4;
														} else {
															if(pX[1] <= 0.23499999940395355){
																if(pX[10] <= 9.0){
																	if(pX[8] <= 3.2100000381469727){
																		return 5;
																	} else {
																		return 3;
																	}
																} else {
																	return 3;
																}
															} else {
																if(pX[1] <= 0.2849999964237213){
																	if(pX[10] <= 9.550000190734863){
																		if(pX[8] <= 3.2699999809265137){
																			return 2;
																		} else {
																			if(pX[0] <= 6.550000190734863){
																				return 3;
																			} else {
																				return 4;
																			}
																		}
																	} else {
																		return 3;
																	}
																} else {
																	if(pX[5] <= 56.5){
																		return 3;
																	} else {
																		if(pX[8] <= 3.25){
																			return 2;
																		} else {
																			return 3;
																		}
																	}
																}
															}
														}
													}
												} else {
													if(pX[7] <= 0.9968699812889099){
														return 3;
													} else {
														if(pX[6] <= 225.5){
															return 2;
														} else {
															return 3;
														}
													}
												}
											} else {
												return 2;
											}
										}
									}
								} else {
									if(pX[2] <= 0.5199999958276749){
										if(pX[5] <= 118.0){
											if(pX[2] <= 0.2750000059604645){
												if(pX[2] <= 0.26000000536441803){
													return 3;
												} else {
													return 2;
												}
											} else {
												if(pX[2] <= 0.39499999582767487){
													return 3;
												} else {
													if(pX[4] <= 0.05049999989569187){
														return 3;
													} else {
														return 2;
													}
												}
											}
										} else {
											return 2;
										}
									} else {
										return 1;
									}
								}
							} else {
								if(pX[10] <= 9.349999904632568){
									if(pX[2] <= 0.6349999904632568){
										if(pX[4] <= 0.061000000685453415){
											return 3;
										} else {
											return 2;
										}
									} else {
										return 2;
									}
								} else {
									if(pX[0] <= 7.25){
										return 3;
									} else {
										return 1;
									}
								}
							}
						}
					}
				}
			} else {
				if(pX[1] <= 0.1900000050663948){
					return 3;
				} else {
					if(pX[4] <= 0.17000000178813934){
						if(pX[6] <= 17.0){
							if(pX[10] <= 9.900000095367432){
								return 2;
							} else {
								if(pX[1] <= 0.4300000071525574){
									return 3;
								} else {
									if(pX[4] <= 0.1145000010728836){
										return 1;
									} else {
										if(pX[7] <= 0.9972399771213531){
											return 2;
										} else {
											return 4;
										}
									}
								}
							}
						} else {
							if(pX[8] <= 3.5){
								if(pX[9] <= 1.5850000381469727){
									if(pX[2] <= 0.2750000059604645){
										if(pX[10] <= 9.150000095367432){
											return 3;
										} else {
											if(pX[5] <= 7.5){
												if(pX[5] <= 6.5){
													return 2;
												} else {
													if(pX[0] <= 8.150000095367432){
														return 4;
													} else {
														return 3;
													}
												}
											} else {
												if(pX[7] <= 0.9978350102901459){
													return 2;
												} else {
													if(pX[5] <= 19.0){
														if(pX[3] <= 2.950000047683716){
															return 3;
														} else {
															return 2;
														}
													} else {
														if(pX[9] <= 0.5149999856948853){
															return 3;
														} else {
															return 2;
														}
													}
												}
											}
										}
									} else {
										if(pX[3] <= 2.399999976158142){
											if(pX[10] <= 9.650000095367432){
												return 2;
											} else {
												if(pX[8] <= 3.3450000286102295){
													if(pX[9] <= 0.6350000202655792){
														return 4;
													} else {
														return 3;
													}
												} else {
													return 2;
												}
											}
										} else {
											return 2;
										}
									}
								} else {
									if(pX[6] <= 134.5){
										return 2;
									} else {
										return 3;
									}
								}
							} else {
								if(pX[0] <= 7.650000095367432){
									if(pX[8] <= 3.5950000286102295){
										return 1;
									} else {
										return 2;
									}
								} else {
									return 1;
								}
							}
						}
					} else {
						if(pX[5] <= 9.5){
							if(pX[3] <= 1.75){
								return 2;
							} else {
								if(pX[4] <= 0.2929999977350235){
									if(pX[8] <= 3.1700000762939453){
										return 0;
									} else {
										return 3;
									}
								} else {
									if(pX[3] <= 1.899999976158142){
										return 3;
									} else {
										return 2;
									}
								}
							}
						} else {
							if(pX[9] <= 1.7950000166893005){
								if(pX[7] <= 1.0030549764633179){
									if(pX[8] <= 2.9200000762939453){
										return 3;
									} else {
										if(pX[2] <= 0.04500000178813934){
											return 3;
										} else {
											return 2;
										}
									}
								} else {
									return 3;
								}
							} else {
								return 1;
							}
						}
					}
				}
			}
		}
	} else {
		if(pX[10] <= 12.550000190734863){
			if(pX[2] <= 0.23499999940395355){
				if(pX[6] <= 15.5){
					if(pX[10] <= 10.949999809265137){
						if(pX[4] <= 0.15149999409914017){
							if(pX[4] <= 0.08900000154972076){
								if(pX[3] <= 2.0){
									return 2;
								} else {
									return 3;
								}
							} else {
								return 0;
							}
						} else {
							return 2;
						}
					} else {
						if(pX[1] <= 0.7925000190734863){
							if(pX[10] <= 11.449999809265137){
								if(pX[8] <= 3.3549998998641968){
									if(pX[7] <= 0.994839996099472){
										return 3;
									} else {
										return 4;
									}
								} else {
									return 2;
								}
							} else {
								if(pX[6] <= 12.0){
									return 3;
								} else {
									if(pX[4] <= 0.08350000157952309){
										return 4;
									} else {
										return 1;
									}
								}
							}
						} else {
							return 1;
						}
					}
				} else {
					if(pX[1] <= 0.9899999797344208){
						if(pX[7] <= 0.9907800257205963){
							if(pX[3] <= 0.9000000059604645){
								return 1;
							} else {
								if(pX[10] <= 11.099999904632568){
									return 2;
								} else {
									if(pX[8] <= 3.3600000143051147){
										if(pX[9] <= 0.4999999850988388){
											if(pX[3] <= 3.0499998927116394){
												if(pX[8] <= 3.2300000190734863){
													if(pX[6] <= 84.0){
														return 3;
													} else {
														return 2;
													}
												} else {
													return 3;
												}
											} else {
												return 5;
											}
										} else {
											if(pX[6] <= 75.0){
												return 4;
											} else {
												return 2;
											}
										}
									} else {
										if(pX[4] <= 0.02950000111013651){
											return 4;
										} else {
											if(pX[9] <= 0.4099999964237213){
												return 4;
											} else {
												return 2;
											}
										}
									}
								}
							}
						} else {
							if(pX[10] <= 11.333333492279053){
								if(pX[8] <= 3.109999895095825){
									if(pX[2] <= 0.2149999961256981){
										if(pX[6] <= 93.0){
											return 1;
										} else {
											if(pX[0] <= 6.950000047683716){
												return 3;
											} else {
												return 2;
											}
										}
									} else {
										if(pX[6] <= 124.5){
											return 1;
										} else {
											return 2;
										}
									}
								} else {
									if(pX[4] <= 0.09600000083446503){
										if(pX[5] <= 47.0){
											if(pX[8] <= 3.5649999380111694){
												if(pX[3] <= 1.300000011920929){
													return 4;
												} else {
													if(pX[4] <= 0.030500000342726707){
														return 4;
													} else {
														if(pX[6] <= 19.5){
															return 4;
														} else {
															if(pX[7] <= 0.9952000081539154){
																if(pX[4] <= 0.06850000098347664){
																	if(pX[7] <= 0.9923299849033356){
																		return 3;
																	} else {
																		if(pX[1] <= 0.5850000083446503){
																			if(pX[0] <= 6.25){
																				return 2;
																			} else {
																				if(pX[7] <= 0.9941250085830688){
																					return 3;
																				} else {
																					return 2;
																				}
																			}
																		} else {
																			return 3;
																		}
																	}
																} else {
																	if(pX[0] <= 6.8500001430511475){
																		if(pX[2] <= 0.04500000178813934){
																			return 2;
																		} else {
																			return 3;
																		}
																	} else {
																		return 2;
																	}
																}
															} else {
																if(pX[3] <= 13.074999809265137){
																	if(pX[7] <= 0.9952449798583984){
																		if(pX[7] <= 0.9952299892902374){
																			return 3;
																		} else {
																			return 1;
																		}
																	} else {
																		if(pX[9] <= 0.35500000417232513){
																			return 2;
																		} else {
																			return 3;
																		}
																	}
																} else {
																	return 2;
																}
															}
														}
													}
												}
											} else {
												if(pX[10] <= 11.0){
													return 4;
												} else {
													if(pX[8] <= 3.6649999618530273){
														return 1;
													} else {
														return 3;
													}
												}
											}
										} else {
											if(pX[1] <= 0.4100000113248825){
												return 3;
											} else {
												if(pX[10] <= 10.949999809265137){
													return 2;
												} else {
													return 0;
												}
											}
										}
									} else {
										if(pX[6] <= 40.0){
											return 1;
										} else {
											return 2;
										}
									}
								}
							} else {
								if(pX[5] <= 23.5){
									if(pX[7] <= 0.9962599873542786){
										if(pX[6] <= 101.5){
											if(pX[9] <= 0.8700000047683716){
												if(pX[4] <= 0.05300000123679638){
													if(pX[0] <= 6.299999952316284){
														if(pX[10] <= 12.224999904632568){
															return 2;
														} else {
															return 3;
														}
													} else {
														return 3;
													}
												} else {
													return 3;
												}
											} else {
												return 4;
											}
										} else {
											if(pX[9] <= 0.32500000298023224){
												return 4;
											} else {
												if(pX[3] <= 8.75){
													if(pX[9] <= 0.3799999952316284){
														return 3;
													} else {
														return 4;
													}
												} else {
													return 3;
												}
											}
										}
									} else {
										return 4;
									}
								} else {
									return 3;
								}
							}
						}
					} else {
						return 1;
					}
				}
			} else {
				if(pX[9] <= 0.6850000023841858){
					if(pX[5] <= 21.5){
						if(pX[3] <= 1.050000011920929){
							if(pX[8] <= 3.0999999046325684){
								if(pX[10] <= 11.549999713897705){
									return 2;
								} else {
									return 5;
								}
							} else {
								if(pX[6] <= 71.5){
									if(pX[10] <= 12.050000190734863){
										return 3;
									} else {
										return 1;
									}
								} else {
									if(pX[6] <= 74.5){
										return 2;
									} else {
										return 1;
									}
								}
							}
						} else {
							if(pX[4] <= 0.035499999299645424){
								if(pX[7] <= 0.9923399984836578){
									if(pX[8] <= 3.0149999856948853){
										if(pX[7] <= 0.9906200170516968){
											if(pX[10] <= 11.299999713897705){
												return 5;
											} else {
												if(pX[5] <= 7.5){
													return 1;
												} else {
													return 3;
												}
											}
										} else {
											return 2;
										}
									} else {
										if(pX[4] <= 0.03350000083446503){
											if(pX[7] <= 0.9899699985980988){
												return 5;
											} else {
												if(pX[8] <= 3.0399999618530273){
													return 4;
												} else {
													if(pX[3] <= 3.149999976158142){
														if(pX[7] <= 0.9914250075817108){
															return 3;
														} else {
															if(pX[8] <= 3.200000047683716){
																return 2;
															} else {
																return 3;
															}
														}
													} else {
														if(pX[1] <= 0.4300000071525574){
															if(pX[5] <= 20.5){
																if(pX[8] <= 3.0999999046325684){
																	return 3;
																} else {
																	if(pX[6] <= 100.0){
																		return 2;
																	} else {
																		return 3;
																	}
																}
															} else {
																return 5;
															}
														} else {
															return 4;
														}
													}
												}
											}
										} else {
											if(pX[2] <= 0.39499999582767487){
												if(pX[2] <= 0.3400000035762787){
													return 4;
												} else {
													if(pX[5] <= 20.0){
														return 4;
													} else {
														return 3;
													}
												}
											} else {
												return 3;
											}
										}
									}
								} else {
									if(pX[3] <= 7.9750001430511475){
										if(pX[2] <= 0.3149999976158142){
											return 4;
										} else {
											if(pX[2] <= 0.3349999934434891){
												return 5;
											} else {
												if(pX[6] <= 45.0){
													return 2;
												} else {
													if(pX[1] <= 0.24000000208616257){
														return 2;
													} else {
														return 4;
													}
												}
											}
										}
									} else {
										if(pX[0] <= 8.5){
											if(pX[1] <= 0.17500000447034836){
												return 5;
											} else {
												if(pX[4] <= 0.02949999924749136){
													return 3;
												} else {
													if(pX[7] <= 0.9938449859619141){
														return 3;
													} else {
														return 2;
													}
												}
											}
										} else {
											return 2;
										}
									}
								}
							} else {
								if(pX[8] <= 3.0749999284744263){
									if(pX[9] <= 0.3149999976158142){
										return 4;
									} else {
										if(pX[2] <= 0.3449999988079071){
											return 3;
										} else {
											if(pX[3] <= 5.599999904632568){
												if(pX[2] <= 0.35999999940395355){
													return 1;
												} else {
													if(pX[5] <= 19.5){
														return 3;
													} else {
														return 2;
													}
												}
											} else {
												return 2;
											}
										}
									}
								} else {
									if(pX[5] <= 12.5){
										if(pX[4] <= 0.0364999994635582){
											return 2;
										} else {
											if(pX[10] <= 11.550000190734863){
												if(pX[6] <= 47.0){
													if(pX[2] <= 0.6099999845027924){
														if(pX[1] <= 0.38499999046325684){
															if(pX[7] <= 0.9951499998569489){
																if(pX[7] <= 0.9945500195026398){
																	return 3;
																} else {
																	return 4;
																}
															} else {
																if(pX[8] <= 3.4399999380111694){
																	if(pX[9] <= 0.6449999809265137){
																		return 3;
																	} else {
																		return 5;
																	}
																} else {
																	return 2;
																}
															}
														} else {
															if(pX[1] <= 0.44999998807907104){
																if(pX[0] <= 8.350000143051147){
																	return 1;
																} else {
																	return 2;
																}
															} else {
																if(pX[1] <= 0.48999999463558197){
																	return 4;
																} else {
																	if(pX[5] <= 6.0){
																		return 2;
																	} else {
																		return 3;
																	}
																}
															}
														}
													} else {
														return 2;
													}
												} else {
													if(pX[2] <= 0.3049999922513962){
														if(pX[10] <= 11.200000286102295){
															return 2;
														} else {
															return 4;
														}
													} else {
														if(pX[9] <= 0.45000000298023224){
															return 2;
														} else {
															if(pX[2] <= 0.35999999940395355){
																if(pX[9] <= 0.48499999940395355){
																	return 1;
																} else {
																	if(pX[7] <= 0.9935100078582764){
																		return 2;
																	} else {
																		return 1;
																	}
																}
															} else {
																return 2;
															}
														}
													}
												}
											} else {
												if(pX[9] <= 0.5799999833106995){
													if(pX[10] <= 11.75){
														return 4;
													} else {
														if(pX[0] <= 6.849999904632568){
															return 2;
														} else {
															if(pX[6] <= 18.5){
																if(pX[8] <= 3.240000009536743){
																	if(pX[5] <= 6.0){
																		return 3;
																	} else {
																		return 4;
																	}
																} else {
																	return 1;
																}
															} else {
																return 3;
															}
														}
													}
												} else {
													if(pX[3] <= 3.549999952316284){
														if(pX[1] <= 0.41499999165534973){
															if(pX[10] <= 11.700000286102295){
																return 4;
															} else {
																return 3;
															}
														} else {
															return 4;
														}
													} else {
														return 4;
													}
												}
											}
										}
									} else {
										if(pX[9] <= 0.4749999940395355){
											if(pX[5] <= 18.5){
												if(pX[0] <= 5.799999952316284){
													return 4;
												} else {
													if(pX[7] <= 0.9939999878406525){
														return 3;
													} else {
														return 1;
													}
												}
											} else {
												if(pX[10] <= 11.050000190734863){
													if(pX[6] <= 55.5){
														return 3;
													} else {
														return 4;
													}
												} else {
													if(pX[0] <= 6.150000095367432){
														return 4;
													} else {
														return 3;
													}
												}
											}
										} else {
											if(pX[5] <= 20.5){
												if(pX[9] <= 0.4950000047683716){
													if(pX[1] <= 0.17499999701976776){
														return 4;
													} else {
														return 2;
													}
												} else {
													if(pX[1] <= 0.6599999964237213){
														if(pX[3] <= 1.449999988079071){
															if(pX[0] <= 6.049999952316284){
																return 3;
															} else {
																if(pX[2] <= 0.2799999937415123){
																	return 3;
																} else {
																	return 2;
																}
															}
														} else {
															if(pX[4] <= 0.0364999994635582){
																if(pX[1] <= 0.2800000011920929){
																	return 3;
																} else {
																	return 4;
																}
															} else {
																if(pX[0] <= 6.950000047683716){
																	return 3;
																} else {
																	if(pX[0] <= 7.049999952316284){
																		return 2;
																	} else {
																		return 3;
																	}
																}
															}
														}
													} else {
														return 2;
													}
												}
											} else {
												if(pX[0] <= 6.950000047683716){
													if(pX[8] <= 3.274999976158142){
														return 3;
													} else {
														return 4;
													}
												} else {
													return 2;
												}
											}
										}
									}
								}
							}
						}
					} else {
						if(pX[0] <= 6.450000047683716){
							if(pX[4] <= 0.04450000077486038){
								if(pX[7] <= 0.9922100007534027){
									if(pX[10] <= 10.75){
										return 4;
									} else {
										if(pX[3] <= 3.875){
											if(pX[3] <= 3.049999952316284){
												if(pX[2] <= 0.33500000834465027){
													if(pX[5] <= 33.5){
														if(pX[4] <= 0.02850000001490116){
															if(pX[3] <= 1.25){
																return 3;
															} else {
																return 4;
															}
														} else {
															if(pX[6] <= 126.0){
																if(pX[9] <= 0.5349999964237213){
																	return 3;
																} else {
																	if(pX[8] <= 3.334999918937683){
																		return 2;
																	} else {
																		return 3;
																	}
																}
															} else {
																if(pX[0] <= 6.299999952316284){
																	return 4;
																} else {
																	return 2;
																}
															}
														}
													} else {
														if(pX[7] <= 0.989454984664917){
															return 3;
														} else {
															if(pX[8] <= 3.2300000190734863){
																return 3;
															} else {
																if(pX[1] <= 0.19500000029802322){
																	if(pX[4] <= 0.03849999979138374){
																		return 4;
																	} else {
																		return 2;
																	}
																} else {
																	return 4;
																}
															}
														}
													}
												} else {
													if(pX[1] <= 0.16499999910593033){
														if(pX[10] <= 11.799999713897705){
															return 2;
														} else {
															return 4;
														}
													} else {
														if(pX[2] <= 0.5499999821186066){
															if(pX[6] <= 87.0){
																return 4;
															} else {
																if(pX[3] <= 2.399999976158142){
																	return 3;
																} else {
																	if(pX[9] <= 0.5449999868869781){
																		return 3;
																	} else {
																		return 4;
																	}
																}
															}
														} else {
															return 4;
														}
													}
												}
											} else {
												return 3;
											}
										} else {
											if(pX[2] <= 0.2750000059604645){
												if(pX[9] <= 0.35500000417232513){
													return 4;
												} else {
													if(pX[7] <= 0.9917999804019928){
														return 4;
													} else {
														return 3;
													}
												}
											} else {
												if(pX[6] <= 86.5){
													return 3;
												} else {
													if(pX[1] <= 0.1850000023841858){
														if(pX[0] <= 6.150000095367432){
															return 3;
														} else {
															return 4;
														}
													} else {
														if(pX[2] <= 0.3449999988079071){
															return 4;
														} else {
															if(pX[10] <= 12.449999809265137){
																return 4;
															} else {
																if(pX[6] <= 117.0){
																	return 5;
																} else {
																	return 3;
																}
															}
														}
													}
												}
											}
										}
									}
								} else {
									if(pX[10] <= 10.949999809265137){
										if(pX[5] <= 37.0){
											if(pX[2] <= 0.4650000184774399){
												return 3;
											} else {
												return 2;
											}
										} else {
											if(pX[9] <= 0.41499999165534973){
												return 2;
											} else {
												return 4;
											}
										}
									} else {
										if(pX[3] <= 11.75){
											if(pX[10] <= 11.650000095367432){
												return 3;
											} else {
												if(pX[0] <= 6.0){
													return 3;
												} else {
													return 5;
												}
											}
										} else {
											return 4;
										}
									}
								}
							} else {
								if(pX[0] <= 5.049999952316284){
									return 2;
								} else {
									if(pX[9] <= 0.45499999821186066){
										if(pX[10] <= 11.949999809265137){
											if(pX[3] <= 3.0){
												if(pX[4] <= 0.045500000938773155){
													return 3;
												} else {
													return 2;
												}
											} else {
												if(pX[0] <= 6.25){
													return 3;
												} else {
													if(pX[3] <= 9.549999952316284){
														return 3;
													} else {
														if(pX[3] <= 12.25){
															return 2;
														} else {
															return 3;
														}
													}
												}
											}
										} else {
											return 2;
										}
									} else {
										if(pX[7] <= 0.9916900098323822){
											if(pX[7] <= 0.9914200007915497){
												if(pX[5] <= 26.0){
													return 4;
												} else {
													if(pX[4] <= 0.04749999940395355){
														if(pX[0] <= 5.799999952316284){
															return 4;
														} else {
															return 3;
														}
													} else {
														return 3;
													}
												}
											} else {
												return 4;
											}
										} else {
											if(pX[6] <= 140.0){
												if(pX[3] <= 3.6999999284744263){
													return 3;
												} else {
													if(pX[8] <= 3.2549999952316284){
														return 3;
													} else {
														return 2;
													}
												}
											} else {
												return 3;
											}
										}
									}
								}
							}
						} else {
							if(pX[2] <= 0.41499999165534973){
								if(pX[8] <= 3.024999976158142){
									if(pX[6] <= 198.5){
										if(pX[2] <= 0.29500000178813934){
											return 3;
										} else {
											if(pX[10] <= 12.050000190734863){
												if(pX[1] <= 0.2849999964237213){
													if(pX[2] <= 0.3999999910593033){
														if(pX[6] <= 119.5){
															return 3;
														} else {
															if(pX[6] <= 122.0){
																return 5;
															} else {
																return 3;
															}
														}
													} else {
														return 2;
													}
												} else {
													if(pX[1] <= 0.3799999952316284){
														return 4;
													} else {
														return 3;
													}
												}
											} else {
												if(pX[5] <= 30.0){
													if(pX[9] <= 0.4599999934434891){
														return 3;
													} else {
														return 4;
													}
												} else {
													if(pX[1] <= 0.36500000953674316){
														if(pX[5] <= 35.5){
															if(pX[8] <= 2.965000033378601){
																return 2;
															} else {
																return 5;
															}
														} else {
															return 5;
														}
													} else {
														return 3;
													}
												}
											}
										}
									} else {
										return 0;
									}
								} else {
									if(pX[10] <= 11.75){
										if(pX[4] <= 0.042500000447034836){
											if(pX[2] <= 0.3449999988079071){
												if(pX[7] <= 0.9940249919891357){
													if(pX[6] <= 98.5){
														if(pX[2] <= 0.24499999731779099){
															return 2;
														} else {
															return 3;
														}
													} else {
														if(pX[6] <= 157.0){
															if(pX[9] <= 0.38499999046325684){
																if(pX[1] <= 0.2150000035762787){
																	return 3;
																} else {
																	if(pX[10] <= 11.099999904632568){
																		return 2;
																	} else {
																		return 5;
																	}
																}
															} else {
																if(pX[7] <= 0.9936250150203705){
																	if(pX[8] <= 3.284999966621399){
																		if(pX[5] <= 31.5){
																			if(pX[3] <= 6.149999797344208){
																				return 3;
																			} else {
																				return 4;
																			}
																		} else {
																			if(pX[7] <= 0.9925999939441681){
																				return 4;
																			} else {
																				return 3;
																			}
																		}
																	} else {
																		if(pX[4] <= 0.02850000001490116){
																			if(pX[9] <= 0.4699999988079071){
																				return 2;
																			} else {
																				if(pX[0] <= 6.6499998569488525){
																					return 3;
																				} else {
																					return 4;
																				}
																			}
																		} else {
																			if(pX[0] <= 7.1000001430511475){
																				if(pX[4] <= 0.03399999998509884){
																					if(pX[6] <= 133.0){
																						return 3;
																					} else {
																						return 4;
																					}
																				} else {
																					if(pX[2] <= 0.32999999821186066){
																						return 4;
																					} else {
																						return 5;
																					}
																				}
																			} else {
																				if(pX[2] <= 0.2749999910593033){
																					return 3;
																				} else {
																					return 5;
																				}
																			}
																		}
																	}
																} else {
																	return 3;
																}
															}
														} else {
															if(pX[6] <= 178.5){
																return 3;
															} else {
																return 2;
															}
														}
													}
												} else {
													if(pX[7] <= 0.9960000216960907){
														if(pX[6] <= 132.0){
															return 4;
														} else {
															if(pX[5] <= 65.0){
																if(pX[3] <= 12.5){
																	if(pX[9] <= 0.4450000077486038){
																		return 4;
																	} else {
																		if(pX[4] <= 0.030500000342726707){
																			return 3;
																		} else {
																			return 4;
																		}
																	}
																} else {
																	return 3;
																}
															} else {
																return 3;
															}
														}
													} else {
														if(pX[6] <= 147.5){
															return 4;
														} else {
															return 2;
														}
													}
												}
											} else {
												if(pX[5] <= 42.5){
													if(pX[6] <= 102.5){
														if(pX[3] <= 1.25){
															return 3;
														} else {
															if(pX[1] <= 0.24499999731779099){
																if(pX[3] <= 5.299999952316284){
																	return 4;
																} else {
																	return 3;
																}
															} else {
																return 3;
															}
														}
													} else {
														if(pX[2] <= 0.375){
															return 3;
														} else {
															if(pX[0] <= 6.700000047683716){
																return 4;
															} else {
																if(pX[8] <= 3.1750000715255737){
																	if(pX[6] <= 118.5){
																		return 2;
																	} else {
																		if(pX[8] <= 3.084999918937683){
																			return 1;
																		} else {
																			return 3;
																		}
																	}
																} else {
																	return 3;
																}
															}
														}
													}
												} else {
													if(pX[2] <= 0.36500000953674316){
														return 2;
													} else {
														if(pX[3] <= 7.599999904632568){
															return 3;
														} else {
															return 2;
														}
													}
												}
											}
										} else {
											if(pX[9] <= 0.5550000071525574){
												if(pX[5] <= 56.0){
													if(pX[7] <= 0.9916700124740601){
														if(pX[0] <= 6.950000047683716){
															if(pX[2] <= 0.3199999928474426){
																return 2;
															} else {
																return 4;
															}
														} else {
															if(pX[2] <= 0.3349999934434891){
																return 3;
															} else {
																if(pX[6] <= 123.0){
																	return 3;
																} else {
																	return 2;
																}
															}
														}
													} else {
														if(pX[1] <= 0.42000000178813934){
															if(pX[5] <= 41.5){
																if(pX[2] <= 0.3149999976158142){
																	if(pX[2] <= 0.26500000059604645){
																		return 2;
																	} else {
																		if(pX[7] <= 0.9939500093460083){
																			return 3;
																		} else {
																			return 5;
																		}
																	}
																} else {
																	if(pX[10] <= 11.050000190734863){
																		if(pX[10] <= 10.75){
																			if(pX[2] <= 0.3349999934434891){
																				return 4;
																			} else {
																				return 2;
																			}
																		} else {
																			if(pX[9] <= 0.4099999964237213){
																				return 2;
																			} else {
																				return 4;
																			}
																		}
																	} else {
																		if(pX[2] <= 0.32500000298023224){
																			if(pX[9] <= 0.375){
																				return 5;
																			} else {
																				return 2;
																			}
																		} else {
																			return 2;
																		}
																	}
																}
															} else {
																if(pX[6] <= 147.5){
																	if(pX[5] <= 44.0){
																		return 5;
																	} else {
																		return 4;
																	}
																} else {
																	if(pX[9] <= 0.4399999976158142){
																		return 3;
																	} else {
																		return 5;
																	}
																}
															}
														} else {
															return 4;
														}
													}
												} else {
													if(pX[2] <= 0.3100000023841858){
														return 3;
													} else {
														return 2;
													}
												}
											} else {
												if(pX[5] <= 40.5){
													if(pX[0] <= 6.6499998569488525){
														return 4;
													} else {
														if(pX[8] <= 3.134999990463257){
															if(pX[1] <= 0.380000002682209){
																return 4;
															} else {
																return 0;
															}
														} else {
															if(pX[2] <= 0.32999999821186066){
																if(pX[4] <= 0.05000000074505806){
																	if(pX[1] <= 0.24000000208616257){
																		return 5;
																	} else {
																		return 2;
																	}
																} else {
																	if(pX[5] <= 26.5){
																		return 2;
																	} else {
																		return 3;
																	}
																}
															} else {
																return 4;
															}
														}
													}
												} else {
													if(pX[10] <= 11.400000095367432){
														return 3;
													} else {
														return 5;
													}
												}
											}
										}
									} else {
										if(pX[9] <= 0.375){
											if(pX[8] <= 3.15500009059906){
												if(pX[10] <= 12.099999904632568){
													return 4;
												} else {
													if(pX[3] <= 5.099999904632568){
														return 3;
													} else {
														return 5;
													}
												}
											} else {
												if(pX[2] <= 0.2849999964237213){
													return 3;
												} else {
													if(pX[1] <= 0.30000000447034836){
														return 3;
													} else {
														return 2;
													}
												}
											}
										} else {
											if(pX[3] <= 4.900000095367432){
												if(pX[4] <= 0.02650000061839819){
													if(pX[4] <= 0.022499999962747097){
														return 6;
													} else {
														return 3;
													}
												} else {
													if(pX[6] <= 161.5){
														if(pX[9] <= 0.6349999904632568){
															if(pX[4] <= 0.05949999950826168){
																if(pX[7] <= 0.9908249974250793){
																	if(pX[6] <= 101.0){
																		return 4;
																	} else {
																		if(pX[3] <= 2.5){
																			if(pX[6] <= 125.0){
																				return 5;
																			} else {
																				if(pX[1] <= 0.26499999314546585){
																					return 6;
																				} else {
																					return 3;
																				}
																			}
																		} else {
																			if(pX[8] <= 3.1600000858306885){
																				return 4;
																			} else {
																				if(pX[8] <= 3.215000033378601){
																					return 3;
																				} else {
																					return 2;
																				}
																			}
																		}
																	}
																} else {
																	if(pX[8] <= 3.3700000047683716){
																		return 4;
																	} else {
																		return 5;
																	}
																}
															} else {
																return 5;
															}
														} else {
															if(pX[9] <= 0.6550000011920929){
																return 3;
															} else {
																if(pX[5] <= 34.0){
																	return 2;
																} else {
																	return 4;
																}
															}
														}
													} else {
														if(pX[9] <= 0.39499999582767487){
															return 4;
														} else {
															if(pX[2] <= 0.3100000023841858){
																return 3;
															} else {
																return 5;
															}
														}
													}
												}
											} else {
												if(pX[2] <= 0.3800000101327896){
													if(pX[8] <= 3.1450001001358032){
														if(pX[3] <= 5.25){
															return 4;
														} else {
															if(pX[1] <= 0.4599999934434891){
																if(pX[3] <= 10.800000190734863){
																	return 3;
																} else {
																	if(pX[4] <= 0.03349999990314245){
																		return 2;
																	} else {
																		return 3;
																	}
																}
															} else {
																return 5;
															}
														}
													} else {
														if(pX[7] <= 0.9912649989128113){
															return 3;
														} else {
															if(pX[2] <= 0.3500000089406967){
																if(pX[1] <= 0.26500000059604645){
																	if(pX[10] <= 11.900000095367432){
																		return 4;
																	} else {
																		return 3;
																	}
																} else {
																	return 4;
																}
															} else {
																return 5;
															}
														}
													}
												} else {
													return 4;
												}
											}
										}
									}
								}
							} else {
								if(pX[8] <= 3.0149999856948853){
									if(pX[1] <= 0.3050000071525574){
										if(pX[0] <= 8.950000047683716){
											if(pX[2] <= 0.4750000089406967){
												if(pX[9] <= 0.45499999821186066){
													return 2;
												} else {
													return 3;
												}
											} else {
												return 4;
											}
										} else {
											return 5;
										}
									} else {
										return 2;
									}
								} else {
									if(pX[6] <= 96.0){
										if(pX[3] <= 2.600000023841858){
											if(pX[0] <= 8.599999904632568){
												return 2;
											} else {
												return 3;
											}
										} else {
											return 4;
										}
									} else {
										if(pX[1] <= 0.4650000035762787){
											if(pX[6] <= 180.5){
												if(pX[1] <= 0.24499999731779099){
													if(pX[8] <= 3.3399999141693115){
														if(pX[0] <= 8.550000190734863){
															return 3;
														} else {
															if(pX[7] <= 0.9921500086784363){
																return 3;
															} else {
																return 4;
															}
														}
													} else {
														if(pX[7] <= 0.9927999973297119){
															return 2;
														} else {
															return 3;
														}
													}
												} else {
													if(pX[3] <= 2.75){
														if(pX[7] <= 0.9896500110626221){
															return 3;
														} else {
															if(pX[7] <= 0.9918999969959259){
																if(pX[10] <= 12.349999904632568){
																	return 4;
																} else {
																	return 3;
																}
															} else {
																return 3;
															}
														}
													} else {
														if(pX[8] <= 3.325000047683716){
															return 3;
														} else {
															if(pX[7] <= 0.9944000244140625){
																return 5;
															} else {
																return 4;
															}
														}
													}
												}
											} else {
												if(pX[8] <= 3.165000081062317){
													if(pX[3] <= 8.174999713897705){
														return 3;
													} else {
														return 5;
													}
												} else {
													return 4;
												}
											}
										} else {
											if(pX[0] <= 7.500000238418579){
												return 3;
											} else {
												return 2;
											}
										}
									}
								}
							}
						}
					}
				} else {
					if(pX[1] <= 0.375){
						if(pX[6] <= 54.0){
							if(pX[10] <= 10.75){
								return 3;
							} else {
								if(pX[1] <= 0.2750000059604645){
									if(pX[9] <= 0.824999988079071){
										if(pX[9] <= 0.7049999833106995){
											if(pX[1] <= 0.22500000894069672){
												return 2;
											} else {
												return 3;
											}
										} else {
											return 4;
										}
									} else {
										if(pX[9] <= 0.9799999892711639){
											return 3;
										} else {
											if(pX[9] <= 1.0399999618530273){
												return 4;
											} else {
												return 3;
											}
										}
									}
								} else {
									if(pX[9] <= 0.6949999928474426){
										return 2;
									} else {
										if(pX[6] <= 45.5){
											if(pX[10] <= 12.25){
												return 4;
											} else {
												if(pX[6] <= 26.0){
													return 4;
												} else {
													return 3;
												}
											}
										} else {
											if(pX[5] <= 23.0){
												return 3;
											} else {
												return 4;
											}
										}
									}
								}
							}
						} else {
							if(pX[6] <= 78.5){
								if(pX[2] <= 0.47999998927116394){
									if(pX[9] <= 0.824999988079071){
										return 3;
									} else {
										if(pX[6] <= 67.0){
											return 5;
										} else {
											if(pX[7] <= 0.9948199987411499){
												return 2;
											} else {
												return 4;
											}
										}
									}
								} else {
									return 2;
								}
							} else {
								if(pX[5] <= 12.5){
									if(pX[7] <= 0.9923799932003021){
										return 2;
									} else {
										if(pX[1] <= 0.24000000208616257){
											return 3;
										} else {
											return 2;
										}
									}
								} else {
									if(pX[0] <= 6.549999952316284){
										if(pX[7] <= 0.9896699786186218){
											return 3;
										} else {
											if(pX[3] <= 4.799999952316284){
												if(pX[9] <= 0.8949999809265137){
													return 4;
												} else {
													if(pX[7] <= 0.9899300038814545){
														return 4;
													} else {
														return 5;
													}
												}
											} else {
												return 3;
											}
										}
									} else {
										if(pX[9] <= 0.7150000035762787){
											if(pX[6] <= 121.0){
												return 4;
											} else {
												return 5;
											}
										} else {
											if(pX[2] <= 0.26999999582767487){
												return 4;
											} else {
												if(pX[5] <= 31.5){
													if(pX[6] <= 112.5){
														if(pX[2] <= 0.3500000089406967){
															return 4;
														} else {
															return 5;
														}
													} else {
														if(pX[7] <= 0.9925500154495239){
															if(pX[3] <= 1.899999976158142){
																return 3;
															} else {
																return 4;
															}
														} else {
															return 4;
														}
													}
												} else {
													return 3;
												}
											}
										}
									}
								}
							}
						}
					} else {
						if(pX[9] <= 0.8349999785423279){
							if(pX[4] <= 0.0729999989271164){
								if(pX[1] <= 0.4050000011920929){
									return 5;
								} else {
									if(pX[6] <= 27.0){
										return 4;
									} else {
										if(pX[3] <= 2.5){
											if(pX[7] <= 0.9956649839878082){
												if(pX[10] <= 11.0){
													return 1;
												} else {
													return 2;
												}
											} else {
												return 3;
											}
										} else {
											return 4;
										}
									}
								}
							} else {
								if(pX[3] <= 3.9999998807907104){
									if(pX[9] <= 0.7350000143051147){
										if(pX[8] <= 3.2350000143051147){
											return 3;
										} else {
											if(pX[1] <= 0.550000011920929){
												if(pX[1] <= 0.4449999928474426){
													return 3;
												} else {
													return 2;
												}
											} else {
												return 4;
											}
										}
									} else {
										return 3;
									}
								} else {
									if(pX[3] <= 4.25){
										return 2;
									} else {
										if(pX[3] <= 4.400000095367432){
											return 3;
										} else {
											return 2;
										}
									}
								}
							}
						} else {
							if(pX[1] <= 0.5250000059604645){
								return 3;
							} else {
								return 2;
							}
						}
					}
				}
			}
		} else {
			if(pX[7] <= 0.9954000115394592){
				if(pX[5] <= 37.5){
					if(pX[9] <= 0.6349999904632568){
						if(pX[4] <= 0.04150000028312206){
							if(pX[1] <= 0.5149999856948853){
								if(pX[0] <= 5.549999952316284){
									if(pX[10] <= 12.900000095367432){
										return 3;
									} else {
										return 5;
									}
								} else {
									if(pX[3] <= 4.6499998569488525){
										if(pX[2] <= 0.22999999672174454){
											return 4;
										} else {
											if(pX[10] <= 13.449999809265137){
												if(pX[7] <= 0.9886650145053864){
													return 3;
												} else {
													if(pX[4] <= 0.01850000023841858){
														return 2;
													} else {
														if(pX[0] <= 6.049999952316284){
															if(pX[8] <= 3.1799999475479126){
																return 4;
															} else {
																return 3;
															}
														} else {
															if(pX[2] <= 0.48499999940395355){
																if(pX[8] <= 3.0649999380111694){
																	return 3;
																} else {
																	if(pX[3] <= 3.350000023841858){
																		if(pX[3] <= 1.25){
																			if(pX[7] <= 0.9889799952507019){
																				return 5;
																			} else {
																				return 4;
																			}
																		} else {
																			if(pX[7] <= 0.9898499846458435){
																				if(pX[4] <= 0.03749999962747097){
																					return 4;
																				} else {
																					if(pX[10] <= 13.0){
																						return 3;
																					} else {
																						return 4;
																					}
																				}
																			} else {
																				if(pX[0] <= 6.700000047683716){
																					return 3;
																				} else {
																					if(pX[7] <= 0.9904550015926361){
																						if(pX[3] <= 2.299999952316284){
																							return 3;
																						} else {
																							return 5;
																						}
																					} else {
																						return 4;
																					}
																				}
																			}
																		}
																	} else {
																		if(pX[4] <= 0.03500000014901161){
																			if(pX[10] <= 12.650000095367432){
																				if(pX[2] <= 0.35500000417232513){
																					return 5;
																				} else {
																					return 0;
																				}
																			} else {
																				return 3;
																			}
																		} else {
																			return 5;
																		}
																	}
																}
															} else {
																if(pX[6] <= 117.5){
																	return 6;
																} else {
																	return 3;
																}
															}
														}
													}
												}
											} else {
												return 4;
											}
										}
									} else {
										if(pX[0] <= 8.25){
											if(pX[10] <= 12.650000095367432){
												if(pX[4] <= 0.026000000536441803){
													if(pX[3] <= 6.049999952316284){
														return 5;
													} else {
														return 3;
													}
												} else {
													return 4;
												}
											} else {
												return 4;
											}
										} else {
											return 3;
										}
									}
								}
							} else {
								if(pX[5] <= 24.5){
									if(pX[3] <= 1.300000011920929){
										return 1;
									} else {
										return 3;
									}
								} else {
									return 5;
								}
							}
						} else {
							if(pX[0] <= 5.099999904632568){
								return 1;
							} else {
								if(pX[4] <= 0.0989999994635582){
									if(pX[8] <= 3.34499990940094){
										if(pX[2] <= 0.4050000011920929){
											if(pX[9] <= 0.3500000089406967){
												if(pX[6] <= 89.5){
													return 5;
												} else {
													return 4;
												}
											} else {
												if(pX[1] <= 0.4675000011920929){
													if(pX[6] <= 134.5){
														return 3;
													} else {
														if(pX[9] <= 0.510000005364418){
															if(pX[3] <= 2.299999952316284){
																return 4;
															} else {
																return 3;
															}
														} else {
															return 3;
														}
													}
												} else {
													if(pX[9] <= 0.5599999725818634){
														return 4;
													} else {
														return 3;
													}
												}
											}
										} else {
											return 2;
										}
									} else {
										if(pX[2] <= 0.29999999701976776){
											if(pX[0] <= 5.700000047683716){
												return 2;
											} else {
												if(pX[6] <= 53.5){
													if(pX[7] <= 0.9924200177192688){
														return 3;
													} else {
														return 2;
													}
												} else {
													return 3;
												}
											}
										} else {
											if(pX[9] <= 0.5150000005960464){
												return 5;
											} else {
												return 4;
											}
										}
									}
								} else {
									return 2;
								}
							}
						}
					} else {
						if(pX[3] <= 10.450000286102295){
							if(pX[9] <= 0.824999988079071){
								if(pX[0] <= 7.950000047683716){
									if(pX[4] <= 0.054999999701976776){
										if(pX[0] <= 7.299999952316284){
											if(pX[7] <= 0.9919599890708923){
												if(pX[2] <= 0.3999999910593033){
													if(pX[9] <= 0.7849999964237213){
														if(pX[4] <= 0.027999999932944775){
															if(pX[5] <= 28.5){
																return 5;
															} else {
																return 4;
															}
														} else {
															return 4;
														}
													} else {
														if(pX[2] <= 0.014999999664723873){
															return 3;
														} else {
															return 5;
														}
													}
												} else {
													if(pX[8] <= 3.3550000190734863){
														return 1;
													} else {
														return 3;
													}
												}
											} else {
												return 3;
											}
										} else {
											return 3;
										}
									} else {
										if(pX[6] <= 43.5){
											if(pX[8] <= 3.2699999809265137){
												return 5;
											} else {
												return 4;
											}
										} else {
											return 5;
										}
									}
								} else {
									if(pX[9] <= 0.7800000011920929){
										return 4;
									} else {
										if(pX[6] <= 21.5){
											return 3;
										} else {
											return 4;
										}
									}
								}
							} else {
								return 4;
							}
						} else {
							return 5;
						}
					}
				} else {
					if(pX[4] <= 0.038999998942017555){
						if(pX[1] <= 0.26500000059604645){
							if(pX[8] <= 3.334999918937683){
								if(pX[0] <= 7.450000047683716){
									if(pX[7] <= 0.9889899790287018){
										return 3;
									} else {
										return 4;
									}
								} else {
									if(pX[9] <= 0.5900000035762787){
										return 3;
									} else {
										return 5;
									}
								}
							} else {
								if(pX[10] <= 12.799999713897705){
									return 3;
								} else {
									return 5;
								}
							}
						} else {
							if(pX[9] <= 0.36500000953674316){
								if(pX[7] <= 0.9892299771308899){
									return 4;
								} else {
									if(pX[6] <= 135.0){
										return 6;
									} else {
										return 5;
									}
								}
							} else {
								if(pX[7] <= 0.9876599907875061){
									return 5;
								} else {
									if(pX[8] <= 3.25){
										if(pX[0] <= 5.8500001430511475){
											return 5;
										} else {
											if(pX[8] <= 3.2350000143051147){
												if(pX[5] <= 38.5){
													if(pX[6] <= 122.0){
														return 4;
													} else {
														return 3;
													}
												} else {
													return 4;
												}
											} else {
												return 5;
											}
										}
									} else {
										return 4;
									}
								}
							}
						}
					} else {
						if(pX[7] <= 0.9893400073051453){
							return 5;
						} else {
							return 3;
						}
					}
				}
			} else {
				if(pX[5] <= 13.5){
					if(pX[0] <= 11.349999904632568){
						if(pX[4] <= 0.10000000149011612){
							return 5;
						} else {
							return 3;
						}
					} else {
						return 3;
					}
				} else {
					if(pX[2] <= 0.3500000014901161){
						return 3;
					} else {
						return 5;
					}
				}
			}
		}
	}
}
unsigned int LLVMTAStandardIfTree_predict4(float const pX[11]){
	if(pX[4] <= 0.04150000028312206){
		if(pX[5] <= 10.5){
			if(pX[10] <= 10.949999809265137){
				if(pX[2] <= 0.32500000298023224){
					if(pX[8] <= 3.5){
						return 2;
					} else {
						return 3;
					}
				} else {
					if(pX[2] <= 0.5049999952316284){
						if(pX[9] <= 0.2849999964237213){
							return 0;
						} else {
							if(pX[0] <= 7.25){
								return 3;
							} else {
								if(pX[3] <= 5.5){
									if(pX[3] <= 3.2500000596046448){
										return 1;
									} else {
										return 3;
									}
								} else {
									return 2;
								}
							}
						}
					} else {
						if(pX[1] <= 0.19999999552965164){
							return 1;
						} else {
							return 2;
						}
					}
				}
			} else {
				if(pX[3] <= 1.274999976158142){
					if(pX[2] <= 0.29500000178813934){
						return 1;
					} else {
						if(pX[9] <= 0.4349999874830246){
							if(pX[1] <= 0.2749999985098839){
								return 3;
							} else {
								return 1;
							}
						} else {
							return 2;
						}
					}
				} else {
					if(pX[6] <= 54.0){
						if(pX[10] <= 12.449999809265137){
							return 3;
						} else {
							if(pX[8] <= 3.1299999952316284){
								if(pX[5] <= 6.5){
									return 1;
								} else {
									return 3;
								}
							} else {
								if(pX[6] <= 26.5){
									if(pX[7] <= 0.992680013179779){
										return 0;
									} else {
										return 4;
									}
								} else {
									return 4;
								}
							}
						}
					} else {
						if(pX[9] <= 0.4350000023841858){
							if(pX[10] <= 11.099999904632568){
								return 4;
							} else {
								if(pX[1] <= 0.3449999988079071){
									if(pX[1] <= 0.2500000074505806){
										return 3;
									} else {
										if(pX[10] <= 12.099999904632568){
											if(pX[9] <= 0.33500000834465027){
												return 1;
											} else {
												return 2;
											}
										} else {
											return 2;
										}
									}
								} else {
									return 3;
								}
							}
						} else {
							if(pX[3] <= 7.025000095367432){
								if(pX[1] <= 0.5099999904632568){
									if(pX[4] <= 0.03749999962747097){
										return 2;
									} else {
										return 3;
									}
								} else {
									return 5;
								}
							} else {
								if(pX[5] <= 8.5){
									return 5;
								} else {
									return 1;
								}
							}
						}
					}
				}
			}
		} else {
			if(pX[7] <= 0.9916900098323822){
				if(pX[2] <= 0.24499999731779099){
					if(pX[9] <= 0.375){
						if(pX[3] <= 1.699999988079071){
							if(pX[6] <= 101.0){
								return 2;
							} else {
								if(pX[4] <= 0.026499999687075615){
									return 4;
								} else {
									return 5;
								}
							}
						} else {
							if(pX[2] <= 0.23499999940395355){
								return 3;
							} else {
								return 2;
							}
						}
					} else {
						if(pX[3] <= 1.449999988079071){
							if(pX[8] <= 3.3600000143051147){
								if(pX[6] <= 77.5){
									return 2;
								} else {
									if(pX[1] <= 0.4999999850988388){
										return 3;
									} else {
										return 1;
									}
								}
							} else {
								return 4;
							}
						} else {
							if(pX[7] <= 0.9887199997901917){
								if(pX[2] <= 0.17000000178813934){
									return 5;
								} else {
									if(pX[9] <= 0.6049999892711639){
										return 5;
									} else {
										return 4;
									}
								}
							} else {
								if(pX[0] <= 5.3500001430511475){
									if(pX[6] <= 73.5){
										return 2;
									} else {
										if(pX[9] <= 0.4399999976158142){
											return 4;
										} else {
											return 3;
										}
									}
								} else {
									if(pX[2] <= 0.22500000149011612){
										if(pX[4] <= 0.027500000782310963){
											if(pX[10] <= 12.099999904632568){
												return 4;
											} else {
												if(pX[8] <= 3.365000009536743){
													return 5;
												} else {
													return 4;
												}
											}
										} else {
											return 4;
										}
									} else {
										if(pX[6] <= 108.5){
											if(pX[9] <= 0.5249999910593033){
												return 4;
											} else {
												return 3;
											}
										} else {
											if(pX[5] <= 22.5){
												return 3;
											} else {
												return 4;
											}
										}
									}
								}
							}
						}
					}
				} else {
					if(pX[10] <= 12.550000190734863){
						if(pX[10] <= 9.950000286102295){
							return 2;
						} else {
							if(pX[9] <= 0.8299999833106995){
								if(pX[7] <= 0.990215003490448){
									if(pX[8] <= 3.2450000047683716){
										if(pX[3] <= 2.3000000715255737){
											if(pX[5] <= 32.5){
												if(pX[8] <= 3.0549999475479126){
													if(pX[6] <= 97.0){
														return 3;
													} else {
														if(pX[2] <= 0.3100000023841858){
															return 3;
														} else {
															return 4;
														}
													}
												} else {
													if(pX[1] <= 0.32500000298023224){
														return 3;
													} else {
														if(pX[0] <= 6.099999904632568){
															return 3;
														} else {
															return 5;
														}
													}
												}
											} else {
												if(pX[3] <= 1.800000011920929){
													if(pX[7] <= 0.9898900091648102){
														if(pX[2] <= 0.2750000059604645){
															return 3;
														} else {
															if(pX[2] <= 0.3149999976158142){
																return 4;
															} else {
																if(pX[0] <= 6.799999952316284){
																	if(pX[6] <= 78.5){
																		return 4;
																	} else {
																		return 3;
																	}
																} else {
																	return 4;
																}
															}
														}
													} else {
														return 3;
													}
												} else {
													return 4;
												}
											}
										} else {
											if(pX[6] <= 128.0){
												return 4;
											} else {
												if(pX[7] <= 0.9896849989891052){
													return 5;
												} else {
													return 3;
												}
											}
										}
									} else {
										if(pX[2] <= 0.5249999910593033){
											return 3;
										} else {
											return 4;
										}
									}
								} else {
									if(pX[3] <= 1.3499999642372131){
										if(pX[9] <= 0.45499999821186066){
											if(pX[5] <= 17.5){
												if(pX[8] <= 3.0549999475479126){
													return 5;
												} else {
													return 3;
												}
											} else {
												if(pX[6] <= 65.5){
													return 2;
												} else {
													if(pX[8] <= 3.259999990463257){
														if(pX[2] <= 0.32999999821186066){
															return 3;
														} else {
															if(pX[1] <= 0.3100000023841858){
																if(pX[2] <= 0.35999999940395355){
																	return 4;
																} else {
																	return 2;
																}
															} else {
																return 0;
															}
														}
													} else {
														if(pX[7] <= 0.9907000064849854){
															return 5;
														} else {
															return 4;
														}
													}
												}
											}
										} else {
											if(pX[5] <= 41.5){
												return 3;
											} else {
												if(pX[0] <= 6.450000047683716){
													return 4;
												} else {
													if(pX[1] <= 0.16999999433755875){
														return 5;
													} else {
														return 3;
													}
												}
											}
										}
									} else {
										if(pX[5] <= 27.5){
											if(pX[5] <= 15.5){
												if(pX[8] <= 3.0449999570846558){
													if(pX[8] <= 3.009999990463257){
														return 2;
													} else {
														return 1;
													}
												} else {
													if(pX[9] <= 0.39000000059604645){
														return 4;
													} else {
														if(pX[6] <= 77.0){
															if(pX[6] <= 74.5){
																if(pX[0] <= 6.599999904632568){
																	return 4;
																} else {
																	return 3;
																}
															} else {
																return 5;
															}
														} else {
															if(pX[8] <= 3.125){
																if(pX[7] <= 0.9911900162696838){
																	return 3;
																} else {
																	if(pX[8] <= 3.1049998998641968){
																		return 4;
																	} else {
																		return 2;
																	}
																}
															} else {
																return 3;
															}
														}
													}
												}
											} else {
												if(pX[9] <= 0.5799999833106995){
													if(pX[6] <= 83.5){
														if(pX[1] <= 0.4050000011920929){
															if(pX[1] <= 0.3150000125169754){
																if(pX[6] <= 81.5){
																	if(pX[9] <= 0.45499999821186066){
																		return 3;
																	} else {
																		return 2;
																	}
																} else {
																	return 4;
																}
															} else {
																return 3;
															}
														} else {
															return 4;
														}
													} else {
														if(pX[8] <= 3.3600000143051147){
															if(pX[7] <= 0.9903599917888641){
																return 4;
															} else {
																if(pX[9] <= 0.35500000417232513){
																	if(pX[8] <= 3.1100000143051147){
																		return 3;
																	} else {
																		return 4;
																	}
																} else {
																	if(pX[1] <= 0.17999999970197678){
																		if(pX[2] <= 0.32999999821186066){
																			return 4;
																		} else {
																			return 3;
																		}
																	} else {
																		return 3;
																	}
																}
															}
														} else {
															if(pX[7] <= 0.9912000000476837){
																return 4;
															} else {
																return 3;
															}
														}
													}
												} else {
													if(pX[10] <= 11.75){
														return 4;
													} else {
														if(pX[3] <= 4.1499998569488525){
															if(pX[9] <= 0.6050000190734863){
																return 4;
															} else {
																if(pX[3] <= 2.399999976158142){
																	return 3;
																} else {
																	return 4;
																}
															}
														} else {
															return 3;
														}
													}
												}
											}
										} else {
											if(pX[9] <= 0.7150000035762787){
												if(pX[9] <= 0.5699999928474426){
													if(pX[7] <= 0.9905849993228912){
														if(pX[9] <= 0.42499999701976776){
															if(pX[5] <= 33.0){
																return 4;
															} else {
																if(pX[3] <= 4.099999904632568){
																	return 2;
																} else {
																	return 5;
																}
															}
														} else {
															return 3;
														}
													} else {
														if(pX[8] <= 3.0649999380111694){
															if(pX[3] <= 3.9999998807907104){
																if(pX[4] <= 0.033000001683831215){
																	return 2;
																} else {
																	return 3;
																}
															} else {
																if(pX[7] <= 0.9912350177764893){
																	if(pX[2] <= 0.3149999976158142){
																		return 4;
																	} else {
																		return 5;
																	}
																} else {
																	return 3;
																}
															}
														} else {
															if(pX[9] <= 0.35500000417232513){
																return 3;
															} else {
																if(pX[2] <= 0.3050000071525574){
																	if(pX[7] <= 0.9906699955463409){
																		return 4;
																	} else {
																		if(pX[8] <= 3.1850000619888306){
																			return 4;
																		} else {
																			if(pX[2] <= 0.2750000059604645){
																				return 3;
																			} else {
																				if(pX[8] <= 3.3700000047683716){
																					if(pX[2] <= 0.2900000065565109){
																						return 4;
																					} else {
																						if(pX[9] <= 0.42000000178813934){
																							return 3;
																						} else {
																							return 4;
																						}
																					}
																				} else {
																					return 3;
																				}
																			}
																		}
																	}
																} else {
																	if(pX[6] <= 171.0){
																		if(pX[10] <= 12.400000095367432){
																			if(pX[7] <= 0.991349995136261){
																				return 4;
																			} else {
																				if(pX[1] <= 0.16499999910593033){
																					return 2;
																				} else {
																					return 4;
																				}
																			}
																		} else {
																			return 3;
																		}
																	} else {
																		if(pX[0] <= 5.950000047683716){
																			return 3;
																		} else {
																			return 5;
																		}
																	}
																}
															}
														}
													}
												} else {
													if(pX[5] <= 41.5){
														if(pX[7] <= 0.9916149973869324){
															if(pX[1] <= 0.35500000417232513){
																return 4;
															} else {
																if(pX[5] <= 31.5){
																	return 5;
																} else {
																	return 4;
																}
															}
														} else {
															if(pX[5] <= 32.5){
																return 5;
															} else {
																return 3;
															}
														}
													} else {
														if(pX[8] <= 3.3149999380111694){
															return 3;
														} else {
															return 5;
														}
													}
												}
											} else {
												if(pX[9] <= 0.7949999868869781){
													return 3;
												} else {
													return 4;
												}
											}
										}
									}
								}
							} else {
								if(pX[3] <= 1.6500000357627869){
									return 5;
								} else {
									return 4;
								}
							}
						}
					} else {
						if(pX[0] <= 5.549999952316284){
							if(pX[9] <= 0.4399999976158142){
								if(pX[8] <= 3.2899999618530273){
									return 5;
								} else {
									return 4;
								}
							} else {
								return 5;
							}
						} else {
							if(pX[9] <= 0.38499999046325684){
								if(pX[8] <= 3.1500000953674316){
									if(pX[2] <= 0.3400000035762787){
										if(pX[2] <= 0.26500000059604645){
											return 3;
										} else {
											if(pX[1] <= 0.19500000029802322){
												return 3;
											} else {
												if(pX[6] <= 81.5){
													if(pX[1] <= 0.255000002682209){
														return 4;
													} else {
														return 3;
													}
												} else {
													return 4;
												}
											}
										}
									} else {
										return 5;
									}
								} else {
									if(pX[1] <= 0.2800000011920929){
										if(pX[10] <= 12.75){
											return 3;
										} else {
											if(pX[7] <= 0.9891549944877625){
												return 3;
											} else {
												return 4;
											}
										}
									} else {
										if(pX[1] <= 0.36500000953674316){
											if(pX[4] <= 0.01899999938905239){
												return 6;
											} else {
												if(pX[9] <= 0.3700000047683716){
													return 4;
												} else {
													if(pX[6] <= 135.5){
														return 4;
													} else {
														return 3;
													}
												}
											}
										} else {
											return 3;
										}
									}
								}
							} else {
								if(pX[0] <= 6.8500001430511475){
									if(pX[7] <= 0.9891799986362457){
										if(pX[8] <= 3.024999976158142){
											return 3;
										} else {
											if(pX[3] <= 1.050000011920929){
												return 5;
											} else {
												if(pX[0] <= 6.700000047683716){
													if(pX[10] <= 12.75){
														if(pX[8] <= 3.1049998998641968){
															return 4;
														} else {
															if(pX[4] <= 0.03150000050663948){
																return 4;
															} else {
																return 3;
															}
														}
													} else {
														return 4;
													}
												} else {
													return 3;
												}
											}
										}
									} else {
										if(pX[7] <= 0.9904600083827972){
											if(pX[3] <= 4.549999952316284){
												if(pX[5] <= 36.5){
													if(pX[3] <= 1.899999976158142){
														if(pX[2] <= 0.3149999976158142){
															if(pX[3] <= 1.350000023841858){
																return 1;
															} else {
																return 4;
															}
														} else {
															return 2;
														}
													} else {
														return 3;
													}
												} else {
													if(pX[9] <= 0.5349999964237213){
														if(pX[4] <= 0.03199999965727329){
															return 4;
														} else {
															if(pX[7] <= 0.9896399974822998){
																return 4;
															} else {
																return 3;
															}
														}
													} else {
														return 5;
													}
												}
											} else {
												return 4;
											}
										} else {
											if(pX[9] <= 0.7450000047683716){
												return 4;
											} else {
												return 1;
											}
										}
									}
								} else {
									if(pX[8] <= 3.2699999809265137){
										if(pX[7] <= 0.9908500015735626){
											return 4;
										} else {
											if(pX[7] <= 0.9910500049591064){
												if(pX[4] <= 0.03100000135600567){
													return 3;
												} else {
													return 5;
												}
											} else {
												return 4;
											}
										}
									} else {
										if(pX[10] <= 12.700000286102295){
											return 4;
										} else {
											return 3;
										}
									}
								}
							}
						}
					}
				}
			} else {
				if(pX[6] <= 167.5){
					if(pX[7] <= 0.9924049973487854){
						if(pX[10] <= 11.849999904632568){
							if(pX[3] <= 2.450000047683716){
								if(pX[8] <= 3.1850000619888306){
									if(pX[8] <= 3.0049999952316284){
										if(pX[3] <= 1.300000011920929){
											return 4;
										} else {
											if(pX[0] <= 7.700000047683716){
												return 3;
											} else {
												return 4;
											}
										}
									} else {
										if(pX[0] <= 7.1499998569488525){
											return 2;
										} else {
											if(pX[5] <= 31.5){
												if(pX[9] <= 0.3799999952316284){
													return 3;
												} else {
													return 2;
												}
											} else {
												if(pX[7] <= 0.9918899834156036){
													return 4;
												} else {
													return 3;
												}
											}
										}
									}
								} else {
									if(pX[5] <= 53.0){
										if(pX[0] <= 7.1499998569488525){
											if(pX[5] <= 16.5){
												if(pX[9] <= 0.5){
													if(pX[4] <= 0.032500000670552254){
														return 2;
													} else {
														if(pX[7] <= 0.9921999871730804){
															return 3;
														} else {
															return 2;
														}
													}
												} else {
													if(pX[2] <= 0.375){
														if(pX[6] <= 67.0){
															return 2;
														} else {
															return 4;
														}
													} else {
														return 2;
													}
												}
											} else {
												if(pX[5] <= 38.0){
													if(pX[9] <= 0.5200000107288361){
														if(pX[5] <= 21.0){
															if(pX[7] <= 0.9917899966239929){
																return 3;
															} else {
																if(pX[10] <= 11.149999618530273){
																	return 2;
																} else {
																	return 4;
																}
															}
														} else {
															return 3;
														}
													} else {
														if(pX[7] <= 0.9922400116920471){
															return 4;
														} else {
															return 3;
														}
													}
												} else {
													if(pX[2] <= 0.24000000208616257){
														return 3;
													} else {
														if(pX[7] <= 0.9918099939823151){
															return 4;
														} else {
															return 2;
														}
													}
												}
											}
										} else {
											return 3;
										}
									} else {
										return 2;
									}
								}
							} else {
								if(pX[4] <= 0.02850000001490116){
									if(pX[0] <= 6.3999998569488525){
										if(pX[8] <= 3.459999918937683){
											return 3;
										} else {
											return 5;
										}
									} else {
										if(pX[4] <= 0.0215000007301569){
											return 3;
										} else {
											return 4;
										}
									}
								} else {
									if(pX[6] <= 146.0){
										if(pX[9] <= 0.36500000953674316){
											return 4;
										} else {
											return 3;
										}
									} else {
										return 4;
									}
								}
							}
						} else {
							if(pX[2] <= 0.29500000178813934){
								if(pX[0] <= 6.799999952316284){
									if(pX[4] <= 0.0345000009983778){
										if(pX[9] <= 0.7050000131130219){
											return 3;
										} else {
											if(pX[5] <= 23.0){
												return 3;
											} else {
												return 4;
											}
										}
									} else {
										return 4;
									}
								} else {
									if(pX[8] <= 3.034999966621399){
										if(pX[10] <= 12.199999809265137){
											return 3;
										} else {
											return 2;
										}
									} else {
										return 5;
									}
								}
							} else {
								if(pX[5] <= 54.5){
									if(pX[6] <= 125.5){
										if(pX[8] <= 3.1200000047683716){
											return 3;
										} else {
											if(pX[5] <= 21.0){
												if(pX[0] <= 6.450000047683716){
													return 4;
												} else {
													return 3;
												}
											} else {
												return 4;
											}
										}
									} else {
										return 4;
									}
								} else {
									return 5;
								}
							}
						}
					} else {
						if(pX[1] <= 0.38749998807907104){
							if(pX[8] <= 3.3149999380111694){
								if(pX[7] <= 0.9968249797821045){
									if(pX[3] <= 8.650000095367432){
										if(pX[1] <= 0.33500000834465027){
											if(pX[7] <= 0.9948849976062775){
												if(pX[5] <= 25.0){
													if(pX[1] <= 0.26500000059604645){
														if(pX[4] <= 0.02049999963492155){
															if(pX[9] <= 0.375){
																return 2;
															} else {
																return 4;
															}
														} else {
															if(pX[6] <= 130.0){
																if(pX[2] <= 0.3050000071525574){
																	return 3;
																} else {
																	if(pX[10] <= 11.299999713897705){
																		if(pX[7] <= 0.9941500127315521){
																			if(pX[0] <= 6.5){
																				return 5;
																			} else {
																				return 3;
																			}
																		} else {
																			return 2;
																		}
																	} else {
																		if(pX[10] <= 11.449999809265137){
																			return 4;
																		} else {
																			return 3;
																		}
																	}
																}
															} else {
																if(pX[5] <= 19.5){
																	if(pX[1] <= 0.22499999403953552){
																		return 2;
																	} else {
																		return 3;
																	}
																} else {
																	return 2;
																}
															}
														}
													} else {
														if(pX[9] <= 0.4350000023841858){
															if(pX[3] <= 7.049999952316284){
																return 2;
															} else {
																if(pX[0] <= 6.75){
																	return 3;
																} else {
																	return 2;
																}
															}
														} else {
															if(pX[7] <= 0.9934599995613098){
																return 2;
															} else {
																return 3;
															}
														}
													}
												} else {
													if(pX[2] <= 0.6150000095367432){
														if(pX[9] <= 0.7100000083446503){
															if(pX[7] <= 0.9937749803066254){
																if(pX[8] <= 2.90500009059906){
																	return 2;
																} else {
																	if(pX[3] <= 1.050000011920929){
																		if(pX[7] <= 0.9932999908924103){
																			return 4;
																		} else {
																			return 3;
																		}
																	} else {
																		if(pX[4] <= 0.024500000290572643){
																			if(pX[6] <= 114.5){
																				return 3;
																			} else {
																				return 2;
																			}
																		} else {
																			if(pX[8] <= 3.15500009059906){
																				if(pX[8] <= 3.1450001001358032){
																					if(pX[9] <= 0.5949999988079071){
																						if(pX[9] <= 0.45000000298023224){
																							return 3;
																						} else {
																							if(pX[10] <= 11.199999809265137){
																								return 3;
																							} else {
																								return 4;
																							}
																						}
																					} else {
																						return 1;
																					}
																				} else {
																					return 4;
																				}
																			} else {
																				if(pX[9] <= 0.5349999964237213){
																					return 3;
																				} else {
																					if(pX[6] <= 104.0){
																						if(pX[8] <= 3.200000047683716){
																							return 3;
																						} else {
																							return 4;
																						}
																					} else {
																						return 3;
																					}
																				}
																			}
																		}
																	}
																}
															} else {
																if(pX[3] <= 6.150000095367432){
																	if(pX[3] <= 1.600000023841858){
																		return 4;
																	} else {
																		if(pX[7] <= 0.9945399761199951){
																			return 3;
																		} else {
																			return 4;
																		}
																	}
																} else {
																	if(pX[9] <= 0.39000000059604645){
																		return 2;
																	} else {
																		if(pX[2] <= 0.25){
																			return 2;
																		} else {
																			return 3;
																		}
																	}
																}
															}
														} else {
															if(pX[6] <= 108.0){
																return 3;
															} else {
																if(pX[10] <= 11.5){
																	return 4;
																} else {
																	return 5;
																}
															}
														}
													} else {
														return 2;
													}
												}
											} else {
												if(pX[3] <= 3.2499998807907104){
													return 2;
												} else {
													return 3;
												}
											}
										} else {
											if(pX[4] <= 0.039499999955296516){
												if(pX[9] <= 0.4150000065565109){
													return 2;
												} else {
													return 3;
												}
											} else {
												return 2;
											}
										}
									} else {
										if(pX[1] <= 0.20499999821186066){
											if(pX[1] <= 0.17000000178813934){
												if(pX[10] <= 9.450000286102295){
													return 3;
												} else {
													return 5;
												}
											} else {
												if(pX[6] <= 104.0){
													return 3;
												} else {
													if(pX[7] <= 0.9952099919319153){
														return 4;
													} else {
														if(pX[3] <= 13.849999904632568){
															return 3;
														} else {
															return 4;
														}
													}
												}
											}
										} else {
											if(pX[2] <= 0.29500000178813934){
												if(pX[7] <= 0.9962500035762787){
													if(pX[2] <= 0.22500000149011612){
														return 1;
													} else {
														if(pX[6] <= 76.5){
															return 2;
														} else {
															if(pX[4] <= 0.04000000096857548){
																if(pX[9] <= 0.42000000178813934){
																	return 3;
																} else {
																	if(pX[7] <= 0.9938749969005585){
																		return 3;
																	} else {
																		if(pX[6] <= 126.0){
																			return 3;
																		} else {
																			return 4;
																		}
																	}
																}
															} else {
																if(pX[7] <= 0.9935850203037262){
																	return 4;
																} else {
																	return 3;
																}
															}
														}
													}
												} else {
													if(pX[2] <= 0.14499999955296516){
														return 3;
													} else {
														return 2;
													}
												}
											} else {
												if(pX[7] <= 0.9928550124168396){
													return 4;
												} else {
													if(pX[7] <= 0.9947899878025055){
														if(pX[7] <= 0.9937500059604645){
															if(pX[2] <= 0.3100000023841858){
																return 2;
															} else {
																if(pX[6] <= 97.0){
																	return 0;
																} else {
																	if(pX[6] <= 130.0){
																		return 4;
																	} else {
																		return 3;
																	}
																}
															}
														} else {
															if(pX[1] <= 0.23499999940395355){
																if(pX[7] <= 0.9942300021648407){
																	return 4;
																} else {
																	return 3;
																}
															} else {
																return 3;
															}
														}
													} else {
														if(pX[10] <= 10.550000190734863){
															if(pX[4] <= 0.039499999955296516){
																if(pX[0] <= 6.700000047683716){
																	return 2;
																} else {
																	return 3;
																}
															} else {
																return 4;
															}
														} else {
															if(pX[0] <= 8.099999904632568){
																return 2;
															} else {
																return 4;
															}
														}
													}
												}
											}
										}
									}
								} else {
									if(pX[0] <= 7.549999952316284){
										if(pX[1] <= 0.26000000536441803){
											if(pX[9] <= 0.42000000178813934){
												if(pX[1] <= 0.24000000208616257){
													return 2;
												} else {
													return 3;
												}
											} else {
												if(pX[8] <= 3.0749999284744263){
													if(pX[3] <= 14.27500057220459){
														return 2;
													} else {
														return 3;
													}
												} else {
													return 3;
												}
											}
										} else {
											if(pX[3] <= 12.599999904632568){
												return 2;
											} else {
												if(pX[10] <= 9.400000095367432){
													return 2;
												} else {
													return 3;
												}
											}
										}
									} else {
										if(pX[6] <= 152.0){
											if(pX[8] <= 3.1200000047683716){
												if(pX[6] <= 126.5){
													return 0;
												} else {
													return 2;
												}
											} else {
												if(pX[7] <= 0.9971299767494202){
													return 6;
												} else {
													return 3;
												}
											}
										} else {
											return 3;
										}
									}
								}
							} else {
								if(pX[10] <= 9.75){
									if(pX[8] <= 3.5299999713897705){
										if(pX[0] <= 4.8999998569488525){
											return 0;
										} else {
											if(pX[5] <= 43.5){
												if(pX[8] <= 3.334999918937683){
													return 2;
												} else {
													return 3;
												}
											} else {
												return 4;
											}
										}
									} else {
										return 2;
									}
								} else {
									if(pX[4] <= 0.03199999965727329){
										if(pX[6] <= 135.5){
											if(pX[2] <= 0.3100000023841858){
												if(pX[0] <= 5.349999904632568){
													return 3;
												} else {
													return 4;
												}
											} else {
												return 2;
											}
										} else {
											return 3;
										}
									} else {
										if(pX[6] <= 138.5){
											if(pX[1] <= 0.23499999940395355){
												if(pX[2] <= 0.29999999701976776){
													return 1;
												} else {
													if(pX[9] <= 0.5150000154972076){
														return 2;
													} else {
														if(pX[10] <= 10.5){
															return 4;
														} else {
															if(pX[5] <= 24.5){
																return 4;
															} else {
																return 3;
															}
														}
													}
												}
											} else {
												if(pX[2] <= 0.26500000059604645){
													if(pX[7] <= 0.9950499832630157){
														if(pX[10] <= 10.25){
															if(pX[5] <= 22.0){
																return 2;
															} else {
																return 4;
															}
														} else {
															return 4;
														}
													} else {
														return 3;
													}
												} else {
													if(pX[9] <= 0.5049999952316284){
														if(pX[7] <= 0.994504988193512){
															if(pX[6] <= 120.5){
																return 3;
															} else {
																return 4;
															}
														} else {
															return 5;
														}
													} else {
														if(pX[8] <= 3.384999990463257){
															return 3;
														} else {
															return 5;
														}
													}
												}
											}
										} else {
											if(pX[5] <= 27.5){
												return 2;
											} else {
												return 4;
											}
										}
									}
								}
							}
						} else {
							if(pX[6] <= 134.5){
								if(pX[3] <= 9.0){
									if(pX[7] <= 0.9925900101661682){
										return 3;
									} else {
										if(pX[6] <= 56.5){
											return 1;
										} else {
											if(pX[3] <= 7.349999904632568){
												if(pX[4] <= 0.03500000014901161){
													if(pX[4] <= 0.03350000083446503){
														return 2;
													} else {
														return 1;
													}
												} else {
													return 2;
												}
											} else {
												if(pX[1] <= 0.48000000417232513){
													return 4;
												} else {
													return 2;
												}
											}
										}
									}
								} else {
									return 3;
								}
							} else {
								if(pX[5] <= 28.0){
									return 5;
								} else {
									if(pX[6] <= 161.5){
										if(pX[3] <= 13.5){
											return 3;
										} else {
											return 4;
										}
									} else {
										return 4;
									}
								}
							}
						}
					}
				} else {
					if(pX[10] <= 10.75){
						if(pX[9] <= 0.35500000417232513){
							return 3;
						} else {
							if(pX[7] <= 1.000285029411316){
								if(pX[6] <= 248.5){
									if(pX[10] <= 8.700000286102295){
										return 1;
									} else {
										if(pX[1] <= 0.39000000059604645){
											if(pX[7] <= 0.9921750128269196){
												return 2;
											} else {
												if(pX[0] <= 7.049999952316284){
													if(pX[8] <= 3.3549998998641968){
														if(pX[7] <= 0.9932500123977661){
															if(pX[3] <= 3.2499998807907104){
																return 3;
															} else {
																return 4;
															}
														} else {
															if(pX[8] <= 3.334999918937683){
																if(pX[7] <= 0.9978750050067902){
																	if(pX[9] <= 0.4650000035762787){
																		if(pX[6] <= 173.0){
																			return 3;
																		} else {
																			if(pX[2] <= 0.17000000178813934){
																				return 3;
																			} else {
																				if(pX[9] <= 0.4350000023841858){
																					return 2;
																				} else {
																					return 0;
																				}
																			}
																		}
																	} else {
																		if(pX[4] <= 0.026999999769032){
																			return 3;
																		} else {
																			if(pX[10] <= 10.25){
																				if(pX[4] <= 0.033000001683831215){
																					if(pX[8] <= 3.125){
																						return 2;
																					} else {
																						if(pX[4] <= 0.03150000050663948){
																							return 2;
																						} else {
																							return 3;
																						}
																					}
																				} else {
																					if(pX[10] <= 9.849999904632568){
																						return 2;
																					} else {
																						if(pX[10] <= 9.949999809265137){
																							return 3;
																						} else {
																							return 2;
																						}
																					}
																				}
																			} else {
																				if(pX[9] <= 0.6200000047683716){
																					return 3;
																				} else {
																					return 2;
																				}
																			}
																		}
																	}
																} else {
																	if(pX[1] <= 0.3150000125169754){
																		return 4;
																	} else {
																		return 3;
																	}
																}
															} else {
																return 3;
															}
														}
													} else {
														return 4;
													}
												} else {
													if(pX[1] <= 0.3500000089406967){
														if(pX[4] <= 0.03749999962747097){
															if(pX[8] <= 3.3350000381469727){
																if(pX[9] <= 0.5249999910593033){
																	return 2;
																} else {
																	return 3;
																}
															} else {
																return 1;
															}
														} else {
															if(pX[8] <= 3.1049998998641968){
																if(pX[4] <= 0.04050000011920929){
																	if(pX[0] <= 7.799999952316284){
																		return 2;
																	} else {
																		if(pX[2] <= 0.42000000178813934){
																			return 3;
																		} else {
																			return 2;
																		}
																	}
																} else {
																	return 2;
																}
															} else {
																if(pX[3] <= 2.899999976158142){
																	return 2;
																} else {
																	if(pX[4] <= 0.04050000011920929){
																		if(pX[2] <= 0.25999999791383743){
																			return 1;
																		} else {
																			return 3;
																		}
																	} else {
																		return 4;
																	}
																}
															}
														}
													} else {
														return 3;
													}
												}
											}
										} else {
											return 2;
										}
									}
								} else {
									if(pX[7] <= 0.9949100017547607){
										if(pX[7] <= 0.9943099915981293){
											return 2;
										} else {
											return 1;
										}
									} else {
										return 3;
									}
								}
							} else {
								return 3;
							}
						}
					} else {
						if(pX[0] <= 8.000000238418579){
							if(pX[2] <= 0.32999999821186066){
								return 3;
							} else {
								if(pX[3] <= 8.299999713897705){
									if(pX[5] <= 20.5){
										return 3;
									} else {
										if(pX[3] <= 7.949999809265137){
											if(pX[0] <= 6.25){
												return 4;
											} else {
												if(pX[0] <= 7.099999904632568){
													return 2;
												} else {
													return 4;
												}
											}
										} else {
											return 3;
										}
									}
								} else {
									return 5;
								}
							}
						} else {
							if(pX[3] <= 9.800000190734863){
								if(pX[5] <= 75.0){
									return 4;
								} else {
									return 0;
								}
							} else {
								return 2;
							}
						}
					}
				}
			}
		}
	} else {
		if(pX[10] <= 10.016666889190674){
			if(pX[8] <= 2.965000033378601){
				if(pX[1] <= 0.20499999821186066){
					if(pX[4] <= 0.05650000087916851){
						if(pX[2] <= 0.26000000536441803){
							return 3;
						} else {
							if(pX[2] <= 0.4650000035762787){
								if(pX[3] <= 7.200000166893005){
									return 3;
								} else {
									return 4;
								}
							} else {
								return 3;
							}
						}
					} else {
						if(pX[8] <= 2.899999976158142){
							return 2;
						} else {
							return 5;
						}
					}
				} else {
					if(pX[3] <= 14.474999904632568){
						if(pX[9] <= 0.574999988079071){
							if(pX[1] <= 0.2149999961256981){
								return 2;
							} else {
								if(pX[1] <= 0.2499999925494194){
									return 3;
								} else {
									if(pX[6] <= 122.5){
										if(pX[9] <= 0.4650000035762787){
											if(pX[4] <= 0.06149999983608723){
												return 2;
											} else {
												return 3;
											}
										} else {
											return 2;
										}
									} else {
										if(pX[3] <= 6.349999785423279){
											if(pX[3] <= 3.649999976158142){
												return 2;
											} else {
												return 3;
											}
										} else {
											return 2;
										}
									}
								}
							}
						} else {
							if(pX[4] <= 0.5120000094175339){
								return 3;
							} else {
								return 1;
							}
						}
					} else {
						if(pX[5] <= 50.5){
							return 2;
						} else {
							if(pX[8] <= 2.940000057220459){
								return 1;
							} else {
								return 3;
							}
						}
					}
				}
			} else {
				if(pX[1] <= 0.23499999940395355){
					if(pX[4] <= 0.07400000095367432){
						if(pX[4] <= 0.05250000022351742){
							if(pX[5] <= 70.5){
								if(pX[10] <= 8.849999904632568){
									if(pX[7] <= 1.0002000331878662){
										if(pX[7] <= 0.9997999966144562){
											if(pX[3] <= 13.450000286102295){
												if(pX[4] <= 0.05049999989569187){
													return 2;
												} else {
													if(pX[5] <= 15.5){
														return 2;
													} else {
														return 4;
													}
												}
											} else {
												return 3;
											}
										} else {
											return 2;
										}
									} else {
										return 4;
									}
								} else {
									if(pX[3] <= 5.849999904632568){
										if(pX[5] <= 19.0){
											return 2;
										} else {
											if(pX[2] <= 0.26000000536441803){
												if(pX[10] <= 9.650000095367432){
													return 2;
												} else {
													if(pX[10] <= 9.949999809265137){
														return 3;
													} else {
														if(pX[0] <= 6.800000190734863){
															return 2;
														} else {
															return 3;
														}
													}
												}
											} else {
												if(pX[10] <= 9.75){
													if(pX[8] <= 3.059999942779541){
														return 2;
													} else {
														if(pX[6] <= 111.0){
															if(pX[5] <= 24.5){
																return 3;
															} else {
																if(pX[1] <= 0.12000000104308128){
																	return 3;
																} else {
																	return 2;
																}
															}
														} else {
															if(pX[0] <= 8.800000190734863){
																return 3;
															} else {
																return 1;
															}
														}
													}
												} else {
													if(pX[2] <= 0.39499999582767487){
														if(pX[0] <= 6.549999952316284){
															return 3;
														} else {
															return 2;
														}
													} else {
														return 4;
													}
												}
											}
										}
									} else {
										if(pX[7] <= 0.9994649887084961){
											if(pX[3] <= 13.799999713897705){
												if(pX[9] <= 0.4749999940395355){
													if(pX[5] <= 31.0){
														if(pX[4] <= 0.048499999567866325){
															return 4;
														} else {
															if(pX[4] <= 0.05049999989569187){
																return 3;
															} else {
																return 4;
															}
														}
													} else {
														if(pX[5] <= 55.5){
															if(pX[1] <= 0.19999999552965164){
																if(pX[2] <= 0.28999999165534973){
																	return 3;
																} else {
																	if(pX[1] <= 0.13499999791383743){
																		return 4;
																	} else {
																		return 2;
																	}
																}
															} else {
																return 2;
															}
														} else {
															return 3;
														}
													}
												} else {
													if(pX[5] <= 56.5){
														if(pX[10] <= 9.050000190734863){
															if(pX[4] <= 0.048500001430511475){
																return 4;
															} else {
																return 2;
															}
														} else {
															if(pX[1] <= 0.22500000149011612){
																if(pX[10] <= 9.949999809265137){
																	return 3;
																} else {
																	if(pX[4] <= 0.04900000058114529){
																		return 2;
																	} else {
																		return 3;
																	}
																}
															} else {
																if(pX[10] <= 9.849999904632568){
																	return 3;
																} else {
																	return 2;
																}
															}
														}
													} else {
														if(pX[5] <= 60.0){
															return 2;
														} else {
															return 3;
														}
													}
												}
											} else {
												return 3;
											}
										} else {
											if(pX[9] <= 0.5049999952316284){
												return 4;
											} else {
												if(pX[1] <= 0.1850000023841858){
													if(pX[4] <= 0.05049999989569187){
														return 4;
													} else {
														return 2;
													}
												} else {
													return 3;
												}
											}
										}
									}
								}
							} else {
								if(pX[0] <= 7.200000047683716){
									return 2;
								} else {
									return 4;
								}
							}
						} else {
							if(pX[8] <= 3.0149999856948853){
								if(pX[4] <= 0.05700000002980232){
									if(pX[7] <= 0.9981500208377838){
										return 2;
									} else {
										return 3;
									}
								} else {
									return 4;
								}
							} else {
								if(pX[6] <= 198.0){
									if(pX[6] <= 134.5){
										if(pX[1] <= 0.22500000149011612){
											if(pX[0] <= 7.25){
												if(pX[9] <= 0.42499999701976776){
													return 3;
												} else {
													if(pX[2] <= 0.2750000059604645){
														return 3;
													} else {
														return 2;
													}
												}
											} else {
												if(pX[7] <= 0.998199999332428){
													return 2;
												} else {
													return 4;
												}
											}
										} else {
											if(pX[7] <= 0.9949299991130829){
												return 2;
											} else {
												return 1;
											}
										}
									} else {
										if(pX[4] <= 0.06250000186264515){
											if(pX[10] <= 9.949999809265137){
												if(pX[9] <= 0.8050000071525574){
													if(pX[8] <= 3.4850000143051147){
														return 3;
													} else {
														if(pX[6] <= 157.0){
															return 4;
														} else {
															return 3;
														}
													}
												} else {
													if(pX[7] <= 0.9997999668121338){
														return 4;
													} else {
														return 3;
													}
												}
											} else {
												if(pX[5] <= 31.5){
													return 3;
												} else {
													return 4;
												}
											}
										} else {
											if(pX[0] <= 6.1499998569488525){
												return 2;
											} else {
												if(pX[10] <= 9.299999713897705){
													return 3;
												} else {
													if(pX[8] <= 3.194999933242798){
														return 3;
													} else {
														return 2;
													}
												}
											}
										}
									}
								} else {
									if(pX[10] <= 9.0){
										if(pX[8] <= 3.290000081062317){
											return 5;
										} else {
											return 2;
										}
									} else {
										if(pX[4] <= 0.05350000038743019){
											if(pX[0] <= 6.650000095367432){
												return 1;
											} else {
												return 4;
											}
										} else {
											if(pX[0] <= 8.399999856948853){
												return 3;
											} else {
												return 2;
											}
										}
									}
								}
							}
						}
					} else {
						if(pX[1] <= 0.17000000178813934){
							if(pX[7] <= 0.9927499890327454){
								return 4;
							} else {
								return 3;
							}
						} else {
							if(pX[0] <= 11.299999952316284){
								if(pX[2] <= 0.23499999940395355){
									if(pX[6] <= 104.5){
										return 3;
									} else {
										return 2;
									}
								} else {
									return 2;
								}
							} else {
								return 4;
							}
						}
					}
				} else {
					if(pX[10] <= 9.849999904632568){
						if(pX[4] <= 0.1705000028014183){
							if(pX[4] <= 0.09750000014901161){
								if(pX[2] <= 0.16499999910593033){
									if(pX[2] <= 0.1249999962747097){
										if(pX[4] <= 0.09650000184774399){
											if(pX[6] <= 25.5){
												if(pX[1] <= 0.6524999737739563){
													if(pX[0] <= 6.549999952316284){
														return 2;
													} else {
														if(pX[5] <= 8.5){
															if(pX[8] <= 3.475000023841858){
																if(pX[5] <= 4.0){
																	return 2;
																} else {
																	return 3;
																}
															} else {
																return 2;
															}
														} else {
															if(pX[0] <= 8.099999904632568){
																return 4;
															} else {
																return 2;
															}
														}
													}
												} else {
													if(pX[1] <= 0.8599999845027924){
														if(pX[4] <= 0.07249999791383743){
															if(pX[5] <= 8.0){
																return 2;
															} else {
																return 1;
															}
														} else {
															return 2;
														}
													} else {
														return 1;
													}
												}
											} else {
												if(pX[5] <= 11.5){
													if(pX[4] <= 0.08800000324845314){
														if(pX[1] <= 0.6049999892711639){
															if(pX[0] <= 8.150000095367432){
																if(pX[1] <= 0.5074999928474426){
																	if(pX[7] <= 0.9941200017929077){
																		return 1;
																	} else {
																		return 2;
																	}
																} else {
																	if(pX[10] <= 9.199999809265137){
																		return 1;
																	} else {
																		return 3;
																	}
																}
															} else {
																return 2;
															}
														} else {
															if(pX[8] <= 3.3550000190734863){
																if(pX[10] <= 9.400000095367432){
																	return 3;
																} else {
																	return 2;
																}
															} else {
																return 2;
															}
														}
													} else {
														if(pX[8] <= 3.5500000715255737){
															return 3;
														} else {
															return 2;
														}
													}
												} else {
													if(pX[6] <= 86.5){
														if(pX[1] <= 0.945000022649765){
															if(pX[1] <= 0.4749999940395355){
																if(pX[8] <= 3.2549999952316284){
																	return 2;
																} else {
																	return 3;
																}
															} else {
																if(pX[2] <= 0.11499999836087227){
																	return 2;
																} else {
																	return 3;
																}
															}
														} else {
															return 0;
														}
													} else {
														if(pX[8] <= 3.409999966621399){
															if(pX[6] <= 103.5){
																if(pX[3] <= 1.0){
																	return 1;
																} else {
																	return 3;
																}
															} else {
																if(pX[6] <= 151.5){
																	return 2;
																} else {
																	if(pX[4] <= 0.06400000117719173){
																		return 2;
																	} else {
																		return 1;
																	}
																}
															}
														} else {
															if(pX[3] <= 2.549999952316284){
																if(pX[4] <= 0.07849999889731407){
																	return 2;
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
										} else {
											return 3;
										}
									} else {
										if(pX[8] <= 3.375){
											if(pX[7] <= 0.9935349822044373){
												return 3;
											} else {
												if(pX[7] <= 0.994049996137619){
													if(pX[1] <= 0.45500001311302185){
														return 2;
													} else {
														return 3;
													}
												} else {
													return 2;
												}
											}
										} else {
											if(pX[10] <= 9.199999809265137){
												return 1;
											} else {
												if(pX[4] <= 0.08049999922513962){
													return 2;
												} else {
													if(pX[1] <= 0.4599999934434891){
														return 3;
													} else {
														return 4;
													}
												}
											}
										}
									}
								} else {
									if(pX[2] <= 0.1850000023841858){
										if(pX[0] <= 6.25){
											if(pX[8] <= 3.2100000381469727){
												return 2;
											} else {
												return 1;
											}
										} else {
											if(pX[4] <= 0.042500000447034836){
												return 2;
											} else {
												if(pX[4] <= 0.0819999985396862){
													if(pX[9] <= 0.4299999922513962){
														if(pX[3] <= 1.25){
															return 3;
														} else {
															return 2;
														}
													} else {
														if(pX[5] <= 39.0){
															return 3;
														} else {
															if(pX[8] <= 3.200000047683716){
																return 3;
															} else {
																return 2;
															}
														}
													}
												} else {
													return 2;
												}
											}
										}
									} else {
										if(pX[9] <= 0.5550000071525574){
											if(pX[4] <= 0.06799999997019768){
												if(pX[5] <= 68.5){
													if(pX[1] <= 0.2750000059604645){
														if(pX[9] <= 0.4449999928474426){
															if(pX[5] <= 10.5){
																return 1;
															} else {
																if(pX[7] <= 0.9957000017166138){
																	if(pX[3] <= 2.849999964237213){
																		if(pX[7] <= 0.9927499890327454){
																			if(pX[2] <= 0.4449999928474426){
																				return 3;
																			} else {
																				return 2;
																			}
																		} else {
																			return 2;
																		}
																	} else {
																		return 3;
																	}
																} else {
																	if(pX[0] <= 7.1499998569488525){
																		return 2;
																	} else {
																		if(pX[6] <= 193.5){
																			if(pX[7] <= 0.9981500208377838){
																				return 2;
																			} else {
																				if(pX[3] <= 16.675000190734863){
																					return 3;
																				} else {
																					return 2;
																				}
																			}
																		} else {
																			if(pX[2] <= 0.26999999582767487){
																				return 2;
																			} else {
																				return 4;
																			}
																		}
																	}
																}
															}
														} else {
															if(pX[3] <= 12.349999904632568){
																if(pX[4] <= 0.04749999940395355){
																	if(pX[9] <= 0.4650000035762787){
																		if(pX[0] <= 7.0){
																			return 2;
																		} else {
																			return 3;
																		}
																	} else {
																		if(pX[9] <= 0.5399999916553497){
																			if(pX[2] <= 0.4299999922513962){
																				return 3;
																			} else {
																				if(pX[5] <= 56.0){
																					if(pX[4] <= 0.04649999924004078){
																						return 2;
																					} else {
																						return 3;
																					}
																				} else {
																					return 3;
																				}
																			}
																		} else {
																			return 2;
																		}
																	}
																} else {
																	if(pX[0] <= 6.049999952316284){
																		return 3;
																	} else {
																		if(pX[1] <= 0.26500000059604645){
																			if(pX[5] <= 21.0){
																				return 1;
																			} else {
																				if(pX[6] <= 174.5){
																					if(pX[6] <= 159.0){
																						return 2;
																					} else {
																						if(pX[3] <= 2.2500000596046448){
																							return 1;
																						} else {
																							return 4;
																						}
																					}
																				} else {
																					return 2;
																				}
																			}
																		} else {
																			if(pX[5] <= 41.5){
																				return 1;
																			} else {
																				if(pX[3] <= 7.650000095367432){
																					if(pX[6] <= 221.5){
																						return 3;
																					} else {
																						return 2;
																					}
																				} else {
																					return 3;
																				}
																			}
																		}
																	}
																}
															} else {
																if(pX[1] <= 0.2549999952316284){
																	if(pX[0] <= 7.599999904632568){
																		if(pX[2] <= 0.29500000178813934){
																			if(pX[5] <= 53.75){
																				return 3;
																			} else {
																				return 2;
																			}
																		} else {
																			if(pX[6] <= 191.5){
																				return 3;
																			} else {
																				return 4;
																			}
																		}
																	} else {
																		return 4;
																	}
																} else {
																	if(pX[6] <= 197.5){
																		if(pX[9] <= 0.45499999821186066){
																			return 3;
																		} else {
																			return 2;
																		}
																	} else {
																		return 3;
																	}
																}
															}
														}
													} else {
														if(pX[8] <= 3.2450000047683716){
															if(pX[6] <= 77.0){
																return 3;
															} else {
																if(pX[3] <= 16.800000190734863){
																	if(pX[1] <= 0.41499999165534973){
																		if(pX[5] <= 61.5){
																			if(pX[8] <= 2.990000009536743){
																				return 3;
																			} else {
																				if(pX[3] <= 1.050000011920929){
																					return 3;
																				} else {
																					if(pX[7] <= 0.9945899844169617){
																						return 2;
																					} else {
																						if(pX[2] <= 0.6049999892711639){
																							if(pX[4] <= 0.060499999672174454){
																								if(pX[5] <= 21.0){
																									if(pX[7] <= 0.999379962682724){
																										if(pX[2] <= 0.2849999964237213){
																											return 1;
																										} else {
																											if(pX[3] <= 1.5){
																												return 1;
																											} else {
																												return 2;
																											}
																										}
																									} else {
																										return 2;
																									}
																								} else {
																									if(pX[2] <= 0.48499999940395355){
																										if(pX[2] <= 0.22500000149011612){
																											if(pX[2] <= 0.2149999961256981){
																												return 2;
																											} else {
																												return 3;
																											}
																										} else {
																											if(pX[8] <= 3.1450001001358032){
																												return 2;
																											} else {
																												if(pX[1] <= 0.3050000071525574){
																													if(pX[1] <= 0.29500000178813934){
																														return 2;
																													} else {
																														return 3;
																													}
																												} else {
																													return 2;
																												}
																											}
																										}
																									} else {
																										if(pX[6] <= 167.0){
																											return 2;
																										} else {
																											if(pX[8] <= 3.0799999237060547){
																												return 4;
																											} else {
																												if(pX[5] <= 35.5){
																													return 3;
																												} else {
																													if(pX[4] <= 0.04600000008940697){
																														return 3;
																													} else {
																														return 2;
																													}
																												}
																											}
																										}
																									}
																								}
																							} else {
																								if(pX[1] <= 0.33500000834465027){
																									return 2;
																								} else {
																									if(pX[0] <= 6.799999952316284){
																										return 3;
																									} else {
																										if(pX[4] <= 0.06399999931454659){
																											return 3;
																										} else {
																											return 2;
																										}
																									}
																								}
																							}
																						} else {
																							if(pX[6] <= 155.5){
																								return 2;
																							} else {
																								return 3;
																							}
																						}
																					}
																				}
																			}
																		} else {
																			if(pX[2] <= 0.4299999922513962){
																				return 3;
																			} else {
																				if(pX[10] <= 8.650000095367432){
																					return 1;
																				} else {
																					if(pX[3] <= 12.349999904632568){
																						return 2;
																					} else {
																						if(pX[5] <= 65.0){
																							return 3;
																						} else {
																							return 2;
																						}
																					}
																				}
																			}
																		}
																	} else {
																		if(pX[5] <= 10.5){
																			return 1;
																		} else {
																			if(pX[1] <= 0.42499999701976776){
																				if(pX[9] <= 0.48000000417232513){
																					return 3;
																				} else {
																					if(pX[8] <= 3.1850000619888306){
																						return 3;
																					} else {
																						return 2;
																					}
																				}
																			} else {
																				if(pX[10] <= 8.849999904632568){
																					if(pX[4] <= 0.04450000077486038){
																						return 3;
																					} else {
																						if(pX[6] <= 168.5){
																							return 2;
																						} else {
																							return 0;
																						}
																					}
																				} else {
																					if(pX[0] <= 6.450000047683716){
																						if(pX[2] <= 0.35499998927116394){
																							return 2;
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
																} else {
																	if(pX[2] <= 0.36499999463558197){
																		if(pX[5] <= 35.5){
																			return 3;
																		} else {
																			if(pX[10] <= 8.949999809265137){
																				return 3;
																			} else {
																				return 2;
																			}
																		}
																	} else {
																		return 2;
																	}
																}
															}
														} else {
															if(pX[3] <= 14.650000095367432){
																if(pX[9] <= 0.5349999964237213){
																	if(pX[5] <= 32.5){
																		if(pX[10] <= 9.150000095367432){
																			if(pX[1] <= 0.36249999701976776){
																				return 4;
																			} else {
																				return 2;
																			}
																		} else {
																			if(pX[1] <= 0.375){
																				return 3;
																			} else {
																				if(pX[9] <= 0.5199999809265137){
																					return 2;
																				} else {
																					return 3;
																				}
																			}
																		}
																	} else {
																		if(pX[10] <= 8.949999809265137){
																			return 3;
																		} else {
																			if(pX[4] <= 0.05100000090897083){
																				return 2;
																			} else {
																				if(pX[5] <= 62.5){
																					if(pX[3] <= 8.649999856948853){
																						return 2;
																					} else {
																						return 1;
																					}
																				} else {
																					return 1;
																				}
																			}
																		}
																	}
																} else {
																	if(pX[5] <= 30.0){
																		return 2;
																	} else {
																		return 3;
																	}
																}
															} else {
																return 2;
															}
														}
													}
												} else {
													if(pX[5] <= 76.5){
														return 3;
													} else {
														if(pX[9] <= 0.4650000035762787){
															return 2;
														} else {
															return 3;
														}
													}
												}
											} else {
												if(pX[2] <= 0.19500000029802322){
													if(pX[9] <= 0.5300000011920929){
														return 3;
													} else {
														return 2;
													}
												} else {
													if(pX[2] <= 0.3050000071525574){
														if(pX[5] <= 17.5){
															if(pX[7] <= 0.99727001786232){
																if(pX[6] <= 99.5){
																	return 2;
																} else {
																	if(pX[6] <= 120.0){
																		return 3;
																	} else {
																		return 2;
																	}
																}
															} else {
																if(pX[2] <= 0.2499999925494194){
																	return 2;
																} else {
																	return 1;
																}
															}
														} else {
															if(pX[6] <= 158.5){
																if(pX[3] <= 2.399999976158142){
																	if(pX[6] <= 88.5){
																		return 2;
																	} else {
																		if(pX[6] <= 101.0){
																			return 3;
																		} else {
																			return 2;
																		}
																	}
																} else {
																	return 2;
																}
															} else {
																if(pX[2] <= 0.22999999672174454){
																	return 2;
																} else {
																	return 3;
																}
															}
														}
													} else {
														if(pX[8] <= 3.1049998998641968){
															if(pX[1] <= 0.2900000065565109){
																return 3;
															} else {
																return 2;
															}
														} else {
															return 2;
														}
													}
												}
											}
										} else {
											if(pX[0] <= 11.349999904632568){
												if(pX[9] <= 1.0950000286102295){
													if(pX[0] <= 9.050000190734863){
														if(pX[0] <= 6.3500001430511475){
															if(pX[3] <= 9.099999904632568){
																if(pX[8] <= 3.3200000524520874){
																	if(pX[10] <= 9.700000286102295){
																		return 3;
																	} else {
																		return 2;
																	}
																} else {
																	if(pX[5] <= 23.5){
																		if(pX[2] <= 0.26500000059604645){
																			return 3;
																		} else {
																			return 2;
																		}
																	} else {
																		return 2;
																	}
																}
															} else {
																return 3;
															}
														} else {
															if(pX[2] <= 0.4050000011920929){
																if(pX[6] <= 101.0){
																	if(pX[10] <= 9.650000095367432){
																		if(pX[4] <= 0.0755000002682209){
																			if(pX[8] <= 3.415000081062317){
																				if(pX[1] <= 0.3200000002980232){
																					return 3;
																				} else {
																					return 2;
																				}
																			} else {
																				return 3;
																			}
																		} else {
																			if(pX[2] <= 0.23499999940395355){
																				return 2;
																			} else {
																				if(pX[7] <= 0.9963000118732452){
																					return 2;
																				} else {
																					return 3;
																				}
																			}
																		}
																	} else {
																		if(pX[4] <= 0.08249999955296516){
																			if(pX[1] <= 0.3799999952316284){
																				return 3;
																			} else {
																				return 2;
																			}
																		} else {
																			return 3;
																		}
																	}
																} else {
																	if(pX[3] <= 12.950000286102295){
																		if(pX[4] <= 0.042500000447034836){
																			return 3;
																		} else {
																			if(pX[4] <= 0.08249999955296516){
																				if(pX[6] <= 203.5){
																					if(pX[9] <= 0.625){
																						return 2;
																					} else {
																						if(pX[5] <= 37.0){
																							return 2;
																						} else {
																							return 3;
																						}
																					}
																				} else {
																					if(pX[4] <= 0.05850000120699406){
																						return 3;
																					} else {
																						return 2;
																					}
																				}
																			} else {
																				if(pX[9] <= 0.625){
																					return 2;
																				} else {
																					return 1;
																				}
																			}
																		}
																	} else {
																		if(pX[9] <= 0.675000011920929){
																			if(pX[3] <= 15.65000057220459){
																				return 3;
																			} else {
																				if(pX[4] <= 0.045500000938773155){
																					return 3;
																				} else {
																					return 2;
																				}
																			}
																		} else {
																			return 2;
																		}
																	}
																}
															} else {
																if(pX[8] <= 3.190000057220459){
																	if(pX[6] <= 155.5){
																		if(pX[3] <= 1.5999999642372131){
																			return 1;
																		} else {
																			return 2;
																		}
																	} else {
																		return 2;
																	}
																} else {
																	if(pX[4] <= 0.08500000089406967){
																		if(pX[1] <= 0.3100000023841858){
																			return 2;
																		} else {
																			return 3;
																		}
																	} else {
																		return 2;
																	}
																}
															}
														}
													} else {
														if(pX[3] <= 1.949999988079071){
															return 3;
														} else {
															if(pX[5] <= 42.5){
																if(pX[4] <= 0.0924999974668026){
																	return 2;
																} else {
																	if(pX[1] <= 0.4950000047683716){
																		return 2;
																	} else {
																		return 4;
																	}
																}
															} else {
																return 3;
															}
														}
													}
												} else {
													return 1;
												}
											} else {
												if(pX[6] <= 41.0){
													return 3;
												} else {
													if(pX[3] <= 3.350000023841858){
														return 0;
													} else {
														return 1;
													}
												}
											}
										}
									}
								}
							} else {
								if(pX[10] <= 9.050000190734863){
									if(pX[10] <= 8.75){
										return 2;
									} else {
										return 3;
									}
								} else {
									if(pX[9] <= 0.4399999976158142){
										if(pX[5] <= 48.0){
											return 2;
										} else {
											if(pX[8] <= 3.0449999570846558){
												return 2;
											} else {
												return 3;
											}
										}
									} else {
										if(pX[1] <= 0.7350000143051147){
											if(pX[2] <= 0.29500000178813934){
												return 2;
											} else {
												if(pX[4] <= 0.15450000017881393){
													return 2;
												} else {
													if(pX[9] <= 0.7750000059604645){
														return 2;
													} else {
														return 3;
													}
												}
											}
										} else {
											if(pX[0] <= 7.049999952316284){
												return 3;
											} else {
												return 2;
											}
										}
									}
								}
							}
						} else {
							if(pX[5] <= 9.5){
								if(pX[7] <= 0.9992500245571136){
									if(pX[1] <= 0.9149999916553497){
										return 3;
									} else {
										return 1;
									}
								} else {
									if(pX[3] <= 2.25){
										return 0;
									} else {
										return 3;
									}
								}
							} else {
								if(pX[1] <= 0.2800000011920929){
									if(pX[1] <= 0.26500000059604645){
										return 3;
									} else {
										if(pX[0] <= 6.700000047683716){
											return 2;
										} else {
											return 3;
										}
									}
								} else {
									if(pX[3] <= 14.599999904632568){
										if(pX[4] <= 0.18250000476837158){
											if(pX[1] <= 0.3149999976158142){
												return 3;
											} else {
												return 2;
											}
										} else {
											if(pX[0] <= 8.799999713897705){
												return 2;
											} else {
												if(pX[5] <= 25.0){
													return 2;
												} else {
													if(pX[9] <= 1.1800000071525574){
														return 2;
													} else {
														return 3;
													}
												}
											}
										}
									} else {
										return 3;
									}
								}
							}
						}
					} else {
						if(pX[6] <= 47.5){
							if(pX[9] <= 0.5949999988079071){
								if(pX[1] <= 0.8975000083446503){
									if(pX[1] <= 0.5399999916553497){
										if(pX[7] <= 0.9960750043392181){
											return 2;
										} else {
											return 3;
										}
									} else {
										if(pX[3] <= 1.850000023841858){
											if(pX[9] <= 0.4999999850988388){
												return 4;
											} else {
												return 3;
											}
										} else {
											return 2;
										}
									}
								} else {
									if(pX[8] <= 3.240000009536743){
										return 3;
									} else {
										return 1;
									}
								}
							} else {
								if(pX[0] <= 6.8999998569488525){
									if(pX[5] <= 10.5){
										return 0;
									} else {
										if(pX[6] <= 37.5){
											return 4;
										} else {
											return 3;
										}
									}
								} else {
									if(pX[8] <= 3.0799999237060547){
										return 4;
									} else {
										if(pX[4] <= 0.06200000084936619){
											if(pX[7] <= 0.995864987373352){
												return 3;
											} else {
												return 5;
											}
										} else {
											if(pX[1] <= 0.7325000166893005){
												return 3;
											} else {
												return 2;
											}
										}
									}
								}
							}
						} else {
							if(pX[1] <= 0.45499999821186066){
								if(pX[2] <= 0.3799999952316284){
									if(pX[8] <= 3.059999942779541){
										return 4;
									} else {
										if(pX[10] <= 9.949999809265137){
											if(pX[8] <= 3.165000081062317){
												if(pX[6] <= 156.5){
													return 2;
												} else {
													if(pX[6] <= 187.5){
														return 3;
													} else {
														return 2;
													}
												}
											} else {
												if(pX[8] <= 3.375){
													if(pX[1] <= 0.29500000178813934){
														if(pX[3] <= 7.549999952316284){
															return 3;
														} else {
															return 2;
														}
													} else {
														if(pX[9] <= 0.4350000023841858){
															if(pX[0] <= 7.25){
																return 2;
															} else {
																return 3;
															}
														} else {
															return 3;
														}
													}
												} else {
													if(pX[5] <= 35.0){
														return 2;
													} else {
														if(pX[6] <= 164.5){
															return 3;
														} else {
															return 2;
														}
													}
												}
											}
										} else {
											if(pX[6] <= 222.0){
												if(pX[3] <= 1.149999976158142){
													return 3;
												} else {
													if(pX[6] <= 68.5){
														if(pX[5] <= 21.5){
															return 2;
														} else {
															return 1;
														}
													} else {
														if(pX[0] <= 6.200000047683716){
															if(pX[5] <= 35.5){
																return 2;
															} else {
																return 4;
															}
														} else {
															if(pX[0] <= 7.950000047683716){
																return 2;
															} else {
																if(pX[1] <= 0.3449999988079071){
																	return 3;
																} else {
																	return 2;
																}
															}
														}
													}
												}
											} else {
												return 3;
											}
										}
									}
								} else {
									if(pX[7] <= 0.9966999888420105){
										return 3;
									} else {
										if(pX[2] <= 0.6599999964237213){
											if(pX[4] <= 0.08399999886751175){
												if(pX[5] <= 32.0){
													return 3;
												} else {
													if(pX[2] <= 0.45000000298023224){
														return 3;
													} else {
														return 2;
													}
												}
											} else {
												if(pX[4] <= 0.09400000050663948){
													return 4;
												} else {
													return 2;
												}
											}
										} else {
											return 1;
										}
									}
								}
							} else {
								if(pX[1] <= 0.9074999988079071){
									if(pX[9] <= 0.6049999892711639){
										return 2;
									} else {
										if(pX[1] <= 0.6249999850988388){
											return 4;
										} else {
											return 2;
										}
									}
								} else {
									return 1;
								}
							}
						}
					}
				}
			}
		} else {
			if(pX[9] <= 0.6850000023841858){
				if(pX[0] <= 6.8500001430511475){
					if(pX[6] <= 176.0){
						if(pX[1] <= 0.5349999964237213){
							if(pX[2] <= 0.2549999952316284){
								if(pX[3] <= 1.550000011920929){
									if(pX[6] <= 119.0){
										if(pX[10] <= 10.150000095367432){
											return 1;
										} else {
											if(pX[10] <= 11.349999904632568){
												return 3;
											} else {
												return 2;
											}
										}
									} else {
										if(pX[4] <= 0.0494999997317791){
											return 2;
										} else {
											return 3;
										}
									}
								} else {
									if(pX[3] <= 16.674999713897705){
										if(pX[6] <= 19.0){
											return 2;
										} else {
											if(pX[5] <= 10.0){
												if(pX[1] <= 0.41999998688697815){
													return 2;
												} else {
													return 1;
												}
											} else {
												if(pX[0] <= 5.299999952316284){
													return 4;
												} else {
													if(pX[6] <= 144.5){
														if(pX[5] <= 19.5){
															return 3;
														} else {
															if(pX[7] <= 0.996749997138977){
																if(pX[10] <= 11.049999713897705){
																	if(pX[8] <= 3.0999999046325684){
																		if(pX[3] <= 9.650000095367432){
																			return 2;
																		} else {
																			return 3;
																		}
																	} else {
																		return 3;
																	}
																} else {
																	if(pX[4] <= 0.06949999928474426){
																		if(pX[8] <= 3.1799999475479126){
																			return 4;
																		} else {
																			if(pX[2] <= 0.24499999731779099){
																				return 3;
																			} else {
																				return 5;
																			}
																		}
																	} else {
																		return 2;
																	}
																}
															} else {
																return 2;
															}
														}
													} else {
														if(pX[5] <= 29.0){
															return 2;
														} else {
															if(pX[5] <= 43.0){
																return 3;
															} else {
																if(pX[4] <= 0.0494999997317791){
																	return 3;
																} else {
																	return 2;
																}
															}
														}
													}
												}
											}
										}
									} else {
										return 2;
									}
								}
							} else {
								if(pX[9] <= 0.3449999988079071){
									if(pX[0] <= 6.450000047683716){
										if(pX[3] <= 6.2500001192092896){
											if(pX[9] <= 0.29500000178813934){
												return 3;
											} else {
												return 5;
											}
										} else {
											return 4;
										}
									} else {
										return 5;
									}
								} else {
									if(pX[7] <= 0.9899849891662598){
										if(pX[7] <= 0.9897100031375885){
											return 3;
										} else {
											return 4;
										}
									} else {
										if(pX[0] <= 6.450000047683716){
											if(pX[9] <= 0.39499999582767487){
												if(pX[5] <= 51.0){
													if(pX[10] <= 10.849999904632568){
														if(pX[9] <= 0.375){
															if(pX[3] <= 6.800000190734863){
																return 2;
															} else {
																return 3;
															}
														} else {
															return 2;
														}
													} else {
														return 3;
													}
												} else {
													return 3;
												}
											} else {
												if(pX[5] <= 64.5){
													if(pX[6] <= 166.5){
														if(pX[3] <= 1.1500000357627869){
															if(pX[5] <= 33.5){
																return 3;
															} else {
																return 4;
															}
														} else {
															if(pX[1] <= 0.1550000011920929){
																return 3;
															} else {
																if(pX[10] <= 10.75){
																	if(pX[1] <= 0.20499999821186066){
																		if(pX[1] <= 0.17000000178813934){
																			return 2;
																		} else {
																			return 4;
																		}
																	} else {
																		if(pX[9] <= 0.5999999940395355){
																			if(pX[7] <= 0.9916900098323822){
																				return 2;
																			} else {
																				if(pX[8] <= 3.2899999618530273){
																					return 3;
																				} else {
																					if(pX[2] <= 0.29500000178813934){
																						return 4;
																					} else {
																						if(pX[8] <= 3.309999942779541){
																							return 2;
																						} else {
																							return 3;
																						}
																					}
																				}
																			}
																		} else {
																			return 2;
																		}
																	}
																} else {
																	if(pX[7] <= 0.9955100119113922){
																		if(pX[5] <= 13.5){
																			if(pX[6] <= 39.0){
																				return 3;
																			} else {
																				if(pX[0] <= 6.200000047683716){
																					return 4;
																				} else {
																					return 2;
																				}
																			}
																		} else {
																			if(pX[4] <= 0.0494999997317791){
																				if(pX[4] <= 0.04649999924004078){
																					return 3;
																				} else {
																					if(pX[4] <= 0.04749999940395355){
																						if(pX[8] <= 3.2450000047683716){
																							return 3;
																						} else {
																							return 4;
																						}
																					} else {
																						return 3;
																					}
																				}
																			} else {
																				if(pX[9] <= 0.4299999922513962){
																					if(pX[5] <= 32.5){
																						return 2;
																					} else {
																						return 3;
																					}
																				} else {
																					if(pX[7] <= 0.990420013666153){
																						return 5;
																					} else {
																						if(pX[5] <= 29.5){
																							return 3;
																						} else {
																							if(pX[1] <= 0.26000000536441803){
																								return 3;
																							} else {
																								if(pX[3] <= 6.25){
																									return 2;
																								} else {
																									return 3;
																								}
																							}
																						}
																					}
																				}
																			}
																		}
																	} else {
																		return 1;
																	}
																}
															}
														}
													} else {
														if(pX[3] <= 7.049999833106995){
															return 3;
														} else {
															return 2;
														}
													}
												} else {
													if(pX[7] <= 0.9949899911880493){
														return 4;
													} else {
														return 3;
													}
												}
											}
										} else {
											if(pX[3] <= 14.900000095367432){
												if(pX[6] <= 153.5){
													if(pX[4] <= 0.04649999924004078){
														if(pX[10] <= 10.75){
															if(pX[6] <= 138.5){
																if(pX[5] <= 23.0){
																	if(pX[9] <= 0.4650000035762787){
																		return 4;
																	} else {
																		if(pX[3] <= 1.600000023841858){
																			return 1;
																		} else {
																			return 5;
																		}
																	}
																} else {
																	return 3;
																}
															} else {
																return 2;
															}
														} else {
															if(pX[2] <= 0.26999999582767487){
																return 5;
															} else {
																if(pX[4] <= 0.045500000938773155){
																	return 3;
																} else {
																	if(pX[9] <= 0.564999982714653){
																		return 3;
																	} else {
																		return 4;
																	}
																}
															}
														}
													} else {
														if(pX[4] <= 0.06850000098347664){
															if(pX[10] <= 10.75){
																if(pX[4] <= 0.05350000038743019){
																	if(pX[5] <= 39.5){
																		if(pX[3] <= 3.3999999165534973){
																			if(pX[2] <= 0.5850000083446503){
																				return 2;
																			} else {
																				return 3;
																			}
																		} else {
																			return 4;
																		}
																	} else {
																		return 5;
																	}
																} else {
																	return 3;
																}
															} else {
																if(pX[9] <= 0.5550000071525574){
																	return 4;
																} else {
																	if(pX[5] <= 22.0){
																		return 3;
																	} else {
																		return 4;
																	}
																}
															}
														} else {
															return 3;
														}
													}
												} else {
													return 3;
												}
											} else {
												return 0;
											}
										}
									}
								}
							}
						} else {
							if(pX[6] <= 14.0){
								if(pX[5] <= 4.5){
									if(pX[9] <= 0.5){
										return 1;
									} else {
										return 4;
									}
								} else {
									if(pX[5] <= 6.5){
										return 2;
									} else {
										return 3;
									}
								}
							} else {
								if(pX[9] <= 0.5949999988079071){
									if(pX[10] <= 10.724999904632568){
										if(pX[5] <= 21.0){
											if(pX[8] <= 3.4550000429153442){
												if(pX[1] <= 0.6574999988079071){
													return 3;
												} else {
													return 2;
												}
											} else {
												return 3;
											}
										} else {
											if(pX[10] <= 10.150000095367432){
												return 3;
											} else {
												return 1;
											}
										}
									} else {
										if(pX[10] <= 11.299999713897705){
											if(pX[6] <= 23.5){
												if(pX[5] <= 10.0){
													return 3;
												} else {
													return 4;
												}
											} else {
												if(pX[5] <= 24.5){
													return 1;
												} else {
													if(pX[5] <= 27.5){
														return 2;
													} else {
														return 3;
													}
												}
											}
										} else {
											if(pX[7] <= 0.9950999915599823){
												if(pX[10] <= 12.074999809265137){
													if(pX[10] <= 11.5){
														return 3;
													} else {
														if(pX[0] <= 6.5){
															return 2;
														} else {
															return 3;
														}
													}
												} else {
													return 3;
												}
											} else {
												return 4;
											}
										}
									}
								} else {
									if(pX[4] <= 0.08049999922513962){
										return 3;
									} else {
										if(pX[4] <= 0.10300000011920929){
											return 2;
										} else {
											return 3;
										}
									}
								}
							}
						}
					} else {
						if(pX[1] <= 0.26500000059604645){
							if(pX[9] <= 0.5450000166893005){
								return 3;
							} else {
								if(pX[4] <= 0.04449999891221523){
									return 5;
								} else {
									if(pX[6] <= 319.5){
										if(pX[5] <= 58.0){
											return 4;
										} else {
											return 3;
										}
									} else {
										return 0;
									}
								}
							}
						} else {
							if(pX[5] <= 48.0){
								if(pX[6] <= 194.0){
									if(pX[2] <= 0.46000000834465027){
										return 2;
									} else {
										return 4;
									}
								} else {
									if(pX[7] <= 0.9959000051021576){
										return 1;
									} else {
										return 2;
									}
								}
							} else {
								if(pX[3] <= 3.149999976158142){
									return 2;
								} else {
									return 3;
								}
							}
						}
					}
				} else {
					if(pX[9] <= 0.33500000834465027){
						if(pX[5] <= 19.5){
							return 1;
						} else {
							if(pX[7] <= 0.9925400018692017){
								return 3;
							} else {
								if(pX[2] <= 0.3799999952316284){
									return 5;
								} else {
									return 3;
								}
							}
						}
					} else {
						if(pX[10] <= 11.416666507720947){
							if(pX[5] <= 36.5){
								if(pX[9] <= 0.574999988079071){
									if(pX[1] <= 0.16499999910593033){
										if(pX[4] <= 0.052000001072883606){
											if(pX[8] <= 3.090000033378601){
												return 3;
											} else {
												if(pX[0] <= 7.049999952316284){
													return 5;
												} else {
													if(pX[0] <= 8.100000143051147){
														if(pX[3] <= 4.949999809265137){
															return 4;
														} else {
															return 3;
														}
													} else {
														return 3;
													}
												}
											}
										} else {
											return 3;
										}
									} else {
										if(pX[1] <= 1.137499988079071){
											if(pX[4] <= 0.10300000011920929){
												if(pX[7] <= 0.9955799877643585){
													if(pX[3] <= 2.024999976158142){
														if(pX[10] <= 11.25){
															if(pX[7] <= 0.991349995136261){
																return 1;
															} else {
																if(pX[2] <= 0.3799999952316284){
																	if(pX[3] <= 1.550000011920929){
																		if(pX[0] <= 7.8500001430511475){
																			if(pX[5] <= 22.0){
																				if(pX[6] <= 88.5){
																					return 4;
																				} else {
																					return 2;
																				}
																			} else {
																				return 2;
																			}
																		} else {
																			if(pX[5] <= 19.0){
																				return 2;
																			} else {
																				return 3;
																			}
																		}
																	} else {
																		if(pX[10] <= 10.25){
																			return 2;
																		} else {
																			if(pX[1] <= 0.9350000023841858){
																				return 3;
																			} else {
																				return 2;
																			}
																		}
																	}
																} else {
																	if(pX[8] <= 3.2899999618530273){
																		if(pX[6] <= 136.5){
																			if(pX[0] <= 7.849999904632568){
																				return 3;
																			} else {
																				if(pX[8] <= 3.190000057220459){
																					return 3;
																				} else {
																					return 1;
																				}
																			}
																		} else {
																			if(pX[10] <= 10.649999618530273){
																				return 3;
																			} else {
																				return 2;
																			}
																		}
																	} else {
																		if(pX[10] <= 10.299999713897705){
																			return 2;
																		} else {
																			return 4;
																		}
																	}
																}
															}
														} else {
															if(pX[1] <= 0.20000000298023224){
																if(pX[5] <= 23.0){
																	return 4;
																} else {
																	return 2;
																}
															} else {
																return 2;
															}
														}
													} else {
														if(pX[10] <= 11.050000190734863){
															if(pX[0] <= 7.25){
																return 3;
															} else {
																if(pX[5] <= 27.5){
																	if(pX[0] <= 8.300000190734863){
																		if(pX[3] <= 5.8999998569488525){
																			return 2;
																		} else {
																			if(pX[8] <= 3.1200000047683716){
																				return 2;
																			} else {
																				return 3;
																			}
																		}
																	} else {
																		if(pX[5] <= 19.0){
																			return 3;
																		} else {
																			return 1;
																		}
																	}
																} else {
																	if(pX[6] <= 179.0){
																		if(pX[0] <= 7.3500001430511475){
																			if(pX[5] <= 33.0){
																				return 2;
																			} else {
																				return 3;
																			}
																		} else {
																			return 3;
																		}
																	} else {
																		return 4;
																	}
																}
															}
														} else {
															if(pX[5] <= 18.5){
																return 1;
															} else {
																if(pX[1] <= 0.39000000059604645){
																	if(pX[2] <= 0.2900000065565109){
																		return 2;
																	} else {
																		if(pX[6] <= 156.5){
																			if(pX[6] <= 110.0){
																				if(pX[7] <= 0.9929900169372559){
																					return 4;
																				} else {
																					return 3;
																				}
																			} else {
																				return 3;
																			}
																		} else {
																			return 4;
																		}
																	}
																} else {
																	if(pX[9] <= 0.4350000023841858){
																		return 4;
																	} else {
																		return 5;
																	}
																}
															}
														}
													}
												} else {
													if(pX[7] <= 0.9974600076675415){
														if(pX[10] <= 10.449999809265137){
															if(pX[10] <= 10.349999904632568){
																if(pX[5] <= 8.5){
																	return 3;
																} else {
																	if(pX[9] <= 0.5550000071525574){
																		return 2;
																	} else {
																		return 3;
																	}
																}
															} else {
																if(pX[7] <= 0.9960500001907349){
																	return 3;
																} else {
																	if(pX[1] <= 0.4349999874830246){
																		return 2;
																	} else {
																		return 1;
																	}
																}
															}
														} else {
															if(pX[4] <= 0.08700000122189522){
																if(pX[10] <= 11.299999713897705){
																	return 2;
																} else {
																	return 4;
																}
															} else {
																if(pX[3] <= 1.8499999642372131){
																	if(pX[9] <= 0.5649999976158142){
																		return 4;
																	} else {
																		return 2;
																	}
																} else {
																	return 2;
																}
															}
														}
													} else {
														if(pX[1] <= 0.42000000178813934){
															if(pX[8] <= 3.125){
																return 1;
															} else {
																return 2;
															}
														} else {
															if(pX[0] <= 11.900000095367432){
																return 3;
															} else {
																return 2;
															}
														}
													}
												}
											} else {
												if(pX[9] <= 0.5550000071525574){
													return 3;
												} else {
													if(pX[6] <= 37.5){
														return 3;
													} else {
														return 2;
													}
												}
											}
										} else {
											if(pX[6] <= 13.0){
												if(pX[1] <= 1.4550000429153442){
													return 2;
												} else {
													return 0;
												}
											} else {
												return 0;
											}
										}
									}
								} else {
									if(pX[10] <= 11.050000190734863){
										if(pX[7] <= 0.9955849945545197){
											if(pX[3] <= 2.099999964237213){
												if(pX[8] <= 3.3299999237060547){
													if(pX[10] <= 10.700000286102295){
														return 1;
													} else {
														return 3;
													}
												} else {
													if(pX[3] <= 1.3499999642372131){
														return 3;
													} else {
														if(pX[2] <= 0.2499999925494194){
															return 4;
														} else {
															if(pX[0] <= 7.200000047683716){
																return 1;
															} else {
																return 3;
															}
														}
													}
												}
											} else {
												if(pX[8] <= 3.3799999952316284){
													return 3;
												} else {
													if(pX[1] <= 0.4299999922513962){
														return 4;
													} else {
														return 3;
													}
												}
											}
										} else {
											if(pX[7] <= 0.9965749979019165){
												if(pX[2] <= 0.12999999895691872){
													if(pX[2] <= 0.07499999832361937){
														if(pX[0] <= 7.299999952316284){
															return 2;
														} else {
															return 3;
														}
													} else {
														return 4;
													}
												} else {
													if(pX[5] <= 29.0){
														return 2;
													} else {
														if(pX[2] <= 0.24499999731779099){
															return 2;
														} else {
															return 3;
														}
													}
												}
											} else {
												if(pX[1] <= 0.4624999910593033){
													if(pX[6] <= 54.5){
														if(pX[4] <= 0.07300000265240669){
															if(pX[6] <= 29.5){
																if(pX[4] <= 0.06650000065565109){
																	return 3;
																} else {
																	if(pX[8] <= 3.1299999952316284){
																		return 3;
																	} else {
																		return 5;
																	}
																}
															} else {
																if(pX[10] <= 10.400000095367432){
																	return 2;
																} else {
																	return 4;
																}
															}
														} else {
															if(pX[3] <= 7.700000047683716){
																if(pX[4] <= 0.09400000050663948){
																	return 2;
																} else {
																	if(pX[6] <= 36.0){
																		return 3;
																	} else {
																		return 2;
																	}
																}
															} else {
																return 3;
															}
														}
													} else {
														if(pX[10] <= 10.150000095367432){
															return 3;
														} else {
															if(pX[2] <= 0.32500000298023224){
																return 3;
															} else {
																return 2;
															}
														}
													}
												} else {
													if(pX[8] <= 3.0549999475479126){
														return 0;
													} else {
														if(pX[7] <= 0.9970199763774872){
															if(pX[10] <= 10.5){
																return 4;
															} else {
																return 2;
															}
														} else {
															if(pX[2] <= 0.2749999985098839){
																if(pX[10] <= 10.25){
																	return 2;
																} else {
																	return 3;
																}
															} else {
																return 3;
															}
														}
													}
												}
											}
										}
									} else {
										if(pX[4] <= 0.05949999950826168){
											if(pX[8] <= 3.100000023841858){
												return 1;
											} else {
												return 4;
											}
										} else {
											if(pX[3] <= 2.549999952316284){
												if(pX[8] <= 3.3549998998641968){
													return 3;
												} else {
													if(pX[7] <= 0.9953150153160095){
														if(pX[10] <= 11.299999713897705){
															return 2;
														} else {
															return 1;
														}
													} else {
														return 3;
													}
												}
											} else {
												if(pX[7] <= 0.9961999952793121){
													return 1;
												} else {
													if(pX[0] <= 10.550000190734863){
														return 3;
													} else {
														return 4;
													}
												}
											}
										}
									}
								}
							} else {
								if(pX[1] <= 0.4399999976158142){
									if(pX[6] <= 130.0){
										if(pX[5] <= 50.5){
											if(pX[0] <= 7.549999952316284){
												if(pX[4] <= 0.05000000074505806){
													return 3;
												} else {
													if(pX[3] <= 5.6000001430511475){
														return 4;
													} else {
														return 5;
													}
												}
											} else {
												return 2;
											}
										} else {
											return 4;
										}
									} else {
										if(pX[3] <= 7.1499998569488525){
											if(pX[5] <= 41.5){
												if(pX[2] <= 0.23999999463558197){
													return 3;
												} else {
													if(pX[0] <= 7.599999904632568){
														return 2;
													} else {
														if(pX[7] <= 0.9955999851226807){
															return 4;
														} else {
															return 2;
														}
													}
												}
											} else {
												if(pX[4] <= 0.05599999986588955){
													if(pX[10] <= 11.25){
														if(pX[8] <= 3.430000066757202){
															return 3;
														} else {
															if(pX[9] <= 0.5799999833106995){
																if(pX[3] <= 1.800000011920929){
																	return 2;
																} else {
																	return 5;
																}
															} else {
																return 3;
															}
														}
													} else {
														return 2;
													}
												} else {
													return 2;
												}
											}
										} else {
											return 3;
										}
									}
								} else {
									if(pX[0] <= 7.450000047683716){
										if(pX[3] <= 2.049999952316284){
											return 0;
										} else {
											return 3;
										}
									} else {
										return 2;
									}
								}
							}
						} else {
							if(pX[3] <= 3.649999976158142){
								if(pX[1] <= 0.8125){
									if(pX[8] <= 2.9350000619888306){
										return 2;
									} else {
										if(pX[5] <= 38.0){
											if(pX[8] <= 3.215000033378601){
												if(pX[2] <= 0.6700000166893005){
													if(pX[1] <= 0.1524999961256981){
														return 4;
													} else {
														if(pX[1] <= 0.45499999821186066){
															if(pX[10] <= 12.700000286102295){
																return 3;
															} else {
																return 2;
															}
														} else {
															return 4;
														}
													}
												} else {
													return 2;
												}
											} else {
												if(pX[2] <= 0.004999999888241291){
													return 4;
												} else {
													if(pX[8] <= 3.3149999380111694){
														if(pX[3] <= 1.925000011920929){
															if(pX[9] <= 0.5699999928474426){
																return 2;
															} else {
																return 4;
															}
														} else {
															if(pX[4] <= 0.05349999852478504){
																return 4;
															} else {
																if(pX[9] <= 0.6550000011920929){
																	if(pX[9] <= 0.6100000143051147){
																		if(pX[0] <= 7.8999998569488525){
																			return 4;
																		} else {
																			return 3;
																		}
																	} else {
																		return 4;
																	}
																} else {
																	return 3;
																}
															}
														}
													} else {
														return 3;
													}
												}
											}
										} else {
											if(pX[6] <= 122.5){
												return 5;
											} else {
												if(pX[4] <= 0.048499999567866325){
													return 4;
												} else {
													return 2;
												}
											}
										}
									}
								} else {
									return 2;
								}
							} else {
								if(pX[6] <= 15.5){
									if(pX[7] <= 0.9957599937915802){
										return 1;
									} else {
										return 4;
									}
								} else {
									if(pX[8] <= 3.1450001001358032){
										if(pX[4] <= 0.05049999989569187){
											return 4;
										} else {
											return 3;
										}
									} else {
										if(pX[7] <= 1.0017499923706055){
											if(pX[1] <= 0.23500000685453415){
												return 3;
											} else {
												if(pX[2] <= 0.2750000059604645){
													return 3;
												} else {
													if(pX[8] <= 3.274999976158142){
														return 4;
													} else {
														if(pX[0] <= 7.450000047683716){
															return 4;
														} else {
															return 3;
														}
													}
												}
											}
										} else {
											return 3;
										}
									}
								}
							}
						}
					}
				}
			} else {
				if(pX[7] <= 0.9927700161933899){
					if(pX[4] <= 0.05700000002980232){
						if(pX[0] <= 6.700000047683716){
							if(pX[0] <= 6.25){
								if(pX[8] <= 3.4100000858306885){
									if(pX[7] <= 0.9910550117492676){
										return 5;
									} else {
										return 2;
									}
								} else {
									if(pX[1] <= 0.3799999952316284){
										if(pX[5] <= 26.0){
											return 4;
										} else {
											return 3;
										}
									} else {
										if(pX[10] <= 13.800000190734863){
											return 4;
										} else {
											return 5;
										}
									}
								}
							} else {
								return 4;
							}
						} else {
							if(pX[3] <= 1.75){
								return 3;
							} else {
								return 4;
							}
						}
					} else {
						return 5;
					}
				} else {
					if(pX[10] <= 11.550000190734863){
						if(pX[6] <= 56.5){
							if(pX[2] <= 0.4950000047683716){
								if(pX[3] <= 5.349999904632568){
									if(pX[1] <= 0.36500000953674316){
										if(pX[9] <= 0.7350000143051147){
											return 3;
										} else {
											if(pX[10] <= 10.949999809265137){
												if(pX[7] <= 0.9975000023841858){
													return 3;
												} else {
													if(pX[3] <= 2.549999952316284){
														if(pX[9] <= 0.9399999976158142){
															return 3;
														} else {
															return 4;
														}
													} else {
														return 4;
													}
												}
											} else {
												if(pX[3] <= 2.25){
													return 4;
												} else {
													if(pX[8] <= 3.334999918937683){
														return 4;
													} else {
														return 3;
													}
												}
											}
										}
									} else {
										if(pX[1] <= 0.6225000023841858){
											if(pX[5] <= 3.5){
												return 4;
											} else {
												if(pX[5] <= 20.5){
													if(pX[0] <= 9.75){
														if(pX[5] <= 19.0){
															if(pX[10] <= 11.25){
																if(pX[10] <= 11.150000095367432){
																	return 3;
																} else {
																	if(pX[5] <= 9.0){
																		return 3;
																	} else {
																		if(pX[9] <= 0.8100000023841858){
																			return 2;
																		} else {
																			return 3;
																		}
																	}
																}
															} else {
																if(pX[7] <= 0.9947099983692169){
																	return 4;
																} else {
																	return 5;
																}
															}
														} else {
															return 4;
														}
													} else {
														if(pX[2] <= 0.375){
															return 2;
														} else {
															if(pX[0] <= 11.400000095367432){
																return 4;
															} else {
																return 3;
															}
														}
													}
												} else {
													return 3;
												}
											}
										} else {
											if(pX[1] <= 0.6525000035762787){
												if(pX[1] <= 0.637499988079071){
													return 4;
												} else {
													return 2;
												}
											} else {
												return 3;
											}
										}
									}
								} else {
									return 4;
								}
							} else {
								if(pX[10] <= 11.449999809265137){
									if(pX[4] <= 0.05650000087916851){
										return 4;
									} else {
										if(pX[5] <= 5.5){
											if(pX[1] <= 0.32500000298023224){
												return 3;
											} else {
												if(pX[3] <= 2.75){
													return 2;
												} else {
													return 4;
												}
											}
										} else {
											return 3;
										}
									}
								} else {
									if(pX[3] <= 3.149999976158142){
										return 3;
									} else {
										return 2;
									}
								}
							}
						} else {
							if(pX[4] <= 0.05949999950826168){
								if(pX[2] <= 0.5250000059604645){
									if(pX[7] <= 0.9936899840831757){
										if(pX[3] <= 1.699999988079071){
											if(pX[6] <= 137.0){
												return 3;
											} else {
												if(pX[3] <= 1.550000011920929){
													return 4;
												} else {
													return 3;
												}
											}
										} else {
											return 2;
										}
									} else {
										if(pX[3] <= 11.75){
											return 3;
										} else {
											if(pX[7] <= 0.9972400069236755){
												return 4;
											} else {
												return 3;
											}
										}
									}
								} else {
									return 2;
								}
							} else {
								if(pX[5] <= 31.5){
									if(pX[2] <= 0.17500000074505806){
										if(pX[0] <= 7.5){
											return 2;
										} else {
											return 3;
										}
									} else {
										if(pX[6] <= 59.5){
											if(pX[2] <= 0.3199999928474426){
												return 2;
											} else {
												return 4;
											}
										} else {
											if(pX[2] <= 0.574999988079071){
												return 2;
											} else {
												if(pX[9] <= 0.8650000095367432){
													return 2;
												} else {
													return 3;
												}
											}
										}
									}
								} else {
									return 3;
								}
							}
						}
					} else {
						if(pX[3] <= 4.799999952316284){
							if(pX[6] <= 55.5){
								if(pX[4] <= 0.16100000590085983){
									if(pX[2] <= 0.4099999964237213){
										if(pX[3] <= 1.6500000357627869){
											return 3;
										} else {
											if(pX[0] <= 6.450000047683716){
												if(pX[2] <= 0.08000000286847353){
													return 4;
												} else {
													return 3;
												}
											} else {
												if(pX[8] <= 3.430000066757202){
													return 4;
												} else {
													if(pX[9] <= 0.8149999976158142){
														return 5;
													} else {
														return 4;
													}
												}
											}
										}
									} else {
										if(pX[4] <= 0.1119999997317791){
											if(pX[0] <= 10.349999904632568){
												if(pX[9] <= 0.7849999964237213){
													if(pX[2] <= 0.45499999821186066){
														return 4;
													} else {
														if(pX[0] <= 10.049999713897705){
															if(pX[3] <= 2.3000000715255737){
																return 3;
															} else {
																return 4;
															}
														} else {
															return 4;
														}
													}
												} else {
													if(pX[8] <= 3.259999990463257){
														if(pX[6] <= 17.5){
															return 5;
														} else {
															return 4;
														}
													} else {
														return 3;
													}
												}
											} else {
												return 3;
											}
										} else {
											return 4;
										}
									}
								} else {
									return 3;
								}
							} else {
								if(pX[0] <= 9.099999904632568){
									return 3;
								} else {
									return 4;
								}
							}
						} else {
							if(pX[0] <= 11.349999904632568){
								return 5;
							} else {
								return 3;
							}
						}
					}
				}
			}
		}
	}
}
