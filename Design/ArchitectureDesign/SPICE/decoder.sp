simulator lang=spectre

include "CMOSlogic.scs"
subckt decoderone (IN_0 enable OUT_0 OUT_1 vdd vss NBulkLine PBulkLine)
parameters multstage_1 multstage_2


xinv (enable enablebar vdd vss PBulkLine NBulkLine) inverter

xinv0 (IN_0 OUT_1pre vdd vss PBulkLine NBulkLine) inverter mult=multstage_1
xnor1 (OUT_1pre enablebar OUT_1 vdd vss PBulkLine NBulkLine) twonor mult=multstage_2
xnor2 (IN_0 enablebar OUT_0 vdd vss PBulkLine NBulkLine) twonor mult=multstage_2

ends decoder


subckt decodertwo (IN_0 IN_1 enable OUT_0 OUT_1 OUT_2 OUT_3 vdd vss NBulkLine PBulkLine)
parameters multstage_1 multstage_2


xinv (enable enablebar vdd vss PBulkLine NBulkLine) inverter

xdec (IN_0 IN_1 enablebar OUT_0 OUT_1 OUT_2 OUT_3 vdd vss PBulkLine NBulkLine) twotofourdecoder multinv=multstage_1 multnor=multstage_2

ends decoder


subckt decoderthree (IN_0 IN_1 IN_2 enable OUT_0 OUT_1 OUT_2 OUT_3 OUT_4 OUT_5 OUT_6 OUT_7 vdd vss NBulkLine PBulkLine)
parameters multstage_1 multstage_2 multstage_3


xinv (enable enablebar vdd vss PBulkLine NBulkLine) inverter

xdec (IN_0 IN_1 IN_2 enablebar OUT_0 OUT_1 OUT_2 OUT_3 OUT_4 OUT_5 OUT_6 OUT_7 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_3

ends decoder


subckt decoderfour (IN_0 IN_1 IN_2 IN_3 enable OUT_0 OUT_1 OUT_2 OUT_3 OUT_4 OUT_5 OUT_6 OUT_7 OUT_8 OUT_9 OUT_10 OUT_11 OUT_12 OUT_13 OUT_14 OUT_15 vdd vss NBulkLine PBulkLine)
parameters multstage_1 multstage_2 multstage_3 multstage_4


xinv (enable enablebar vdd vss PBulkLine NBulkLine) inverter

xdec (IN_2 IN_3 enablebar temp_0 temp_1 temp_2 temp_3 vdd vss PBulkLine NBulkLine) twotofourdecoder multinv=multstage_1 multnor=multstage_2
xinv0 (temp_0 tempbar_0 vdd vss PBulkLine NBulkLine) inverter mult=multstage_3
xdec0 (IN_0 IN_1 tempbar_0 OUT_0 OUT_1 OUT_2 OUT_3 vdd vss PBulkLine NBulkLine) twotofourdecoder multinv=multstage_1 multnor=multstage_4
xinv1 (temp_1 tempbar_1 vdd vss PBulkLine NBulkLine) inverter mult=multstage_3
xdec1 (IN_0 IN_1 tempbar_1 OUT_4 OUT_5 OUT_6 OUT_7 vdd vss PBulkLine NBulkLine) twotofourdecoder multinv=multstage_1 multnor=multstage_4
xinv2 (temp_2 tempbar_2 vdd vss PBulkLine NBulkLine) inverter mult=multstage_3
xdec2 (IN_0 IN_1 tempbar_2 OUT_8 OUT_9 OUT_10 OUT_11 vdd vss PBulkLine NBulkLine) twotofourdecoder multinv=multstage_1 multnor=multstage_4
xinv3 (temp_3 tempbar_3 vdd vss PBulkLine NBulkLine) inverter mult=multstage_3
xdec3 (IN_0 IN_1 tempbar_3 OUT_12 OUT_13 OUT_14 OUT_15 vdd vss PBulkLine NBulkLine) twotofourdecoder multinv=multstage_1 multnor=multstage_4

ends decoder


subckt decoderfive (IN_0 IN_1 IN_2 IN_3 IN_4 enable OUT_0 OUT_1 OUT_2 OUT_3 OUT_4 OUT_5 OUT_6 OUT_7 OUT_8 OUT_9 OUT_10 OUT_11 OUT_12 OUT_13 OUT_14 OUT_15 OUT_16 OUT_17 OUT_18 OUT_19 OUT_20 OUT_21 OUT_22 OUT_23 OUT_24 OUT_25 OUT_26 OUT_27 OUT_28 OUT_29 OUT_30 OUT_31 vdd vss NBulkLine PBulkLine)
parameters multstage_1 multstage_2 multstage_3 multstage_4


xinv (enable enablebar vdd vss PBulkLine NBulkLine) inverter

xdec (IN_3 IN_4 enablebar temp_0 temp_1 temp_2 temp_3 vdd vss PBulkLine NBulkLine) twotofourdecoder multinv=multstage_1 multnor=multstage_2
xinv0 (temp_0 tempbar_0 vdd vss PBulkLine NBulkLine) inverter mult=multstage_3
xdec0 (IN_0 IN_1 IN_2 tempbar_0 OUT_0 OUT_1 OUT_2 OUT_3 OUT_4 OUT_5 OUT_6 OUT_7 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_4
xinv1 (temp_1 tempbar_1 vdd vss PBulkLine NBulkLine) inverter mult=multstage_3
xdec1 (IN_0 IN_1 IN_2 tempbar_1 OUT_8 OUT_9 OUT_10 OUT_11 OUT_12 OUT_13 OUT_14 OUT_15 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_4
xinv2 (temp_2 tempbar_2 vdd vss PBulkLine NBulkLine) inverter mult=multstage_3
xdec2 (IN_0 IN_1 IN_2 tempbar_2 OUT_16 OUT_17 OUT_18 OUT_19 OUT_20 OUT_21 OUT_22 OUT_23 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_4
xinv3 (temp_3 tempbar_3 vdd vss PBulkLine NBulkLine) inverter mult=multstage_3
xdec3 (IN_0 IN_1 IN_2 tempbar_3 OUT_24 OUT_25 OUT_26 OUT_27 OUT_28 OUT_29 OUT_30 OUT_31 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_4

ends decoder


subckt decodersix (IN_0 IN_1 IN_2 IN_3 IN_4 IN_5 enable OUT_0 OUT_1 OUT_2 OUT_3 OUT_4 OUT_5 OUT_6 OUT_7 OUT_8 OUT_9 OUT_10 OUT_11 OUT_12 OUT_13 OUT_14 OUT_15 OUT_16 OUT_17 OUT_18 OUT_19 OUT_20 OUT_21 OUT_22 OUT_23 OUT_24 OUT_25 OUT_26 OUT_27 OUT_28 OUT_29 OUT_30 OUT_31 OUT_32 OUT_33 OUT_34 OUT_35 OUT_36 OUT_37 OUT_38 OUT_39 OUT_40 OUT_41 OUT_42 OUT_43 OUT_44 OUT_45 OUT_46 OUT_47 OUT_48 OUT_49 OUT_50 OUT_51 OUT_52 OUT_53 OUT_54 OUT_55 OUT_56 OUT_57 OUT_58 OUT_59 OUT_60 OUT_61 OUT_62 OUT_63 vdd vss NBulkLine PBulkLine)
parameters multstage_1 multstage_2 multstage_3 multstage_4 multstage_5


xinv (enable enablebar vdd vss PBulkLine NBulkLine) inverter

xdec (IN_3 IN_4 IN_5 enablebar temp_0 temp_1 temp_2 temp_3 temp_4 temp_5 temp_6 temp_7 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_3
xinv0 (temp_0 tempbar_0 vdd vss PBulkLine NBulkLine) inverter mult=multstage_4
xdec0 (IN_0 IN_1 IN_2 tempbar_0 OUT_0 OUT_1 OUT_2 OUT_3 OUT_4 OUT_5 OUT_6 OUT_7 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_5
xinv1 (temp_1 tempbar_1 vdd vss PBulkLine NBulkLine) inverter mult=multstage_4
xdec1 (IN_0 IN_1 IN_2 tempbar_1 OUT_8 OUT_9 OUT_10 OUT_11 OUT_12 OUT_13 OUT_14 OUT_15 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_5
xinv2 (temp_2 tempbar_2 vdd vss PBulkLine NBulkLine) inverter mult=multstage_4
xdec2 (IN_0 IN_1 IN_2 tempbar_2 OUT_16 OUT_17 OUT_18 OUT_19 OUT_20 OUT_21 OUT_22 OUT_23 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_5
xinv3 (temp_3 tempbar_3 vdd vss PBulkLine NBulkLine) inverter mult=multstage_4
xdec3 (IN_0 IN_1 IN_2 tempbar_3 OUT_24 OUT_25 OUT_26 OUT_27 OUT_28 OUT_29 OUT_30 OUT_31 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_5
xinv4 (temp_4 tempbar_4 vdd vss PBulkLine NBulkLine) inverter mult=multstage_4
xdec4 (IN_0 IN_1 IN_2 tempbar_4 OUT_32 OUT_33 OUT_34 OUT_35 OUT_36 OUT_37 OUT_38 OUT_39 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_5
xinv5 (temp_5 tempbar_5 vdd vss PBulkLine NBulkLine) inverter mult=multstage_4
xdec5 (IN_0 IN_1 IN_2 tempbar_5 OUT_40 OUT_41 OUT_42 OUT_43 OUT_44 OUT_45 OUT_46 OUT_47 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_5
xinv6 (temp_6 tempbar_6 vdd vss PBulkLine NBulkLine) inverter mult=multstage_4
xdec6 (IN_0 IN_1 IN_2 tempbar_6 OUT_48 OUT_49 OUT_50 OUT_51 OUT_52 OUT_53 OUT_54 OUT_55 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_5
xinv7 (temp_7 tempbar_7 vdd vss PBulkLine NBulkLine) inverter mult=multstage_4
xdec7 (IN_0 IN_1 IN_2 tempbar_7 OUT_56 OUT_57 OUT_58 OUT_59 OUT_60 OUT_61 OUT_62 OUT_63 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_5

ends decoder


subckt decoderseven (IN_0 IN_1 IN_2 IN_3 IN_4 IN_5 IN_6 enable OUT_0 OUT_1 OUT_2 OUT_3 OUT_4 OUT_5 OUT_6 OUT_7 OUT_8 OUT_9 OUT_10 OUT_11 OUT_12 OUT_13 OUT_14 OUT_15 OUT_16 OUT_17 OUT_18 OUT_19 OUT_20 OUT_21 OUT_22 OUT_23 OUT_24 OUT_25 OUT_26 OUT_27 OUT_28 OUT_29 OUT_30 OUT_31 OUT_32 OUT_33 OUT_34 OUT_35 OUT_36 OUT_37 OUT_38 OUT_39 OUT_40 OUT_41 OUT_42 OUT_43 OUT_44 OUT_45 OUT_46 OUT_47 OUT_48 OUT_49 OUT_50 OUT_51 OUT_52 OUT_53 OUT_54 OUT_55 OUT_56 OUT_57 OUT_58 OUT_59 OUT_60 OUT_61 OUT_62 OUT_63 OUT_64 OUT_65 OUT_66 OUT_67 OUT_68 OUT_69 OUT_70 OUT_71 OUT_72 OUT_73 OUT_74 OUT_75 OUT_76 OUT_77 OUT_78 OUT_79 OUT_80 OUT_81 OUT_82 OUT_83 OUT_84 OUT_85 OUT_86 OUT_87 OUT_88 OUT_89 OUT_90 OUT_91 OUT_92 OUT_93 OUT_94 OUT_95 OUT_96 OUT_97 OUT_98 OUT_99 OUT_100 OUT_101 OUT_102 OUT_103 OUT_104 OUT_105 OUT_106 OUT_107 OUT_108 OUT_109 OUT_110 OUT_111 OUT_112 OUT_113 OUT_114 OUT_115 OUT_116 OUT_117 OUT_118 OUT_119 OUT_120 OUT_121 OUT_122 OUT_123 OUT_124 OUT_125 OUT_126 OUT_127 vdd vss NBulkLine PBulkLine)
parameters multstage_1 multstage_2 multstage_3 multstage_4 multstage_5 multstage_6


xdec (IN_3 IN_4 IN_5 IN_6 enable temp_0 temp_1 temp_2 temp_3 temp_4 temp_5 temp_6 temp_7 temp_8 temp_9 temp_10 temp_11 temp_12 temp_13 temp_14 temp_15 vdd vss NBulkLine PBulkLine) decoderfour multstage_1=multstage_1 multstage_2=multstage_2 multstage_3=multstage_3 multstage_4=multstage_4
xinv0 (temp_0 tempbar_0 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec0 (IN_0 IN_1 IN_2 tempbar_0 OUT_0 OUT_1 OUT_2 OUT_3 OUT_4 OUT_5 OUT_6 OUT_7 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_6
xinv1 (temp_1 tempbar_1 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec1 (IN_0 IN_1 IN_2 tempbar_1 OUT_8 OUT_9 OUT_10 OUT_11 OUT_12 OUT_13 OUT_14 OUT_15 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_6
xinv2 (temp_2 tempbar_2 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec2 (IN_0 IN_1 IN_2 tempbar_2 OUT_16 OUT_17 OUT_18 OUT_19 OUT_20 OUT_21 OUT_22 OUT_23 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_6
xinv3 (temp_3 tempbar_3 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec3 (IN_0 IN_1 IN_2 tempbar_3 OUT_24 OUT_25 OUT_26 OUT_27 OUT_28 OUT_29 OUT_30 OUT_31 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_6
xinv4 (temp_4 tempbar_4 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec4 (IN_0 IN_1 IN_2 tempbar_4 OUT_32 OUT_33 OUT_34 OUT_35 OUT_36 OUT_37 OUT_38 OUT_39 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_6
xinv5 (temp_5 tempbar_5 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec5 (IN_0 IN_1 IN_2 tempbar_5 OUT_40 OUT_41 OUT_42 OUT_43 OUT_44 OUT_45 OUT_46 OUT_47 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_6
xinv6 (temp_6 tempbar_6 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec6 (IN_0 IN_1 IN_2 tempbar_6 OUT_48 OUT_49 OUT_50 OUT_51 OUT_52 OUT_53 OUT_54 OUT_55 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_6
xinv7 (temp_7 tempbar_7 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec7 (IN_0 IN_1 IN_2 tempbar_7 OUT_56 OUT_57 OUT_58 OUT_59 OUT_60 OUT_61 OUT_62 OUT_63 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_6
xinv8 (temp_8 tempbar_8 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec8 (IN_0 IN_1 IN_2 tempbar_8 OUT_64 OUT_65 OUT_66 OUT_67 OUT_68 OUT_69 OUT_70 OUT_71 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_6
xinv9 (temp_9 tempbar_9 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec9 (IN_0 IN_1 IN_2 tempbar_9 OUT_72 OUT_73 OUT_74 OUT_75 OUT_76 OUT_77 OUT_78 OUT_79 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_6
xinv10 (temp_10 tempbar_10 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec10 (IN_0 IN_1 IN_2 tempbar_10 OUT_80 OUT_81 OUT_82 OUT_83 OUT_84 OUT_85 OUT_86 OUT_87 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_6
xinv11 (temp_11 tempbar_11 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec11 (IN_0 IN_1 IN_2 tempbar_11 OUT_88 OUT_89 OUT_90 OUT_91 OUT_92 OUT_93 OUT_94 OUT_95 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_6
xinv12 (temp_12 tempbar_12 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec12 (IN_0 IN_1 IN_2 tempbar_12 OUT_96 OUT_97 OUT_98 OUT_99 OUT_100 OUT_101 OUT_102 OUT_103 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_6
xinv13 (temp_13 tempbar_13 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec13 (IN_0 IN_1 IN_2 tempbar_13 OUT_104 OUT_105 OUT_106 OUT_107 OUT_108 OUT_109 OUT_110 OUT_111 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_6
xinv14 (temp_14 tempbar_14 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec14 (IN_0 IN_1 IN_2 tempbar_14 OUT_112 OUT_113 OUT_114 OUT_115 OUT_116 OUT_117 OUT_118 OUT_119 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_6
xinv15 (temp_15 tempbar_15 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec15 (IN_0 IN_1 IN_2 tempbar_15 OUT_120 OUT_121 OUT_122 OUT_123 OUT_124 OUT_125 OUT_126 OUT_127 vdd vss PBulkLine NBulkLine) threetoeightdecoder multinv=multstage_1 multnand=multstage_2 multnor=multstage_6

ends decoder


subckt decodereight (IN_0 IN_1 IN_2 IN_3 IN_4 IN_5 IN_6 IN_7 enable OUT_0 OUT_1 OUT_2 OUT_3 OUT_4 OUT_5 OUT_6 OUT_7 OUT_8 OUT_9 OUT_10 OUT_11 OUT_12 OUT_13 OUT_14 OUT_15 OUT_16 OUT_17 OUT_18 OUT_19 OUT_20 OUT_21 OUT_22 OUT_23 OUT_24 OUT_25 OUT_26 OUT_27 OUT_28 OUT_29 OUT_30 OUT_31 OUT_32 OUT_33 OUT_34 OUT_35 OUT_36 OUT_37 OUT_38 OUT_39 OUT_40 OUT_41 OUT_42 OUT_43 OUT_44 OUT_45 OUT_46 OUT_47 OUT_48 OUT_49 OUT_50 OUT_51 OUT_52 OUT_53 OUT_54 OUT_55 OUT_56 OUT_57 OUT_58 OUT_59 OUT_60 OUT_61 OUT_62 OUT_63 OUT_64 OUT_65 OUT_66 OUT_67 OUT_68 OUT_69 OUT_70 OUT_71 OUT_72 OUT_73 OUT_74 OUT_75 OUT_76 OUT_77 OUT_78 OUT_79 OUT_80 OUT_81 OUT_82 OUT_83 OUT_84 OUT_85 OUT_86 OUT_87 OUT_88 OUT_89 OUT_90 OUT_91 OUT_92 OUT_93 OUT_94 OUT_95 OUT_96 OUT_97 OUT_98 OUT_99 OUT_100 OUT_101 OUT_102 OUT_103 OUT_104 OUT_105 OUT_106 OUT_107 OUT_108 OUT_109 OUT_110 OUT_111 OUT_112 OUT_113 OUT_114 OUT_115 OUT_116 OUT_117 OUT_118 OUT_119 OUT_120 OUT_121 OUT_122 OUT_123 OUT_124 OUT_125 OUT_126 OUT_127 OUT_128 OUT_129 OUT_130 OUT_131 OUT_132 OUT_133 OUT_134 OUT_135 OUT_136 OUT_137 OUT_138 OUT_139 OUT_140 OUT_141 OUT_142 OUT_143 OUT_144 OUT_145 OUT_146 OUT_147 OUT_148 OUT_149 OUT_150 OUT_151 OUT_152 OUT_153 OUT_154 OUT_155 OUT_156 OUT_157 OUT_158 OUT_159 OUT_160 OUT_161 OUT_162 OUT_163 OUT_164 OUT_165 OUT_166 OUT_167 OUT_168 OUT_169 OUT_170 OUT_171 OUT_172 OUT_173 OUT_174 OUT_175 OUT_176 OUT_177 OUT_178 OUT_179 OUT_180 OUT_181 OUT_182 OUT_183 OUT_184 OUT_185 OUT_186 OUT_187 OUT_188 OUT_189 OUT_190 OUT_191 OUT_192 OUT_193 OUT_194 OUT_195 OUT_196 OUT_197 OUT_198 OUT_199 OUT_200 OUT_201 OUT_202 OUT_203 OUT_204 OUT_205 OUT_206 OUT_207 OUT_208 OUT_209 OUT_210 OUT_211 OUT_212 OUT_213 OUT_214 OUT_215 OUT_216 OUT_217 OUT_218 OUT_219 OUT_220 OUT_221 OUT_222 OUT_223 OUT_224 OUT_225 OUT_226 OUT_227 OUT_228 OUT_229 OUT_230 OUT_231 OUT_232 OUT_233 OUT_234 OUT_235 OUT_236 OUT_237 OUT_238 OUT_239 OUT_240 OUT_241 OUT_242 OUT_243 OUT_244 OUT_245 OUT_246 OUT_247 OUT_248 OUT_249 OUT_250 OUT_251 OUT_252 OUT_253 OUT_254 OUT_255 vdd vss NBulkLine PBulkLine)
parameters multstage_1 multstage_2 multstage_3 multstage_4 multstage_5 multstage_6 multstage_7 multstage_8


xdec (IN_4 IN_5 IN_6 IN_7 enable temp_0 temp_1 temp_2 temp_3 temp_4 temp_5 temp_6 temp_7 temp_8 temp_9 temp_10 temp_11 temp_12 temp_13 temp_14 temp_15 vdd vss NBulkLine PBulkLine) decoderfour multstage_1=multstage_1 multstage_2=multstage_2 multstage_3=multstage_3 multstage_4=multstage_4
xinv0 (temp_0 tempbar_0 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec0 (IN_0 IN_1 IN_2 IN_3 tempbar_0 OUT_0 OUT_1 OUT_2 OUT_3 OUT_4 OUT_5 OUT_6 OUT_7 OUT_8 OUT_9 OUT_10 OUT_11 OUT_12 OUT_13 OUT_14 OUT_15 vdd vss PBulkLine NBulkLine) decoderfour multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv1 (temp_1 tempbar_1 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec1 (IN_0 IN_1 IN_2 IN_3 tempbar_1 OUT_16 OUT_17 OUT_18 OUT_19 OUT_20 OUT_21 OUT_22 OUT_23 OUT_24 OUT_25 OUT_26 OUT_27 OUT_28 OUT_29 OUT_30 OUT_31 vdd vss PBulkLine NBulkLine) decoderfour multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv2 (temp_2 tempbar_2 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec2 (IN_0 IN_1 IN_2 IN_3 tempbar_2 OUT_32 OUT_33 OUT_34 OUT_35 OUT_36 OUT_37 OUT_38 OUT_39 OUT_40 OUT_41 OUT_42 OUT_43 OUT_44 OUT_45 OUT_46 OUT_47 vdd vss PBulkLine NBulkLine) decoderfour multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv3 (temp_3 tempbar_3 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec3 (IN_0 IN_1 IN_2 IN_3 tempbar_3 OUT_48 OUT_49 OUT_50 OUT_51 OUT_52 OUT_53 OUT_54 OUT_55 OUT_56 OUT_57 OUT_58 OUT_59 OUT_60 OUT_61 OUT_62 OUT_63 vdd vss PBulkLine NBulkLine) decoderfour multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv4 (temp_4 tempbar_4 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec4 (IN_0 IN_1 IN_2 IN_3 tempbar_4 OUT_64 OUT_65 OUT_66 OUT_67 OUT_68 OUT_69 OUT_70 OUT_71 OUT_72 OUT_73 OUT_74 OUT_75 OUT_76 OUT_77 OUT_78 OUT_79 vdd vss PBulkLine NBulkLine) decoderfour multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv5 (temp_5 tempbar_5 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec5 (IN_0 IN_1 IN_2 IN_3 tempbar_5 OUT_80 OUT_81 OUT_82 OUT_83 OUT_84 OUT_85 OUT_86 OUT_87 OUT_88 OUT_89 OUT_90 OUT_91 OUT_92 OUT_93 OUT_94 OUT_95 vdd vss PBulkLine NBulkLine) decoderfour multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv6 (temp_6 tempbar_6 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec6 (IN_0 IN_1 IN_2 IN_3 tempbar_6 OUT_96 OUT_97 OUT_98 OUT_99 OUT_100 OUT_101 OUT_102 OUT_103 OUT_104 OUT_105 OUT_106 OUT_107 OUT_108 OUT_109 OUT_110 OUT_111 vdd vss PBulkLine NBulkLine) decoderfour multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv7 (temp_7 tempbar_7 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec7 (IN_0 IN_1 IN_2 IN_3 tempbar_7 OUT_112 OUT_113 OUT_114 OUT_115 OUT_116 OUT_117 OUT_118 OUT_119 OUT_120 OUT_121 OUT_122 OUT_123 OUT_124 OUT_125 OUT_126 OUT_127 vdd vss PBulkLine NBulkLine) decoderfour multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv8 (temp_8 tempbar_8 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec8 (IN_0 IN_1 IN_2 IN_3 tempbar_8 OUT_128 OUT_129 OUT_130 OUT_131 OUT_132 OUT_133 OUT_134 OUT_135 OUT_136 OUT_137 OUT_138 OUT_139 OUT_140 OUT_141 OUT_142 OUT_143 vdd vss PBulkLine NBulkLine) decoderfour multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv9 (temp_9 tempbar_9 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec9 (IN_0 IN_1 IN_2 IN_3 tempbar_9 OUT_144 OUT_145 OUT_146 OUT_147 OUT_148 OUT_149 OUT_150 OUT_151 OUT_152 OUT_153 OUT_154 OUT_155 OUT_156 OUT_157 OUT_158 OUT_159 vdd vss PBulkLine NBulkLine) decoderfour multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv10 (temp_10 tempbar_10 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec10 (IN_0 IN_1 IN_2 IN_3 tempbar_10 OUT_160 OUT_161 OUT_162 OUT_163 OUT_164 OUT_165 OUT_166 OUT_167 OUT_168 OUT_169 OUT_170 OUT_171 OUT_172 OUT_173 OUT_174 OUT_175 vdd vss PBulkLine NBulkLine) decoderfour multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv11 (temp_11 tempbar_11 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec11 (IN_0 IN_1 IN_2 IN_3 tempbar_11 OUT_176 OUT_177 OUT_178 OUT_179 OUT_180 OUT_181 OUT_182 OUT_183 OUT_184 OUT_185 OUT_186 OUT_187 OUT_188 OUT_189 OUT_190 OUT_191 vdd vss PBulkLine NBulkLine) decoderfour multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv12 (temp_12 tempbar_12 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec12 (IN_0 IN_1 IN_2 IN_3 tempbar_12 OUT_192 OUT_193 OUT_194 OUT_195 OUT_196 OUT_197 OUT_198 OUT_199 OUT_200 OUT_201 OUT_202 OUT_203 OUT_204 OUT_205 OUT_206 OUT_207 vdd vss PBulkLine NBulkLine) decoderfour multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv13 (temp_13 tempbar_13 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec13 (IN_0 IN_1 IN_2 IN_3 tempbar_13 OUT_208 OUT_209 OUT_210 OUT_211 OUT_212 OUT_213 OUT_214 OUT_215 OUT_216 OUT_217 OUT_218 OUT_219 OUT_220 OUT_221 OUT_222 OUT_223 vdd vss PBulkLine NBulkLine) decoderfour multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv14 (temp_14 tempbar_14 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec14 (IN_0 IN_1 IN_2 IN_3 tempbar_14 OUT_224 OUT_225 OUT_226 OUT_227 OUT_228 OUT_229 OUT_230 OUT_231 OUT_232 OUT_233 OUT_234 OUT_235 OUT_236 OUT_237 OUT_238 OUT_239 vdd vss PBulkLine NBulkLine) decoderfour multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv15 (temp_15 tempbar_15 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec15 (IN_0 IN_1 IN_2 IN_3 tempbar_15 OUT_240 OUT_241 OUT_242 OUT_243 OUT_244 OUT_245 OUT_246 OUT_247 OUT_248 OUT_249 OUT_250 OUT_251 OUT_252 OUT_253 OUT_254 OUT_255 vdd vss PBulkLine NBulkLine) decoderfour multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8

ends decoder


subckt decodernine (IN_0 IN_1 IN_2 IN_3 IN_4 IN_5 IN_6 IN_7 IN_8 enable OUT_0 OUT_1 OUT_2 OUT_3 OUT_4 OUT_5 OUT_6 OUT_7 OUT_8 OUT_9 OUT_10 OUT_11 OUT_12 OUT_13 OUT_14 OUT_15 OUT_16 OUT_17 OUT_18 OUT_19 OUT_20 OUT_21 OUT_22 OUT_23 OUT_24 OUT_25 OUT_26 OUT_27 OUT_28 OUT_29 OUT_30 OUT_31 OUT_32 OUT_33 OUT_34 OUT_35 OUT_36 OUT_37 OUT_38 OUT_39 OUT_40 OUT_41 OUT_42 OUT_43 OUT_44 OUT_45 OUT_46 OUT_47 OUT_48 OUT_49 OUT_50 OUT_51 OUT_52 OUT_53 OUT_54 OUT_55 OUT_56 OUT_57 OUT_58 OUT_59 OUT_60 OUT_61 OUT_62 OUT_63 OUT_64 OUT_65 OUT_66 OUT_67 OUT_68 OUT_69 OUT_70 OUT_71 OUT_72 OUT_73 OUT_74 OUT_75 OUT_76 OUT_77 OUT_78 OUT_79 OUT_80 OUT_81 OUT_82 OUT_83 OUT_84 OUT_85 OUT_86 OUT_87 OUT_88 OUT_89 OUT_90 OUT_91 OUT_92 OUT_93 OUT_94 OUT_95 OUT_96 OUT_97 OUT_98 OUT_99 OUT_100 OUT_101 OUT_102 OUT_103 OUT_104 OUT_105 OUT_106 OUT_107 OUT_108 OUT_109 OUT_110 OUT_111 OUT_112 OUT_113 OUT_114 OUT_115 OUT_116 OUT_117 OUT_118 OUT_119 OUT_120 OUT_121 OUT_122 OUT_123 OUT_124 OUT_125 OUT_126 OUT_127 OUT_128 OUT_129 OUT_130 OUT_131 OUT_132 OUT_133 OUT_134 OUT_135 OUT_136 OUT_137 OUT_138 OUT_139 OUT_140 OUT_141 OUT_142 OUT_143 OUT_144 OUT_145 OUT_146 OUT_147 OUT_148 OUT_149 OUT_150 OUT_151 OUT_152 OUT_153 OUT_154 OUT_155 OUT_156 OUT_157 OUT_158 OUT_159 OUT_160 OUT_161 OUT_162 OUT_163 OUT_164 OUT_165 OUT_166 OUT_167 OUT_168 OUT_169 OUT_170 OUT_171 OUT_172 OUT_173 OUT_174 OUT_175 OUT_176 OUT_177 OUT_178 OUT_179 OUT_180 OUT_181 OUT_182 OUT_183 OUT_184 OUT_185 OUT_186 OUT_187 OUT_188 OUT_189 OUT_190 OUT_191 OUT_192 OUT_193 OUT_194 OUT_195 OUT_196 OUT_197 OUT_198 OUT_199 OUT_200 OUT_201 OUT_202 OUT_203 OUT_204 OUT_205 OUT_206 OUT_207 OUT_208 OUT_209 OUT_210 OUT_211 OUT_212 OUT_213 OUT_214 OUT_215 OUT_216 OUT_217 OUT_218 OUT_219 OUT_220 OUT_221 OUT_222 OUT_223 OUT_224 OUT_225 OUT_226 OUT_227 OUT_228 OUT_229 OUT_230 OUT_231 OUT_232 OUT_233 OUT_234 OUT_235 OUT_236 OUT_237 OUT_238 OUT_239 OUT_240 OUT_241 OUT_242 OUT_243 OUT_244 OUT_245 OUT_246 OUT_247 OUT_248 OUT_249 OUT_250 OUT_251 OUT_252 OUT_253 OUT_254 OUT_255 OUT_256 OUT_257 OUT_258 OUT_259 OUT_260 OUT_261 OUT_262 OUT_263 OUT_264 OUT_265 OUT_266 OUT_267 OUT_268 OUT_269 OUT_270 OUT_271 OUT_272 OUT_273 OUT_274 OUT_275 OUT_276 OUT_277 OUT_278 OUT_279 OUT_280 OUT_281 OUT_282 OUT_283 OUT_284 OUT_285 OUT_286 OUT_287 OUT_288 OUT_289 OUT_290 OUT_291 OUT_292 OUT_293 OUT_294 OUT_295 OUT_296 OUT_297 OUT_298 OUT_299 OUT_300 OUT_301 OUT_302 OUT_303 OUT_304 OUT_305 OUT_306 OUT_307 OUT_308 OUT_309 OUT_310 OUT_311 OUT_312 OUT_313 OUT_314 OUT_315 OUT_316 OUT_317 OUT_318 OUT_319 OUT_320 OUT_321 OUT_322 OUT_323 OUT_324 OUT_325 OUT_326 OUT_327 OUT_328 OUT_329 OUT_330 OUT_331 OUT_332 OUT_333 OUT_334 OUT_335 OUT_336 OUT_337 OUT_338 OUT_339 OUT_340 OUT_341 OUT_342 OUT_343 OUT_344 OUT_345 OUT_346 OUT_347 OUT_348 OUT_349 OUT_350 OUT_351 OUT_352 OUT_353 OUT_354 OUT_355 OUT_356 OUT_357 OUT_358 OUT_359 OUT_360 OUT_361 OUT_362 OUT_363 OUT_364 OUT_365 OUT_366 OUT_367 OUT_368 OUT_369 OUT_370 OUT_371 OUT_372 OUT_373 OUT_374 OUT_375 OUT_376 OUT_377 OUT_378 OUT_379 OUT_380 OUT_381 OUT_382 OUT_383 OUT_384 OUT_385 OUT_386 OUT_387 OUT_388 OUT_389 OUT_390 OUT_391 OUT_392 OUT_393 OUT_394 OUT_395 OUT_396 OUT_397 OUT_398 OUT_399 OUT_400 OUT_401 OUT_402 OUT_403 OUT_404 OUT_405 OUT_406 OUT_407 OUT_408 OUT_409 OUT_410 OUT_411 OUT_412 OUT_413 OUT_414 OUT_415 OUT_416 OUT_417 OUT_418 OUT_419 OUT_420 OUT_421 OUT_422 OUT_423 OUT_424 OUT_425 OUT_426 OUT_427 OUT_428 OUT_429 OUT_430 OUT_431 OUT_432 OUT_433 OUT_434 OUT_435 OUT_436 OUT_437 OUT_438 OUT_439 OUT_440 OUT_441 OUT_442 OUT_443 OUT_444 OUT_445 OUT_446 OUT_447 OUT_448 OUT_449 OUT_450 OUT_451 OUT_452 OUT_453 OUT_454 OUT_455 OUT_456 OUT_457 OUT_458 OUT_459 OUT_460 OUT_461 OUT_462 OUT_463 OUT_464 OUT_465 OUT_466 OUT_467 OUT_468 OUT_469 OUT_470 OUT_471 OUT_472 OUT_473 OUT_474 OUT_475 OUT_476 OUT_477 OUT_478 OUT_479 OUT_480 OUT_481 OUT_482 OUT_483 OUT_484 OUT_485 OUT_486 OUT_487 OUT_488 OUT_489 OUT_490 OUT_491 OUT_492 OUT_493 OUT_494 OUT_495 OUT_496 OUT_497 OUT_498 OUT_499 OUT_500 OUT_501 OUT_502 OUT_503 OUT_504 OUT_505 OUT_506 OUT_507 OUT_508 OUT_509 OUT_510 OUT_511 vdd vss NBulkLine PBulkLine)
parameters multstage_1 multstage_2 multstage_3 multstage_4 multstage_5 multstage_6 multstage_7 multstage_8


xdec (IN_5 IN_6 IN_7 IN_8 enable temp_0 temp_1 temp_2 temp_3 temp_4 temp_5 temp_6 temp_7 temp_8 temp_9 temp_10 temp_11 temp_12 temp_13 temp_14 temp_15 vdd vss NBulkLine PBulkLine) decoderfour multstage_1=multstage_1 multstage_2=multstage_2 multstage_3=multstage_3 multstage_4=multstage_4
xinv0 (temp_0 tempbar_0 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec0 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_0 OUT_0 OUT_1 OUT_2 OUT_3 OUT_4 OUT_5 OUT_6 OUT_7 OUT_8 OUT_9 OUT_10 OUT_11 OUT_12 OUT_13 OUT_14 OUT_15 OUT_16 OUT_17 OUT_18 OUT_19 OUT_20 OUT_21 OUT_22 OUT_23 OUT_24 OUT_25 OUT_26 OUT_27 OUT_28 OUT_29 OUT_30 OUT_31 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv1 (temp_1 tempbar_1 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec1 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_1 OUT_32 OUT_33 OUT_34 OUT_35 OUT_36 OUT_37 OUT_38 OUT_39 OUT_40 OUT_41 OUT_42 OUT_43 OUT_44 OUT_45 OUT_46 OUT_47 OUT_48 OUT_49 OUT_50 OUT_51 OUT_52 OUT_53 OUT_54 OUT_55 OUT_56 OUT_57 OUT_58 OUT_59 OUT_60 OUT_61 OUT_62 OUT_63 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv2 (temp_2 tempbar_2 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec2 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_2 OUT_64 OUT_65 OUT_66 OUT_67 OUT_68 OUT_69 OUT_70 OUT_71 OUT_72 OUT_73 OUT_74 OUT_75 OUT_76 OUT_77 OUT_78 OUT_79 OUT_80 OUT_81 OUT_82 OUT_83 OUT_84 OUT_85 OUT_86 OUT_87 OUT_88 OUT_89 OUT_90 OUT_91 OUT_92 OUT_93 OUT_94 OUT_95 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv3 (temp_3 tempbar_3 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec3 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_3 OUT_96 OUT_97 OUT_98 OUT_99 OUT_100 OUT_101 OUT_102 OUT_103 OUT_104 OUT_105 OUT_106 OUT_107 OUT_108 OUT_109 OUT_110 OUT_111 OUT_112 OUT_113 OUT_114 OUT_115 OUT_116 OUT_117 OUT_118 OUT_119 OUT_120 OUT_121 OUT_122 OUT_123 OUT_124 OUT_125 OUT_126 OUT_127 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv4 (temp_4 tempbar_4 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec4 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_4 OUT_128 OUT_129 OUT_130 OUT_131 OUT_132 OUT_133 OUT_134 OUT_135 OUT_136 OUT_137 OUT_138 OUT_139 OUT_140 OUT_141 OUT_142 OUT_143 OUT_144 OUT_145 OUT_146 OUT_147 OUT_148 OUT_149 OUT_150 OUT_151 OUT_152 OUT_153 OUT_154 OUT_155 OUT_156 OUT_157 OUT_158 OUT_159 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv5 (temp_5 tempbar_5 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec5 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_5 OUT_160 OUT_161 OUT_162 OUT_163 OUT_164 OUT_165 OUT_166 OUT_167 OUT_168 OUT_169 OUT_170 OUT_171 OUT_172 OUT_173 OUT_174 OUT_175 OUT_176 OUT_177 OUT_178 OUT_179 OUT_180 OUT_181 OUT_182 OUT_183 OUT_184 OUT_185 OUT_186 OUT_187 OUT_188 OUT_189 OUT_190 OUT_191 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv6 (temp_6 tempbar_6 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec6 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_6 OUT_192 OUT_193 OUT_194 OUT_195 OUT_196 OUT_197 OUT_198 OUT_199 OUT_200 OUT_201 OUT_202 OUT_203 OUT_204 OUT_205 OUT_206 OUT_207 OUT_208 OUT_209 OUT_210 OUT_211 OUT_212 OUT_213 OUT_214 OUT_215 OUT_216 OUT_217 OUT_218 OUT_219 OUT_220 OUT_221 OUT_222 OUT_223 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv7 (temp_7 tempbar_7 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec7 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_7 OUT_224 OUT_225 OUT_226 OUT_227 OUT_228 OUT_229 OUT_230 OUT_231 OUT_232 OUT_233 OUT_234 OUT_235 OUT_236 OUT_237 OUT_238 OUT_239 OUT_240 OUT_241 OUT_242 OUT_243 OUT_244 OUT_245 OUT_246 OUT_247 OUT_248 OUT_249 OUT_250 OUT_251 OUT_252 OUT_253 OUT_254 OUT_255 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv8 (temp_8 tempbar_8 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec8 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_8 OUT_256 OUT_257 OUT_258 OUT_259 OUT_260 OUT_261 OUT_262 OUT_263 OUT_264 OUT_265 OUT_266 OUT_267 OUT_268 OUT_269 OUT_270 OUT_271 OUT_272 OUT_273 OUT_274 OUT_275 OUT_276 OUT_277 OUT_278 OUT_279 OUT_280 OUT_281 OUT_282 OUT_283 OUT_284 OUT_285 OUT_286 OUT_287 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv9 (temp_9 tempbar_9 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec9 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_9 OUT_288 OUT_289 OUT_290 OUT_291 OUT_292 OUT_293 OUT_294 OUT_295 OUT_296 OUT_297 OUT_298 OUT_299 OUT_300 OUT_301 OUT_302 OUT_303 OUT_304 OUT_305 OUT_306 OUT_307 OUT_308 OUT_309 OUT_310 OUT_311 OUT_312 OUT_313 OUT_314 OUT_315 OUT_316 OUT_317 OUT_318 OUT_319 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv10 (temp_10 tempbar_10 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec10 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_10 OUT_320 OUT_321 OUT_322 OUT_323 OUT_324 OUT_325 OUT_326 OUT_327 OUT_328 OUT_329 OUT_330 OUT_331 OUT_332 OUT_333 OUT_334 OUT_335 OUT_336 OUT_337 OUT_338 OUT_339 OUT_340 OUT_341 OUT_342 OUT_343 OUT_344 OUT_345 OUT_346 OUT_347 OUT_348 OUT_349 OUT_350 OUT_351 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv11 (temp_11 tempbar_11 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec11 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_11 OUT_352 OUT_353 OUT_354 OUT_355 OUT_356 OUT_357 OUT_358 OUT_359 OUT_360 OUT_361 OUT_362 OUT_363 OUT_364 OUT_365 OUT_366 OUT_367 OUT_368 OUT_369 OUT_370 OUT_371 OUT_372 OUT_373 OUT_374 OUT_375 OUT_376 OUT_377 OUT_378 OUT_379 OUT_380 OUT_381 OUT_382 OUT_383 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv12 (temp_12 tempbar_12 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec12 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_12 OUT_384 OUT_385 OUT_386 OUT_387 OUT_388 OUT_389 OUT_390 OUT_391 OUT_392 OUT_393 OUT_394 OUT_395 OUT_396 OUT_397 OUT_398 OUT_399 OUT_400 OUT_401 OUT_402 OUT_403 OUT_404 OUT_405 OUT_406 OUT_407 OUT_408 OUT_409 OUT_410 OUT_411 OUT_412 OUT_413 OUT_414 OUT_415 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv13 (temp_13 tempbar_13 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec13 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_13 OUT_416 OUT_417 OUT_418 OUT_419 OUT_420 OUT_421 OUT_422 OUT_423 OUT_424 OUT_425 OUT_426 OUT_427 OUT_428 OUT_429 OUT_430 OUT_431 OUT_432 OUT_433 OUT_434 OUT_435 OUT_436 OUT_437 OUT_438 OUT_439 OUT_440 OUT_441 OUT_442 OUT_443 OUT_444 OUT_445 OUT_446 OUT_447 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv14 (temp_14 tempbar_14 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec14 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_14 OUT_448 OUT_449 OUT_450 OUT_451 OUT_452 OUT_453 OUT_454 OUT_455 OUT_456 OUT_457 OUT_458 OUT_459 OUT_460 OUT_461 OUT_462 OUT_463 OUT_464 OUT_465 OUT_466 OUT_467 OUT_468 OUT_469 OUT_470 OUT_471 OUT_472 OUT_473 OUT_474 OUT_475 OUT_476 OUT_477 OUT_478 OUT_479 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv15 (temp_15 tempbar_15 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec15 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_15 OUT_480 OUT_481 OUT_482 OUT_483 OUT_484 OUT_485 OUT_486 OUT_487 OUT_488 OUT_489 OUT_490 OUT_491 OUT_492 OUT_493 OUT_494 OUT_495 OUT_496 OUT_497 OUT_498 OUT_499 OUT_500 OUT_501 OUT_502 OUT_503 OUT_504 OUT_505 OUT_506 OUT_507 OUT_508 OUT_509 OUT_510 OUT_511 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8

ends decoder


subckt decoderten (IN_0 IN_1 IN_2 IN_3 IN_4 IN_5 IN_6 IN_7 IN_8 IN_9 enable OUT_0 OUT_1 OUT_2 OUT_3 OUT_4 OUT_5 OUT_6 OUT_7 OUT_8 OUT_9 OUT_10 OUT_11 OUT_12 OUT_13 OUT_14 OUT_15 OUT_16 OUT_17 OUT_18 OUT_19 OUT_20 OUT_21 OUT_22 OUT_23 OUT_24 OUT_25 OUT_26 OUT_27 OUT_28 OUT_29 OUT_30 OUT_31 OUT_32 OUT_33 OUT_34 OUT_35 OUT_36 OUT_37 OUT_38 OUT_39 OUT_40 OUT_41 OUT_42 OUT_43 OUT_44 OUT_45 OUT_46 OUT_47 OUT_48 OUT_49 OUT_50 OUT_51 OUT_52 OUT_53 OUT_54 OUT_55 OUT_56 OUT_57 OUT_58 OUT_59 OUT_60 OUT_61 OUT_62 OUT_63 OUT_64 OUT_65 OUT_66 OUT_67 OUT_68 OUT_69 OUT_70 OUT_71 OUT_72 OUT_73 OUT_74 OUT_75 OUT_76 OUT_77 OUT_78 OUT_79 OUT_80 OUT_81 OUT_82 OUT_83 OUT_84 OUT_85 OUT_86 OUT_87 OUT_88 OUT_89 OUT_90 OUT_91 OUT_92 OUT_93 OUT_94 OUT_95 OUT_96 OUT_97 OUT_98 OUT_99 OUT_100 OUT_101 OUT_102 OUT_103 OUT_104 OUT_105 OUT_106 OUT_107 OUT_108 OUT_109 OUT_110 OUT_111 OUT_112 OUT_113 OUT_114 OUT_115 OUT_116 OUT_117 OUT_118 OUT_119 OUT_120 OUT_121 OUT_122 OUT_123 OUT_124 OUT_125 OUT_126 OUT_127 OUT_128 OUT_129 OUT_130 OUT_131 OUT_132 OUT_133 OUT_134 OUT_135 OUT_136 OUT_137 OUT_138 OUT_139 OUT_140 OUT_141 OUT_142 OUT_143 OUT_144 OUT_145 OUT_146 OUT_147 OUT_148 OUT_149 OUT_150 OUT_151 OUT_152 OUT_153 OUT_154 OUT_155 OUT_156 OUT_157 OUT_158 OUT_159 OUT_160 OUT_161 OUT_162 OUT_163 OUT_164 OUT_165 OUT_166 OUT_167 OUT_168 OUT_169 OUT_170 OUT_171 OUT_172 OUT_173 OUT_174 OUT_175 OUT_176 OUT_177 OUT_178 OUT_179 OUT_180 OUT_181 OUT_182 OUT_183 OUT_184 OUT_185 OUT_186 OUT_187 OUT_188 OUT_189 OUT_190 OUT_191 OUT_192 OUT_193 OUT_194 OUT_195 OUT_196 OUT_197 OUT_198 OUT_199 OUT_200 OUT_201 OUT_202 OUT_203 OUT_204 OUT_205 OUT_206 OUT_207 OUT_208 OUT_209 OUT_210 OUT_211 OUT_212 OUT_213 OUT_214 OUT_215 OUT_216 OUT_217 OUT_218 OUT_219 OUT_220 OUT_221 OUT_222 OUT_223 OUT_224 OUT_225 OUT_226 OUT_227 OUT_228 OUT_229 OUT_230 OUT_231 OUT_232 OUT_233 OUT_234 OUT_235 OUT_236 OUT_237 OUT_238 OUT_239 OUT_240 OUT_241 OUT_242 OUT_243 OUT_244 OUT_245 OUT_246 OUT_247 OUT_248 OUT_249 OUT_250 OUT_251 OUT_252 OUT_253 OUT_254 OUT_255 OUT_256 OUT_257 OUT_258 OUT_259 OUT_260 OUT_261 OUT_262 OUT_263 OUT_264 OUT_265 OUT_266 OUT_267 OUT_268 OUT_269 OUT_270 OUT_271 OUT_272 OUT_273 OUT_274 OUT_275 OUT_276 OUT_277 OUT_278 OUT_279 OUT_280 OUT_281 OUT_282 OUT_283 OUT_284 OUT_285 OUT_286 OUT_287 OUT_288 OUT_289 OUT_290 OUT_291 OUT_292 OUT_293 OUT_294 OUT_295 OUT_296 OUT_297 OUT_298 OUT_299 OUT_300 OUT_301 OUT_302 OUT_303 OUT_304 OUT_305 OUT_306 OUT_307 OUT_308 OUT_309 OUT_310 OUT_311 OUT_312 OUT_313 OUT_314 OUT_315 OUT_316 OUT_317 OUT_318 OUT_319 OUT_320 OUT_321 OUT_322 OUT_323 OUT_324 OUT_325 OUT_326 OUT_327 OUT_328 OUT_329 OUT_330 OUT_331 OUT_332 OUT_333 OUT_334 OUT_335 OUT_336 OUT_337 OUT_338 OUT_339 OUT_340 OUT_341 OUT_342 OUT_343 OUT_344 OUT_345 OUT_346 OUT_347 OUT_348 OUT_349 OUT_350 OUT_351 OUT_352 OUT_353 OUT_354 OUT_355 OUT_356 OUT_357 OUT_358 OUT_359 OUT_360 OUT_361 OUT_362 OUT_363 OUT_364 OUT_365 OUT_366 OUT_367 OUT_368 OUT_369 OUT_370 OUT_371 OUT_372 OUT_373 OUT_374 OUT_375 OUT_376 OUT_377 OUT_378 OUT_379 OUT_380 OUT_381 OUT_382 OUT_383 OUT_384 OUT_385 OUT_386 OUT_387 OUT_388 OUT_389 OUT_390 OUT_391 OUT_392 OUT_393 OUT_394 OUT_395 OUT_396 OUT_397 OUT_398 OUT_399 OUT_400 OUT_401 OUT_402 OUT_403 OUT_404 OUT_405 OUT_406 OUT_407 OUT_408 OUT_409 OUT_410 OUT_411 OUT_412 OUT_413 OUT_414 OUT_415 OUT_416 OUT_417 OUT_418 OUT_419 OUT_420 OUT_421 OUT_422 OUT_423 OUT_424 OUT_425 OUT_426 OUT_427 OUT_428 OUT_429 OUT_430 OUT_431 OUT_432 OUT_433 OUT_434 OUT_435 OUT_436 OUT_437 OUT_438 OUT_439 OUT_440 OUT_441 OUT_442 OUT_443 OUT_444 OUT_445 OUT_446 OUT_447 OUT_448 OUT_449 OUT_450 OUT_451 OUT_452 OUT_453 OUT_454 OUT_455 OUT_456 OUT_457 OUT_458 OUT_459 OUT_460 OUT_461 OUT_462 OUT_463 OUT_464 OUT_465 OUT_466 OUT_467 OUT_468 OUT_469 OUT_470 OUT_471 OUT_472 OUT_473 OUT_474 OUT_475 OUT_476 OUT_477 OUT_478 OUT_479 OUT_480 OUT_481 OUT_482 OUT_483 OUT_484 OUT_485 OUT_486 OUT_487 OUT_488 OUT_489 OUT_490 OUT_491 OUT_492 OUT_493 OUT_494 OUT_495 OUT_496 OUT_497 OUT_498 OUT_499 OUT_500 OUT_501 OUT_502 OUT_503 OUT_504 OUT_505 OUT_506 OUT_507 OUT_508 OUT_509 OUT_510 OUT_511 OUT_512 OUT_513 OUT_514 OUT_515 OUT_516 OUT_517 OUT_518 OUT_519 OUT_520 OUT_521 OUT_522 OUT_523 OUT_524 OUT_525 OUT_526 OUT_527 OUT_528 OUT_529 OUT_530 OUT_531 OUT_532 OUT_533 OUT_534 OUT_535 OUT_536 OUT_537 OUT_538 OUT_539 OUT_540 OUT_541 OUT_542 OUT_543 OUT_544 OUT_545 OUT_546 OUT_547 OUT_548 OUT_549 OUT_550 OUT_551 OUT_552 OUT_553 OUT_554 OUT_555 OUT_556 OUT_557 OUT_558 OUT_559 OUT_560 OUT_561 OUT_562 OUT_563 OUT_564 OUT_565 OUT_566 OUT_567 OUT_568 OUT_569 OUT_570 OUT_571 OUT_572 OUT_573 OUT_574 OUT_575 OUT_576 OUT_577 OUT_578 OUT_579 OUT_580 OUT_581 OUT_582 OUT_583 OUT_584 OUT_585 OUT_586 OUT_587 OUT_588 OUT_589 OUT_590 OUT_591 OUT_592 OUT_593 OUT_594 OUT_595 OUT_596 OUT_597 OUT_598 OUT_599 OUT_600 OUT_601 OUT_602 OUT_603 OUT_604 OUT_605 OUT_606 OUT_607 OUT_608 OUT_609 OUT_610 OUT_611 OUT_612 OUT_613 OUT_614 OUT_615 OUT_616 OUT_617 OUT_618 OUT_619 OUT_620 OUT_621 OUT_622 OUT_623 OUT_624 OUT_625 OUT_626 OUT_627 OUT_628 OUT_629 OUT_630 OUT_631 OUT_632 OUT_633 OUT_634 OUT_635 OUT_636 OUT_637 OUT_638 OUT_639 OUT_640 OUT_641 OUT_642 OUT_643 OUT_644 OUT_645 OUT_646 OUT_647 OUT_648 OUT_649 OUT_650 OUT_651 OUT_652 OUT_653 OUT_654 OUT_655 OUT_656 OUT_657 OUT_658 OUT_659 OUT_660 OUT_661 OUT_662 OUT_663 OUT_664 OUT_665 OUT_666 OUT_667 OUT_668 OUT_669 OUT_670 OUT_671 OUT_672 OUT_673 OUT_674 OUT_675 OUT_676 OUT_677 OUT_678 OUT_679 OUT_680 OUT_681 OUT_682 OUT_683 OUT_684 OUT_685 OUT_686 OUT_687 OUT_688 OUT_689 OUT_690 OUT_691 OUT_692 OUT_693 OUT_694 OUT_695 OUT_696 OUT_697 OUT_698 OUT_699 OUT_700 OUT_701 OUT_702 OUT_703 OUT_704 OUT_705 OUT_706 OUT_707 OUT_708 OUT_709 OUT_710 OUT_711 OUT_712 OUT_713 OUT_714 OUT_715 OUT_716 OUT_717 OUT_718 OUT_719 OUT_720 OUT_721 OUT_722 OUT_723 OUT_724 OUT_725 OUT_726 OUT_727 OUT_728 OUT_729 OUT_730 OUT_731 OUT_732 OUT_733 OUT_734 OUT_735 OUT_736 OUT_737 OUT_738 OUT_739 OUT_740 OUT_741 OUT_742 OUT_743 OUT_744 OUT_745 OUT_746 OUT_747 OUT_748 OUT_749 OUT_750 OUT_751 OUT_752 OUT_753 OUT_754 OUT_755 OUT_756 OUT_757 OUT_758 OUT_759 OUT_760 OUT_761 OUT_762 OUT_763 OUT_764 OUT_765 OUT_766 OUT_767 OUT_768 OUT_769 OUT_770 OUT_771 OUT_772 OUT_773 OUT_774 OUT_775 OUT_776 OUT_777 OUT_778 OUT_779 OUT_780 OUT_781 OUT_782 OUT_783 OUT_784 OUT_785 OUT_786 OUT_787 OUT_788 OUT_789 OUT_790 OUT_791 OUT_792 OUT_793 OUT_794 OUT_795 OUT_796 OUT_797 OUT_798 OUT_799 OUT_800 OUT_801 OUT_802 OUT_803 OUT_804 OUT_805 OUT_806 OUT_807 OUT_808 OUT_809 OUT_810 OUT_811 OUT_812 OUT_813 OUT_814 OUT_815 OUT_816 OUT_817 OUT_818 OUT_819 OUT_820 OUT_821 OUT_822 OUT_823 OUT_824 OUT_825 OUT_826 OUT_827 OUT_828 OUT_829 OUT_830 OUT_831 OUT_832 OUT_833 OUT_834 OUT_835 OUT_836 OUT_837 OUT_838 OUT_839 OUT_840 OUT_841 OUT_842 OUT_843 OUT_844 OUT_845 OUT_846 OUT_847 OUT_848 OUT_849 OUT_850 OUT_851 OUT_852 OUT_853 OUT_854 OUT_855 OUT_856 OUT_857 OUT_858 OUT_859 OUT_860 OUT_861 OUT_862 OUT_863 OUT_864 OUT_865 OUT_866 OUT_867 OUT_868 OUT_869 OUT_870 OUT_871 OUT_872 OUT_873 OUT_874 OUT_875 OUT_876 OUT_877 OUT_878 OUT_879 OUT_880 OUT_881 OUT_882 OUT_883 OUT_884 OUT_885 OUT_886 OUT_887 OUT_888 OUT_889 OUT_890 OUT_891 OUT_892 OUT_893 OUT_894 OUT_895 OUT_896 OUT_897 OUT_898 OUT_899 OUT_900 OUT_901 OUT_902 OUT_903 OUT_904 OUT_905 OUT_906 OUT_907 OUT_908 OUT_909 OUT_910 OUT_911 OUT_912 OUT_913 OUT_914 OUT_915 OUT_916 OUT_917 OUT_918 OUT_919 OUT_920 OUT_921 OUT_922 OUT_923 OUT_924 OUT_925 OUT_926 OUT_927 OUT_928 OUT_929 OUT_930 OUT_931 OUT_932 OUT_933 OUT_934 OUT_935 OUT_936 OUT_937 OUT_938 OUT_939 OUT_940 OUT_941 OUT_942 OUT_943 OUT_944 OUT_945 OUT_946 OUT_947 OUT_948 OUT_949 OUT_950 OUT_951 OUT_952 OUT_953 OUT_954 OUT_955 OUT_956 OUT_957 OUT_958 OUT_959 OUT_960 OUT_961 OUT_962 OUT_963 OUT_964 OUT_965 OUT_966 OUT_967 OUT_968 OUT_969 OUT_970 OUT_971 OUT_972 OUT_973 OUT_974 OUT_975 OUT_976 OUT_977 OUT_978 OUT_979 OUT_980 OUT_981 OUT_982 OUT_983 OUT_984 OUT_985 OUT_986 OUT_987 OUT_988 OUT_989 OUT_990 OUT_991 OUT_992 OUT_993 OUT_994 OUT_995 OUT_996 OUT_997 OUT_998 OUT_999 OUT_1000 OUT_1001 OUT_1002 OUT_1003 OUT_1004 OUT_1005 OUT_1006 OUT_1007 OUT_1008 OUT_1009 OUT_1010 OUT_1011 OUT_1012 OUT_1013 OUT_1014 OUT_1015 OUT_1016 OUT_1017 OUT_1018 OUT_1019 OUT_1020 OUT_1021 OUT_1022 OUT_1023 vdd vss NBulkLine PBulkLine)
parameters multstage_1 multstage_2 multstage_3 multstage_4 multstage_5 multstage_6 multstage_7 multstage_8


xdec (IN_5 IN_6 IN_7 IN_8 IN_9 enable temp_0 temp_1 temp_2 temp_3 temp_4 temp_5 temp_6 temp_7 temp_8 temp_9 temp_10 temp_11 temp_12 temp_13 temp_14 temp_15 temp_16 temp_17 temp_18 temp_19 temp_20 temp_21 temp_22 temp_23 temp_24 temp_25 temp_26 temp_27 temp_28 temp_29 temp_30 temp_31 vdd vss NBulkLine PBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_2 multstage_3=multstage_3 multstage_4=multstage_4
xinv0 (temp_0 tempbar_0 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec0 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_0 OUT_0 OUT_1 OUT_2 OUT_3 OUT_4 OUT_5 OUT_6 OUT_7 OUT_8 OUT_9 OUT_10 OUT_11 OUT_12 OUT_13 OUT_14 OUT_15 OUT_16 OUT_17 OUT_18 OUT_19 OUT_20 OUT_21 OUT_22 OUT_23 OUT_24 OUT_25 OUT_26 OUT_27 OUT_28 OUT_29 OUT_30 OUT_31 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv1 (temp_1 tempbar_1 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec1 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_1 OUT_32 OUT_33 OUT_34 OUT_35 OUT_36 OUT_37 OUT_38 OUT_39 OUT_40 OUT_41 OUT_42 OUT_43 OUT_44 OUT_45 OUT_46 OUT_47 OUT_48 OUT_49 OUT_50 OUT_51 OUT_52 OUT_53 OUT_54 OUT_55 OUT_56 OUT_57 OUT_58 OUT_59 OUT_60 OUT_61 OUT_62 OUT_63 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv2 (temp_2 tempbar_2 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec2 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_2 OUT_64 OUT_65 OUT_66 OUT_67 OUT_68 OUT_69 OUT_70 OUT_71 OUT_72 OUT_73 OUT_74 OUT_75 OUT_76 OUT_77 OUT_78 OUT_79 OUT_80 OUT_81 OUT_82 OUT_83 OUT_84 OUT_85 OUT_86 OUT_87 OUT_88 OUT_89 OUT_90 OUT_91 OUT_92 OUT_93 OUT_94 OUT_95 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv3 (temp_3 tempbar_3 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec3 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_3 OUT_96 OUT_97 OUT_98 OUT_99 OUT_100 OUT_101 OUT_102 OUT_103 OUT_104 OUT_105 OUT_106 OUT_107 OUT_108 OUT_109 OUT_110 OUT_111 OUT_112 OUT_113 OUT_114 OUT_115 OUT_116 OUT_117 OUT_118 OUT_119 OUT_120 OUT_121 OUT_122 OUT_123 OUT_124 OUT_125 OUT_126 OUT_127 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv4 (temp_4 tempbar_4 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec4 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_4 OUT_128 OUT_129 OUT_130 OUT_131 OUT_132 OUT_133 OUT_134 OUT_135 OUT_136 OUT_137 OUT_138 OUT_139 OUT_140 OUT_141 OUT_142 OUT_143 OUT_144 OUT_145 OUT_146 OUT_147 OUT_148 OUT_149 OUT_150 OUT_151 OUT_152 OUT_153 OUT_154 OUT_155 OUT_156 OUT_157 OUT_158 OUT_159 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv5 (temp_5 tempbar_5 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec5 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_5 OUT_160 OUT_161 OUT_162 OUT_163 OUT_164 OUT_165 OUT_166 OUT_167 OUT_168 OUT_169 OUT_170 OUT_171 OUT_172 OUT_173 OUT_174 OUT_175 OUT_176 OUT_177 OUT_178 OUT_179 OUT_180 OUT_181 OUT_182 OUT_183 OUT_184 OUT_185 OUT_186 OUT_187 OUT_188 OUT_189 OUT_190 OUT_191 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv6 (temp_6 tempbar_6 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec6 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_6 OUT_192 OUT_193 OUT_194 OUT_195 OUT_196 OUT_197 OUT_198 OUT_199 OUT_200 OUT_201 OUT_202 OUT_203 OUT_204 OUT_205 OUT_206 OUT_207 OUT_208 OUT_209 OUT_210 OUT_211 OUT_212 OUT_213 OUT_214 OUT_215 OUT_216 OUT_217 OUT_218 OUT_219 OUT_220 OUT_221 OUT_222 OUT_223 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv7 (temp_7 tempbar_7 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec7 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_7 OUT_224 OUT_225 OUT_226 OUT_227 OUT_228 OUT_229 OUT_230 OUT_231 OUT_232 OUT_233 OUT_234 OUT_235 OUT_236 OUT_237 OUT_238 OUT_239 OUT_240 OUT_241 OUT_242 OUT_243 OUT_244 OUT_245 OUT_246 OUT_247 OUT_248 OUT_249 OUT_250 OUT_251 OUT_252 OUT_253 OUT_254 OUT_255 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv8 (temp_8 tempbar_8 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec8 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_8 OUT_256 OUT_257 OUT_258 OUT_259 OUT_260 OUT_261 OUT_262 OUT_263 OUT_264 OUT_265 OUT_266 OUT_267 OUT_268 OUT_269 OUT_270 OUT_271 OUT_272 OUT_273 OUT_274 OUT_275 OUT_276 OUT_277 OUT_278 OUT_279 OUT_280 OUT_281 OUT_282 OUT_283 OUT_284 OUT_285 OUT_286 OUT_287 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv9 (temp_9 tempbar_9 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec9 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_9 OUT_288 OUT_289 OUT_290 OUT_291 OUT_292 OUT_293 OUT_294 OUT_295 OUT_296 OUT_297 OUT_298 OUT_299 OUT_300 OUT_301 OUT_302 OUT_303 OUT_304 OUT_305 OUT_306 OUT_307 OUT_308 OUT_309 OUT_310 OUT_311 OUT_312 OUT_313 OUT_314 OUT_315 OUT_316 OUT_317 OUT_318 OUT_319 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv10 (temp_10 tempbar_10 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec10 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_10 OUT_320 OUT_321 OUT_322 OUT_323 OUT_324 OUT_325 OUT_326 OUT_327 OUT_328 OUT_329 OUT_330 OUT_331 OUT_332 OUT_333 OUT_334 OUT_335 OUT_336 OUT_337 OUT_338 OUT_339 OUT_340 OUT_341 OUT_342 OUT_343 OUT_344 OUT_345 OUT_346 OUT_347 OUT_348 OUT_349 OUT_350 OUT_351 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv11 (temp_11 tempbar_11 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec11 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_11 OUT_352 OUT_353 OUT_354 OUT_355 OUT_356 OUT_357 OUT_358 OUT_359 OUT_360 OUT_361 OUT_362 OUT_363 OUT_364 OUT_365 OUT_366 OUT_367 OUT_368 OUT_369 OUT_370 OUT_371 OUT_372 OUT_373 OUT_374 OUT_375 OUT_376 OUT_377 OUT_378 OUT_379 OUT_380 OUT_381 OUT_382 OUT_383 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv12 (temp_12 tempbar_12 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec12 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_12 OUT_384 OUT_385 OUT_386 OUT_387 OUT_388 OUT_389 OUT_390 OUT_391 OUT_392 OUT_393 OUT_394 OUT_395 OUT_396 OUT_397 OUT_398 OUT_399 OUT_400 OUT_401 OUT_402 OUT_403 OUT_404 OUT_405 OUT_406 OUT_407 OUT_408 OUT_409 OUT_410 OUT_411 OUT_412 OUT_413 OUT_414 OUT_415 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv13 (temp_13 tempbar_13 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec13 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_13 OUT_416 OUT_417 OUT_418 OUT_419 OUT_420 OUT_421 OUT_422 OUT_423 OUT_424 OUT_425 OUT_426 OUT_427 OUT_428 OUT_429 OUT_430 OUT_431 OUT_432 OUT_433 OUT_434 OUT_435 OUT_436 OUT_437 OUT_438 OUT_439 OUT_440 OUT_441 OUT_442 OUT_443 OUT_444 OUT_445 OUT_446 OUT_447 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv14 (temp_14 tempbar_14 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec14 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_14 OUT_448 OUT_449 OUT_450 OUT_451 OUT_452 OUT_453 OUT_454 OUT_455 OUT_456 OUT_457 OUT_458 OUT_459 OUT_460 OUT_461 OUT_462 OUT_463 OUT_464 OUT_465 OUT_466 OUT_467 OUT_468 OUT_469 OUT_470 OUT_471 OUT_472 OUT_473 OUT_474 OUT_475 OUT_476 OUT_477 OUT_478 OUT_479 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv15 (temp_15 tempbar_15 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec15 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_15 OUT_480 OUT_481 OUT_482 OUT_483 OUT_484 OUT_485 OUT_486 OUT_487 OUT_488 OUT_489 OUT_490 OUT_491 OUT_492 OUT_493 OUT_494 OUT_495 OUT_496 OUT_497 OUT_498 OUT_499 OUT_500 OUT_501 OUT_502 OUT_503 OUT_504 OUT_505 OUT_506 OUT_507 OUT_508 OUT_509 OUT_510 OUT_511 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv16 (temp_16 tempbar_16 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec16 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_16 OUT_512 OUT_513 OUT_514 OUT_515 OUT_516 OUT_517 OUT_518 OUT_519 OUT_520 OUT_521 OUT_522 OUT_523 OUT_524 OUT_525 OUT_526 OUT_527 OUT_528 OUT_529 OUT_530 OUT_531 OUT_532 OUT_533 OUT_534 OUT_535 OUT_536 OUT_537 OUT_538 OUT_539 OUT_540 OUT_541 OUT_542 OUT_543 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv17 (temp_17 tempbar_17 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec17 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_17 OUT_544 OUT_545 OUT_546 OUT_547 OUT_548 OUT_549 OUT_550 OUT_551 OUT_552 OUT_553 OUT_554 OUT_555 OUT_556 OUT_557 OUT_558 OUT_559 OUT_560 OUT_561 OUT_562 OUT_563 OUT_564 OUT_565 OUT_566 OUT_567 OUT_568 OUT_569 OUT_570 OUT_571 OUT_572 OUT_573 OUT_574 OUT_575 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv18 (temp_18 tempbar_18 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec18 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_18 OUT_576 OUT_577 OUT_578 OUT_579 OUT_580 OUT_581 OUT_582 OUT_583 OUT_584 OUT_585 OUT_586 OUT_587 OUT_588 OUT_589 OUT_590 OUT_591 OUT_592 OUT_593 OUT_594 OUT_595 OUT_596 OUT_597 OUT_598 OUT_599 OUT_600 OUT_601 OUT_602 OUT_603 OUT_604 OUT_605 OUT_606 OUT_607 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv19 (temp_19 tempbar_19 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec19 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_19 OUT_608 OUT_609 OUT_610 OUT_611 OUT_612 OUT_613 OUT_614 OUT_615 OUT_616 OUT_617 OUT_618 OUT_619 OUT_620 OUT_621 OUT_622 OUT_623 OUT_624 OUT_625 OUT_626 OUT_627 OUT_628 OUT_629 OUT_630 OUT_631 OUT_632 OUT_633 OUT_634 OUT_635 OUT_636 OUT_637 OUT_638 OUT_639 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv20 (temp_20 tempbar_20 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec20 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_20 OUT_640 OUT_641 OUT_642 OUT_643 OUT_644 OUT_645 OUT_646 OUT_647 OUT_648 OUT_649 OUT_650 OUT_651 OUT_652 OUT_653 OUT_654 OUT_655 OUT_656 OUT_657 OUT_658 OUT_659 OUT_660 OUT_661 OUT_662 OUT_663 OUT_664 OUT_665 OUT_666 OUT_667 OUT_668 OUT_669 OUT_670 OUT_671 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv21 (temp_21 tempbar_21 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec21 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_21 OUT_672 OUT_673 OUT_674 OUT_675 OUT_676 OUT_677 OUT_678 OUT_679 OUT_680 OUT_681 OUT_682 OUT_683 OUT_684 OUT_685 OUT_686 OUT_687 OUT_688 OUT_689 OUT_690 OUT_691 OUT_692 OUT_693 OUT_694 OUT_695 OUT_696 OUT_697 OUT_698 OUT_699 OUT_700 OUT_701 OUT_702 OUT_703 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv22 (temp_22 tempbar_22 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec22 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_22 OUT_704 OUT_705 OUT_706 OUT_707 OUT_708 OUT_709 OUT_710 OUT_711 OUT_712 OUT_713 OUT_714 OUT_715 OUT_716 OUT_717 OUT_718 OUT_719 OUT_720 OUT_721 OUT_722 OUT_723 OUT_724 OUT_725 OUT_726 OUT_727 OUT_728 OUT_729 OUT_730 OUT_731 OUT_732 OUT_733 OUT_734 OUT_735 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv23 (temp_23 tempbar_23 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec23 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_23 OUT_736 OUT_737 OUT_738 OUT_739 OUT_740 OUT_741 OUT_742 OUT_743 OUT_744 OUT_745 OUT_746 OUT_747 OUT_748 OUT_749 OUT_750 OUT_751 OUT_752 OUT_753 OUT_754 OUT_755 OUT_756 OUT_757 OUT_758 OUT_759 OUT_760 OUT_761 OUT_762 OUT_763 OUT_764 OUT_765 OUT_766 OUT_767 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv24 (temp_24 tempbar_24 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec24 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_24 OUT_768 OUT_769 OUT_770 OUT_771 OUT_772 OUT_773 OUT_774 OUT_775 OUT_776 OUT_777 OUT_778 OUT_779 OUT_780 OUT_781 OUT_782 OUT_783 OUT_784 OUT_785 OUT_786 OUT_787 OUT_788 OUT_789 OUT_790 OUT_791 OUT_792 OUT_793 OUT_794 OUT_795 OUT_796 OUT_797 OUT_798 OUT_799 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv25 (temp_25 tempbar_25 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec25 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_25 OUT_800 OUT_801 OUT_802 OUT_803 OUT_804 OUT_805 OUT_806 OUT_807 OUT_808 OUT_809 OUT_810 OUT_811 OUT_812 OUT_813 OUT_814 OUT_815 OUT_816 OUT_817 OUT_818 OUT_819 OUT_820 OUT_821 OUT_822 OUT_823 OUT_824 OUT_825 OUT_826 OUT_827 OUT_828 OUT_829 OUT_830 OUT_831 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv26 (temp_26 tempbar_26 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec26 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_26 OUT_832 OUT_833 OUT_834 OUT_835 OUT_836 OUT_837 OUT_838 OUT_839 OUT_840 OUT_841 OUT_842 OUT_843 OUT_844 OUT_845 OUT_846 OUT_847 OUT_848 OUT_849 OUT_850 OUT_851 OUT_852 OUT_853 OUT_854 OUT_855 OUT_856 OUT_857 OUT_858 OUT_859 OUT_860 OUT_861 OUT_862 OUT_863 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv27 (temp_27 tempbar_27 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec27 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_27 OUT_864 OUT_865 OUT_866 OUT_867 OUT_868 OUT_869 OUT_870 OUT_871 OUT_872 OUT_873 OUT_874 OUT_875 OUT_876 OUT_877 OUT_878 OUT_879 OUT_880 OUT_881 OUT_882 OUT_883 OUT_884 OUT_885 OUT_886 OUT_887 OUT_888 OUT_889 OUT_890 OUT_891 OUT_892 OUT_893 OUT_894 OUT_895 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv28 (temp_28 tempbar_28 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec28 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_28 OUT_896 OUT_897 OUT_898 OUT_899 OUT_900 OUT_901 OUT_902 OUT_903 OUT_904 OUT_905 OUT_906 OUT_907 OUT_908 OUT_909 OUT_910 OUT_911 OUT_912 OUT_913 OUT_914 OUT_915 OUT_916 OUT_917 OUT_918 OUT_919 OUT_920 OUT_921 OUT_922 OUT_923 OUT_924 OUT_925 OUT_926 OUT_927 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv29 (temp_29 tempbar_29 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec29 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_29 OUT_928 OUT_929 OUT_930 OUT_931 OUT_932 OUT_933 OUT_934 OUT_935 OUT_936 OUT_937 OUT_938 OUT_939 OUT_940 OUT_941 OUT_942 OUT_943 OUT_944 OUT_945 OUT_946 OUT_947 OUT_948 OUT_949 OUT_950 OUT_951 OUT_952 OUT_953 OUT_954 OUT_955 OUT_956 OUT_957 OUT_958 OUT_959 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv30 (temp_30 tempbar_30 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec30 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_30 OUT_960 OUT_961 OUT_962 OUT_963 OUT_964 OUT_965 OUT_966 OUT_967 OUT_968 OUT_969 OUT_970 OUT_971 OUT_972 OUT_973 OUT_974 OUT_975 OUT_976 OUT_977 OUT_978 OUT_979 OUT_980 OUT_981 OUT_982 OUT_983 OUT_984 OUT_985 OUT_986 OUT_987 OUT_988 OUT_989 OUT_990 OUT_991 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8
xinv31 (temp_31 tempbar_31 vdd vss PBulkLine NBulkLine) inverter mult=multstage_5
xdec31 (IN_0 IN_1 IN_2 IN_3 IN_4 tempbar_31 OUT_992 OUT_993 OUT_994 OUT_995 OUT_996 OUT_997 OUT_998 OUT_999 OUT_1000 OUT_1001 OUT_1002 OUT_1003 OUT_1004 OUT_1005 OUT_1006 OUT_1007 OUT_1008 OUT_1009 OUT_1010 OUT_1011 OUT_1012 OUT_1013 OUT_1014 OUT_1015 OUT_1016 OUT_1017 OUT_1018 OUT_1019 OUT_1020 OUT_1021 OUT_1022 OUT_1023 vdd vss PBulkLine NBulkLine) decoderfive multstage_1=multstage_1 multstage_2=multstage_6 multstage_3=multstage_7 multstage_4=multstage_8

ends decoder

