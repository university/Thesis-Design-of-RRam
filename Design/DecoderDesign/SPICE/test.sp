// showcase for mismatch simulation

simulator lang=spectre

include "transistorsPTM.scs"
include "../../ArchitectureDesign/SPICE/decoder.sp"
include "parameters.sp"

xdecoder (IN_0 IN_1 IN_2 IN_3 IN_4 IN_5 IN_6 IN_7 IN_8 enable OUT_0 OUT_1 OUT_2 OUT_3 OUT_4 OUT_5 OUT_6 OUT_7 OUT_8 OUT_9 OUT_10 OUT_11 OUT_12 OUT_13 OUT_14 OUT_15 OUT_16 OUT_17 OUT_18 OUT_19 OUT_20 OUT_21 OUT_22 OUT_23 OUT_24 OUT_25 OUT_26 OUT_27 OUT_28 OUT_29 OUT_30 OUT_31 OUT_32 OUT_33 OUT_34 OUT_35 OUT_36 OUT_37 OUT_38 OUT_39 OUT_40 OUT_41 OUT_42 OUT_43 OUT_44 OUT_45 OUT_46 OUT_47 OUT_48 OUT_49 OUT_50 OUT_51 OUT_52 OUT_53 OUT_54 OUT_55 OUT_56 OUT_57 OUT_58 OUT_59 OUT_60 OUT_61 OUT_62 OUT_63 OUT_64 OUT_65 OUT_66 OUT_67 OUT_68 OUT_69 OUT_70 OUT_71 OUT_72 OUT_73 OUT_74 OUT_75 OUT_76 OUT_77 OUT_78 OUT_79 OUT_80 OUT_81 OUT_82 OUT_83 OUT_84 OUT_85 OUT_86 OUT_87 OUT_88 OUT_89 OUT_90 OUT_91 OUT_92 OUT_93 OUT_94 OUT_95 OUT_96 OUT_97 OUT_98 OUT_99 OUT_100 OUT_101 OUT_102 OUT_103 OUT_104 OUT_105 OUT_106 OUT_107 OUT_108 OUT_109 OUT_110 OUT_111 OUT_112 OUT_113 OUT_114 OUT_115 OUT_116 OUT_117 OUT_118 OUT_119 OUT_120 OUT_121 OUT_122 OUT_123 OUT_124 OUT_125 OUT_126 OUT_127 OUT_128 OUT_129 OUT_130 OUT_131 OUT_132 OUT_133 OUT_134 OUT_135 OUT_136 OUT_137 OUT_138 OUT_139 OUT_140 OUT_141 OUT_142 OUT_143 OUT_144 OUT_145 OUT_146 OUT_147 OUT_148 OUT_149 OUT_150 OUT_151 OUT_152 OUT_153 OUT_154 OUT_155 OUT_156 OUT_157 OUT_158 OUT_159 OUT_160 OUT_161 OUT_162 OUT_163 OUT_164 OUT_165 OUT_166 OUT_167 OUT_168 OUT_169 OUT_170 OUT_171 OUT_172 OUT_173 OUT_174 OUT_175 OUT_176 OUT_177 OUT_178 OUT_179 OUT_180 OUT_181 OUT_182 OUT_183 OUT_184 OUT_185 OUT_186 OUT_187 OUT_188 OUT_189 OUT_190 OUT_191 OUT_192 OUT_193 OUT_194 OUT_195 OUT_196 OUT_197 OUT_198 OUT_199 OUT_200 OUT_201 OUT_202 OUT_203 OUT_204 OUT_205 OUT_206 OUT_207 OUT_208 OUT_209 OUT_210 OUT_211 OUT_212 OUT_213 OUT_214 OUT_215 OUT_216 OUT_217 OUT_218 OUT_219 OUT_220 OUT_221 OUT_222 OUT_223 OUT_224 OUT_225 OUT_226 OUT_227 OUT_228 OUT_229 OUT_230 OUT_231 OUT_232 OUT_233 OUT_234 OUT_235 OUT_236 OUT_237 OUT_238 OUT_239 OUT_240 OUT_241 OUT_242 OUT_243 OUT_244 OUT_245 OUT_246 OUT_247 OUT_248 OUT_249 OUT_250 OUT_251 OUT_252 OUT_253 OUT_254 OUT_255 OUT_256 OUT_257 OUT_258 OUT_259 OUT_260 OUT_261 OUT_262 OUT_263 OUT_264 OUT_265 OUT_266 OUT_267 OUT_268 OUT_269 OUT_270 OUT_271 OUT_272 OUT_273 OUT_274 OUT_275 OUT_276 OUT_277 OUT_278 OUT_279 OUT_280 OUT_281 OUT_282 OUT_283 OUT_284 OUT_285 OUT_286 OUT_287 OUT_288 OUT_289 OUT_290 OUT_291 OUT_292 OUT_293 OUT_294 OUT_295 OUT_296 OUT_297 OUT_298 OUT_299 OUT_300 OUT_301 OUT_302 OUT_303 OUT_304 OUT_305 OUT_306 OUT_307 OUT_308 OUT_309 OUT_310 OUT_311 OUT_312 OUT_313 OUT_314 OUT_315 OUT_316 OUT_317 OUT_318 OUT_319 OUT_320 OUT_321 OUT_322 OUT_323 OUT_324 OUT_325 OUT_326 OUT_327 OUT_328 OUT_329 OUT_330 OUT_331 OUT_332 OUT_333 OUT_334 OUT_335 OUT_336 OUT_337 OUT_338 OUT_339 OUT_340 OUT_341 OUT_342 OUT_343 OUT_344 OUT_345 OUT_346 OUT_347 OUT_348 OUT_349 OUT_350 OUT_351 OUT_352 OUT_353 OUT_354 OUT_355 OUT_356 OUT_357 OUT_358 OUT_359 OUT_360 OUT_361 OUT_362 OUT_363 OUT_364 OUT_365 OUT_366 OUT_367 OUT_368 OUT_369 OUT_370 OUT_371 OUT_372 OUT_373 OUT_374 OUT_375 OUT_376 OUT_377 OUT_378 OUT_379 OUT_380 OUT_381 OUT_382 OUT_383 OUT_384 OUT_385 OUT_386 OUT_387 OUT_388 OUT_389 OUT_390 OUT_391 OUT_392 OUT_393 OUT_394 OUT_395 OUT_396 OUT_397 OUT_398 OUT_399 OUT_400 OUT_401 OUT_402 OUT_403 OUT_404 OUT_405 OUT_406 OUT_407 OUT_408 OUT_409 OUT_410 OUT_411 OUT_412 OUT_413 OUT_414 OUT_415 OUT_416 OUT_417 OUT_418 OUT_419 OUT_420 OUT_421 OUT_422 OUT_423 OUT_424 OUT_425 OUT_426 OUT_427 OUT_428 OUT_429 OUT_430 OUT_431 OUT_432 OUT_433 OUT_434 OUT_435 OUT_436 OUT_437 OUT_438 OUT_439 OUT_440 OUT_441 OUT_442 OUT_443 OUT_444 OUT_445 OUT_446 OUT_447 OUT_448 OUT_449 OUT_450 OUT_451 OUT_452 OUT_453 OUT_454 OUT_455 OUT_456 OUT_457 OUT_458 OUT_459 OUT_460 OUT_461 OUT_462 OUT_463 OUT_464 OUT_465 OUT_466 OUT_467 OUT_468 OUT_469 OUT_470 OUT_471 OUT_472 OUT_473 OUT_474 OUT_475 OUT_476 OUT_477 OUT_478 OUT_479 OUT_480 OUT_481 OUT_482 OUT_483 OUT_484 OUT_485 OUT_486 OUT_487 OUT_488 OUT_489 OUT_490 OUT_491 OUT_492 OUT_493 OUT_494 OUT_495 OUT_496 OUT_497 OUT_498 OUT_499 OUT_500 OUT_501 OUT_502 OUT_503 OUT_504 OUT_505 OUT_506 OUT_507 OUT_508 OUT_509 OUT_510 OUT_511 vdd vss NBulkLine PBulkLine) decodernine

Vvdd     ( vdd     0 ) vsource dc=1
VvddBulk ( PBulkLine 0 ) vsource dc=1
Vvss     ( vss     0 ) vsource dc=0
VvssBulk ( NBulkLine 0 ) vsource dc=0

Ven (enable 0) vsource type=pwl wave=waveen

Vin0 (IN_0 0) vsource type=pwl wave=wavein_0
Vin1 (IN_1 0) vsource type=pwl wave=wavein_1
Vin2 (IN_2 0) vsource type=pwl wave=wavein_2
Vin3 (IN_3 0) vsource type=pwl wave=wavein_3
Vin4 (IN_4 0) vsource type=pwl wave=wavein_4
Vin5 (IN_5 0) vsource type=pwl wave=wavein_5
Vin6 (IN_6 0) vsource type=pwl wave=wavein_6
Vin7 (IN_7 0) vsource type=pwl wave=wavein_7
Vin8 (IN_8 0) vsource type=pwl wave=wavein_8

save IN_0 IN_1 IN_2 IN_3 IN_4 IN_5 IN_6 IN_7 IN_8 enable OUT_0 OUT_1 OUT_2 OUT_3 OUT_4 OUT_5 OUT_6 OUT_7 OUT_8 OUT_9 OUT_10 OUT_11 OUT_12 OUT_13 OUT_14 OUT_15 OUT_16 OUT_17 OUT_18 OUT_19 OUT_20 OUT_21 OUT_22 OUT_23 OUT_24 OUT_25 OUT_26 OUT_27 OUT_28 OUT_29 OUT_30 OUT_31 OUT_32 OUT_33 OUT_34 OUT_35 OUT_36 OUT_37 OUT_38 OUT_39 OUT_40 OUT_41 OUT_42 OUT_43 OUT_44 OUT_45 OUT_46 OUT_47 OUT_48 OUT_49 OUT_50 OUT_51 OUT_52 OUT_53 OUT_54 OUT_55 OUT_56 OUT_57 OUT_58 OUT_59 OUT_60 OUT_61 OUT_62 OUT_63 OUT_64 OUT_65 OUT_66 OUT_67 OUT_68 OUT_69 OUT_70 OUT_71 OUT_72 OUT_73 OUT_74 OUT_75 OUT_76 OUT_77 OUT_78 OUT_79 OUT_80 OUT_81 OUT_82 OUT_83 OUT_84 OUT_85 OUT_86 OUT_87 OUT_88 OUT_89 OUT_90 OUT_91 OUT_92 OUT_93 OUT_94 OUT_95 OUT_96 OUT_97 OUT_98 OUT_99 OUT_100 OUT_101 OUT_102 OUT_103 OUT_104 OUT_105 OUT_106 OUT_107 OUT_108 OUT_109 OUT_110 OUT_111 OUT_112 OUT_113 OUT_114 OUT_115 OUT_116 OUT_117 OUT_118 OUT_119 OUT_120 OUT_121 OUT_122 OUT_123 OUT_124 OUT_125 OUT_126 OUT_127 OUT_128 OUT_129 OUT_130 OUT_131 OUT_132 OUT_133 OUT_134 OUT_135 OUT_136 OUT_137 OUT_138 OUT_139 OUT_140 OUT_141 OUT_142 OUT_143 OUT_144 OUT_145 OUT_146 OUT_147 OUT_148 OUT_149 OUT_150 OUT_151 OUT_152 OUT_153 OUT_154 OUT_155 OUT_156 OUT_157 OUT_158 OUT_159 OUT_160 OUT_161 OUT_162 OUT_163 OUT_164 OUT_165 OUT_166 OUT_167 OUT_168 OUT_169 OUT_170 OUT_171 OUT_172 OUT_173 OUT_174 OUT_175 OUT_176 OUT_177 OUT_178 OUT_179 OUT_180 OUT_181 OUT_182 OUT_183 OUT_184 OUT_185 OUT_186 OUT_187 OUT_188 OUT_189 OUT_190 OUT_191 OUT_192 OUT_193 OUT_194 OUT_195 OUT_196 OUT_197 OUT_198 OUT_199 OUT_200 OUT_201 OUT_202 OUT_203 OUT_204 OUT_205 OUT_206 OUT_207 OUT_208 OUT_209 OUT_210 OUT_211 OUT_212 OUT_213 OUT_214 OUT_215 OUT_216 OUT_217 OUT_218 OUT_219 OUT_220 OUT_221 OUT_222 OUT_223 OUT_224 OUT_225 OUT_226 OUT_227 OUT_228 OUT_229 OUT_230 OUT_231 OUT_232 OUT_233 OUT_234 OUT_235 OUT_236 OUT_237 OUT_238 OUT_239 OUT_240 OUT_241 OUT_242 OUT_243 OUT_244 OUT_245 OUT_246 OUT_247 OUT_248 OUT_249 OUT_250 OUT_251 OUT_252 OUT_253 OUT_254 OUT_255 OUT_256 OUT_257 OUT_258 OUT_259 OUT_260 OUT_261 OUT_262 OUT_263 OUT_264 OUT_265 OUT_266 OUT_267 OUT_268 OUT_269 OUT_270 OUT_271 OUT_272 OUT_273 OUT_274 OUT_275 OUT_276 OUT_277 OUT_278 OUT_279 OUT_280 OUT_281 OUT_282 OUT_283 OUT_284 OUT_285 OUT_286 OUT_287 OUT_288 OUT_289 OUT_290 OUT_291 OUT_292 OUT_293 OUT_294 OUT_295 OUT_296 OUT_297 OUT_298 OUT_299 OUT_300 OUT_301 OUT_302 OUT_303 OUT_304 OUT_305 OUT_306 OUT_307 OUT_308 OUT_309 OUT_310 OUT_311 OUT_312 OUT_313 OUT_314 OUT_315 OUT_316 OUT_317 OUT_318 OUT_319 OUT_320 OUT_321 OUT_322 OUT_323 OUT_324 OUT_325 OUT_326 OUT_327 OUT_328 OUT_329 OUT_330 OUT_331 OUT_332 OUT_333 OUT_334 OUT_335 OUT_336 OUT_337 OUT_338 OUT_339 OUT_340 OUT_341 OUT_342 OUT_343 OUT_344 OUT_345 OUT_346 OUT_347 OUT_348 OUT_349 OUT_350 OUT_351 OUT_352 OUT_353 OUT_354 OUT_355 OUT_356 OUT_357 OUT_358 OUT_359 OUT_360 OUT_361 OUT_362 OUT_363 OUT_364 OUT_365 OUT_366 OUT_367 OUT_368 OUT_369 OUT_370 OUT_371 OUT_372 OUT_373 OUT_374 OUT_375 OUT_376 OUT_377 OUT_378 OUT_379 OUT_380 OUT_381 OUT_382 OUT_383 OUT_384 OUT_385 OUT_386 OUT_387 OUT_388 OUT_389 OUT_390 OUT_391 OUT_392 OUT_393 OUT_394 OUT_395 OUT_396 OUT_397 OUT_398 OUT_399 OUT_400 OUT_401 OUT_402 OUT_403 OUT_404 OUT_405 OUT_406 OUT_407 OUT_408 OUT_409 OUT_410 OUT_411 OUT_412 OUT_413 OUT_414 OUT_415 OUT_416 OUT_417 OUT_418 OUT_419 OUT_420 OUT_421 OUT_422 OUT_423 OUT_424 OUT_425 OUT_426 OUT_427 OUT_428 OUT_429 OUT_430 OUT_431 OUT_432 OUT_433 OUT_434 OUT_435 OUT_436 OUT_437 OUT_438 OUT_439 OUT_440 OUT_441 OUT_442 OUT_443 OUT_444 OUT_445 OUT_446 OUT_447 OUT_448 OUT_449 OUT_450 OUT_451 OUT_452 OUT_453 OUT_454 OUT_455 OUT_456 OUT_457 OUT_458 OUT_459 OUT_460 OUT_461 OUT_462 OUT_463 OUT_464 OUT_465 OUT_466 OUT_467 OUT_468 OUT_469 OUT_470 OUT_471 OUT_472 OUT_473 OUT_474 OUT_475 OUT_476 OUT_477 OUT_478 OUT_479 OUT_480 OUT_481 OUT_482 OUT_483 OUT_484 OUT_485 OUT_486 OUT_487 OUT_488 OUT_489 OUT_490 OUT_491 OUT_492 OUT_493 OUT_494 OUT_495 OUT_496 OUT_497 OUT_498 OUT_499 OUT_500 OUT_501 OUT_502 OUT_503 OUT_504 OUT_505 OUT_506 OUT_507 OUT_508 OUT_509 OUT_510 OUT_511 Vvdd:currents

mymc montecarlo
+ donominal=no variations=mismatch
+ seed=1234
+ numruns=numberofruns
+ firstrun=1
+ saveprocessparams=yes
+ savefamilyplots= yes {
mytran tran stop=simlength
}

option1 options rawfmt = psfascii

