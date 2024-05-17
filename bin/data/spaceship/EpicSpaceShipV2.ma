//Maya ASCII 2025 scene
//Name: EpicSpaceShipV2.ma
//Last modified: Wed, May 15, 2024 12:19:52 AM
//Codeset: UTF-8
requires maya "2025";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.4.0";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.27.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2025";
fileInfo "version" "2025";
fileInfo "cutIdentifier" "202402161156-0caf8d1269";
fileInfo "osv" "Mac OS X 13.6.6";
fileInfo "UUID" "DCB7F005-AD41-CC0F-D627-1C9E7B3C0BEB";
createNode transform -s -n "persp";
	rename -uid "449F1419-7B46-2831-61B1-9AAE92C9D73D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.84484252309762198 3.0532490304433253 17.274063132814906 ;
	setAttr ".r" -type "double3" -7.8000000000066851 -717.19999999996219 -5.7218903444736183e-16 ;
	setAttr ".rpt" -type "double3" -3.4240195153781591e-17 4.3629158672655082e-17 -1.3366868246088253e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "7F7F2B09-CB43-8A9E-A2D9-668FC31AD381";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 17.456218539759519;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.1920929088600984e-07 0.68416833877563477 -1.7881393432617188e-07 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "DDA952BB-C94B-7139-2B17-DC8A2DC767CE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.1920928955078125e-07 1000.7841683387791 -1.7881396975616415e-07 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
	setAttr ".rp" -type "double3" 0 2.6469779601696886e-23 0 ;
	setAttr ".rpt" -type "double3" 1.8873364784704572e-24 -1.3863234801131806e-14 3.5435950705928541e-14 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "6BA717BB-FB42-7798-08CF-6B84DE3ABF68";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1000000000037;
	setAttr ".ow" 0.53115833275074675;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" -1.1920928955078125e-07 0.68416833877540739 -1.7881415638702281e-07 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "27DF4042-FB41-C4EF-7EBF-43BB30039AAD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.29543040030867762 0.65193116485939562 1000.0999998211861 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "F55777D6-5A4F-1E2C-FC27-749DA4AB2BF4";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 6.4404149920531149;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -1.1920951161759064e-07 0 -1.7881393432617188e-07 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "80319E0D-9C42-8470-CCDA-44BF04305309";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "47497E5E-414E-0DAA-9E23-5499228E6AA0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 10.477414708255264;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCylinder1";
	rename -uid "D5592C7C-B644-719F-BD56-D7879B9329D6";
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "A78A688A-654E-CE86-D085-5792EE5C59D3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.67968744039535522 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[1].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 3;
	setAttr ".dr" 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "859748E7-2946-2AE4-8791-528C27AF2571";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "188B066D-0548-6DCD-3FA1-64BED91DED75";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "5B65BE5E-D74A-28CC-88EA-51A58E3CD48E";
createNode displayLayerManager -n "layerManager";
	rename -uid "6D0A28CE-F54B-B416-10D6-4D9D76269BF8";
createNode displayLayer -n "defaultLayer";
	rename -uid "8C6C4878-2046-3AB7-2F69-8F8188AC7196";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "A6811D4F-3A4E-0C8B-F278-2FA41BBE2114";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4B43A941-854F-9E68-19C1-E29FE0A40B29";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "083B6F99-6E4C-19F5-DB6B-A2AC5776C692";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySubdFace -n "polySubdFace1";
	rename -uid "2FF7D034-CE4E-456E-EB33-7DBF07296135";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".dv" 0;
	setAttr ".dvv" 8;
	setAttr ".sbm" 1;
createNode polySubdFace -n "polySubdFace2";
	rename -uid "89321DE9-B643-6DA0-A6C9-418E965B38A1";
	setAttr ".ics" -type "componentList" 1 "f[0:39]";
	setAttr ".dv" 0;
createNode polyTweak -n "polyTweak1";
	rename -uid "C8753212-5140-1942-F388-E1B26536A7BA";
	setAttr ".uopa" yes;
	setAttr -s 342 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[1]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[2]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[3]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[4]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[5]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[6]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[7]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[8]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[9]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[10]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[11]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[12]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[13]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[14]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[15]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[16]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[17]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[18]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[19]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[20]" -type "float3" -0.91317177 2.7910833 0.29670733 ;
	setAttr ".tk[21]" -type "float3" -0.77679068 2.7910833 0.56437117 ;
	setAttr ".tk[22]" -type "float3" -0.56437141 2.7910833 0.77679038 ;
	setAttr ".tk[23]" -type "float3" -0.29670754 2.7910833 0.91317141 ;
	setAttr ".tk[24]" -type "float3" -1.1446058e-07 2.7910833 0.96016526 ;
	setAttr ".tk[25]" -type "float3" 0.2967073 2.7910833 0.91317159 ;
	setAttr ".tk[26]" -type "float3" 0.56437105 2.7910833 0.7767902 ;
	setAttr ".tk[27]" -type "float3" 0.77679014 2.7910833 0.56437099 ;
	setAttr ".tk[28]" -type "float3" 0.91317147 2.7910833 0.29670721 ;
	setAttr ".tk[29]" -type "float3" 0.96016502 2.7910833 -1.1446058e-07 ;
	setAttr ".tk[30]" -type "float3" 0.91317147 2.7910833 -0.29670745 ;
	setAttr ".tk[31]" -type "float3" 0.77679008 2.7910833 -0.56437117 ;
	setAttr ".tk[32]" -type "float3" 0.56437093 2.7910833 -0.77679026 ;
	setAttr ".tk[33]" -type "float3" 0.29670721 2.7910833 -0.91317153 ;
	setAttr ".tk[34]" -type "float3" -8.5845443e-08 2.7910833 -0.96016514 ;
	setAttr ".tk[35]" -type "float3" -0.29670736 2.7910833 -0.91317153 ;
	setAttr ".tk[36]" -type "float3" -0.56437105 2.7910833 -0.7767902 ;
	setAttr ".tk[37]" -type "float3" -0.77679014 2.7910833 -0.56437111 ;
	setAttr ".tk[38]" -type "float3" -0.91317147 2.7910833 -0.29670739 ;
	setAttr ".tk[39]" -type "float3" -0.96016502 2.7910833 -1.1446058e-07 ;
	setAttr ".tk[40]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[41]" -type "float3" -1.1446058e-07 2.7910833 -1.1446058e-07 ;
	setAttr ".tk[42]" -type "float3" -0.84014475 2.7910833 -1.1446058e-07 ;
	setAttr ".tk[43]" -type "float3" -0.72012389 2.7910833 -1.1446058e-07 ;
	setAttr ".tk[44]" -type "float3" -0.60010356 2.7910833 -1.1446058e-07 ;
	setAttr ".tk[45]" -type "float3" -0.48008257 2.7910833 -1.1446058e-07 ;
	setAttr ".tk[46]" -type "float3" -0.360062 2.7910833 -1.1446058e-07 ;
	setAttr ".tk[47]" -type "float3" -0.24004135 2.7910833 -1.1446058e-07 ;
	setAttr ".tk[48]" -type "float3" -0.12002073 2.7910833 -1.1446058e-07 ;
	setAttr ".tk[49]" -type "float3" -0.79902512 2.7910833 -0.25961897 ;
	setAttr ".tk[50]" -type "float3" -0.68487853 2.7910833 -0.2225306 ;
	setAttr ".tk[51]" -type "float3" -0.57073241 2.7910833 -0.18544218 ;
	setAttr ".tk[52]" -type "float3" -0.45658579 2.7910833 -0.14835376 ;
	setAttr ".tk[53]" -type "float3" -0.34243932 2.7910833 -0.11126536 ;
	setAttr ".tk[54]" -type "float3" -0.22829294 2.7910833 -0.074176937 ;
	setAttr ".tk[55]" -type "float3" -0.1141465 2.7910833 -0.037088528 ;
	setAttr ".tk[56]" -type "float3" -0.67969126 2.7910833 -0.49382472 ;
	setAttr ".tk[57]" -type "float3" -0.58259243 2.7910833 -0.42327845 ;
	setAttr ".tk[58]" -type "float3" -0.48549369 2.7910833 -0.35273188 ;
	setAttr ".tk[59]" -type "float3" -0.38839513 2.7910833 -0.28218561 ;
	setAttr ".tk[60]" -type "float3" -0.29129627 2.7910833 -0.21163929 ;
	setAttr ".tk[61]" -type "float3" -0.19419762 2.7910833 -0.14109287 ;
	setAttr ".tk[62]" -type "float3" -0.097098872 2.7910833 -0.070546493 ;
	setAttr ".tk[63]" -type "float3" -0.49382466 2.7910833 -0.67969131 ;
	setAttr ".tk[64]" -type "float3" -0.42327839 2.7910833 -0.58259243 ;
	setAttr ".tk[65]" -type "float3" -0.35273185 2.7910833 -0.48549375 ;
	setAttr ".tk[66]" -type "float3" -0.28218558 2.7910833 -0.38839516 ;
	setAttr ".tk[67]" -type "float3" -0.21163926 2.7910833 -0.29129627 ;
	setAttr ".tk[68]" -type "float3" -0.14109285 2.7910833 -0.19419764 ;
	setAttr ".tk[69]" -type "float3" -0.070546485 2.7910833 -0.09709888 ;
	setAttr ".tk[70]" -type "float3" -0.25961894 2.7910833 -0.79902518 ;
	setAttr ".tk[71]" -type "float3" -0.2225306 2.7910833 -0.68487859 ;
	setAttr ".tk[72]" -type "float3" -0.18544216 2.7910833 -0.57073241 ;
	setAttr ".tk[73]" -type "float3" -0.14835374 2.7910833 -0.45658582 ;
	setAttr ".tk[74]" -type "float3" -0.11126536 2.7910833 -0.34243935 ;
	setAttr ".tk[75]" -type "float3" -0.07417693 2.7910833 -0.22829296 ;
	setAttr ".tk[76]" -type "float3" -0.037088525 2.7910833 -0.11414651 ;
	setAttr ".tk[77]" -type "float3" -8.9422358e-08 2.7910833 -0.84014487 ;
	setAttr ".tk[78]" -type "float3" -9.2999208e-08 2.7910833 -0.72012401 ;
	setAttr ".tk[79]" -type "float3" -9.657613e-08 2.7910833 -0.60010362 ;
	setAttr ".tk[80]" -type "float3" -1.0015304e-07 2.7910833 -0.48008263 ;
	setAttr ".tk[81]" -type "float3" -1.037299e-07 2.7910833 -0.36006206 ;
	setAttr ".tk[82]" -type "float3" -1.0730681e-07 2.7910833 -0.24004138 ;
	setAttr ".tk[83]" -type "float3" -1.1088373e-07 2.7910833 -0.12002075 ;
	setAttr ".tk[84]" -type "float3" 0.25961876 2.7910833 -0.79902524 ;
	setAttr ".tk[85]" -type "float3" 0.22253042 2.7910833 -0.68487859 ;
	setAttr ".tk[86]" -type "float3" 0.18544199 2.7910833 -0.57073247 ;
	setAttr ".tk[87]" -type "float3" 0.14835355 2.7910833 -0.45658585 ;
	setAttr ".tk[88]" -type "float3" 0.11126515 2.7910833 -0.34243935 ;
	setAttr ".tk[89]" -type "float3" 0.074176714 2.7910833 -0.22829297 ;
	setAttr ".tk[90]" -type "float3" 0.037088297 2.7910833 -0.11414652 ;
	setAttr ".tk[91]" -type "float3" 0.49382454 2.7910833 -0.67969137 ;
	setAttr ".tk[92]" -type "float3" 0.42327824 2.7910833 -0.58259249 ;
	setAttr ".tk[93]" -type "float3" 0.35273167 2.7910833 -0.48549375 ;
	setAttr ".tk[94]" -type "float3" 0.28218541 2.7910833 -0.38839519 ;
	setAttr ".tk[95]" -type "float3" 0.21163906 2.7910833 -0.2912963 ;
	setAttr ".tk[96]" -type "float3" 0.14109264 2.7910833 -0.19419765 ;
	setAttr ".tk[97]" -type "float3" 0.070546262 2.7910833 -0.097098887 ;
	setAttr ".tk[98]" -type "float3" 0.6796912 2.7910833 -0.49382478 ;
	setAttr ".tk[99]" -type "float3" 0.58259231 2.7910833 -0.42327848 ;
	setAttr ".tk[100]" -type "float3" 0.48549357 2.7910833 -0.35273191 ;
	setAttr ".tk[101]" -type "float3" 0.38839498 2.7910833 -0.28218564 ;
	setAttr ".tk[102]" -type "float3" 0.29129609 2.7910833 -0.2116393 ;
	setAttr ".tk[103]" -type "float3" 0.19419743 2.7910833 -0.14109288 ;
	setAttr ".tk[104]" -type "float3" 0.097098656 2.7910833 -0.0705465 ;
	setAttr ".tk[105]" -type "float3" 0.79902506 2.7910833 -0.259619 ;
	setAttr ".tk[106]" -type "float3" 0.68487847 2.7910833 -0.22253066 ;
	setAttr ".tk[107]" -type "float3" 0.5707323 2.7910833 -0.18544222 ;
	setAttr ".tk[108]" -type "float3" 0.45658582 2.7910833 -0.14835379 ;
	setAttr ".tk[109]" -type "float3" 0.34243917 2.7910833 -0.11126539 ;
	setAttr ".tk[110]" -type "float3" 0.22829285 2.7910833 -0.074176952 ;
	setAttr ".tk[111]" -type "float3" 0.11414637 2.7910833 -0.037088536 ;
	setAttr ".tk[112]" -type "float3" 0.84014475 2.7910833 -1.1446058e-07 ;
	setAttr ".tk[113]" -type "float3" 0.72012383 2.7910833 -1.1446058e-07 ;
	setAttr ".tk[114]" -type "float3" 0.60010344 2.7910833 -1.1446058e-07 ;
	setAttr ".tk[115]" -type "float3" 0.48008245 2.7910833 -1.1446058e-07 ;
	setAttr ".tk[116]" -type "float3" 0.36006185 2.7910833 -1.1446058e-07 ;
	setAttr ".tk[117]" -type "float3" 0.24004117 2.7910833 -1.1446058e-07 ;
	setAttr ".tk[118]" -type "float3" 0.12002052 2.7910833 -1.1446058e-07 ;
	setAttr ".tk[119]" -type "float3" 0.79902506 2.7910833 0.25961876 ;
	setAttr ".tk[120]" -type "float3" 0.68487847 2.7910833 0.22253042 ;
	setAttr ".tk[121]" -type "float3" 0.5707323 2.7910833 0.18544199 ;
	setAttr ".tk[122]" -type "float3" 0.45658582 2.7910833 0.14835355 ;
	setAttr ".tk[123]" -type "float3" 0.34243917 2.7910833 0.11126515 ;
	setAttr ".tk[124]" -type "float3" 0.22829285 2.7910833 0.074176714 ;
	setAttr ".tk[125]" -type "float3" 0.11414637 2.7910833 0.037088297 ;
	setAttr ".tk[126]" -type "float3" 0.67969126 2.7910833 0.4938246 ;
	setAttr ".tk[127]" -type "float3" 0.58259237 2.7910833 0.42327827 ;
	setAttr ".tk[128]" -type "float3" 0.48549363 2.7910833 0.35273173 ;
	setAttr ".tk[129]" -type "float3" 0.38839501 2.7910833 0.28218544 ;
	setAttr ".tk[130]" -type "float3" 0.29129612 2.7910833 0.21163908 ;
	setAttr ".tk[131]" -type "float3" 0.19419745 2.7910833 0.14109266 ;
	setAttr ".tk[132]" -type "float3" 0.097098663 2.7910833 0.070546269 ;
	setAttr ".tk[133]" -type "float3" 0.4938246 2.7910833 0.67969131 ;
	setAttr ".tk[134]" -type "float3" 0.42327833 2.7910833 0.58259243 ;
	setAttr ".tk[135]" -type "float3" 0.35273176 2.7910833 0.48549363 ;
	setAttr ".tk[136]" -type "float3" 0.28218547 2.7910833 0.38839504 ;
	setAttr ".tk[137]" -type "float3" 0.21163911 2.7910833 0.29129615 ;
	setAttr ".tk[138]" -type "float3" 0.14109267 2.7910833 0.19419746 ;
	setAttr ".tk[139]" -type "float3" 0.070546277 2.7910833 0.097098671 ;
	setAttr ".tk[140]" -type "float3" 0.25961885 2.7910833 0.79902524 ;
	setAttr ".tk[141]" -type "float3" 0.22253048 2.7910833 0.68487859 ;
	setAttr ".tk[142]" -type "float3" 0.18544205 2.7910833 0.57073241 ;
	setAttr ".tk[143]" -type "float3" 0.14835359 2.7910833 0.45658574 ;
	setAttr ".tk[144]" -type "float3" 0.11126518 2.7910833 0.34243923 ;
	setAttr ".tk[145]" -type "float3" 0.074176736 2.7910833 0.22829288 ;
	setAttr ".tk[146]" -type "float3" 0.037088308 2.7910833 0.11414638 ;
	setAttr ".tk[147]" -type "float3" -1.1446058e-07 2.7910833 0.84014493 ;
	setAttr ".tk[148]" -type "float3" -1.1446058e-07 2.7910833 0.72012401 ;
	setAttr ".tk[149]" -type "float3" -1.1446058e-07 2.7910833 0.60010362 ;
	setAttr ".tk[150]" -type "float3" -1.1446058e-07 2.7910833 0.48008257 ;
	setAttr ".tk[151]" -type "float3" -1.1446058e-07 2.7910833 0.36006194 ;
	setAttr ".tk[152]" -type "float3" -1.1446058e-07 2.7910833 0.24004123 ;
	setAttr ".tk[153]" -type "float3" -1.1446058e-07 2.7910833 0.12002055 ;
	setAttr ".tk[154]" -type "float3" -0.25961909 2.7910833 0.7990253 ;
	setAttr ".tk[155]" -type "float3" -0.22253072 2.7910833 0.68487865 ;
	setAttr ".tk[156]" -type "float3" -0.18544228 2.7910833 0.57073247 ;
	setAttr ".tk[157]" -type "float3" -0.14835383 2.7910833 0.45658576 ;
	setAttr ".tk[158]" -type "float3" -0.11126542 2.7910833 0.34243926 ;
	setAttr ".tk[159]" -type "float3" -0.074176975 2.7910833 0.22829291 ;
	setAttr ".tk[160]" -type "float3" -0.037088547 2.7910833 0.1141464 ;
	setAttr ".tk[161]" -type "float3" -0.49382496 2.7910833 0.67969143 ;
	setAttr ".tk[162]" -type "float3" -0.42327866 2.7910833 0.58259255 ;
	setAttr ".tk[163]" -type "float3" -0.35273209 2.7910833 0.48549375 ;
	setAttr ".tk[164]" -type "float3" -0.28218576 2.7910833 0.38839513 ;
	setAttr ".tk[165]" -type "float3" -0.21163939 2.7910833 0.29129621 ;
	setAttr ".tk[166]" -type "float3" -0.14109294 2.7910833 0.19419751 ;
	setAttr ".tk[167]" -type "float3" -0.07054653 2.7910833 0.097098693 ;
	setAttr ".tk[168]" -type "float3" -0.67969173 2.7910833 0.49382472 ;
	setAttr ".tk[169]" -type "float3" -0.58259279 2.7910833 0.42327842 ;
	setAttr ".tk[170]" -type "float3" -0.48549405 2.7910833 0.35273185 ;
	setAttr ".tk[171]" -type "float3" -0.3883954 2.7910833 0.28218552 ;
	setAttr ".tk[172]" -type "float3" -0.29129645 2.7910833 0.21163915 ;
	setAttr ".tk[173]" -type "float3" -0.19419776 2.7910833 0.1410927 ;
	setAttr ".tk[174]" -type "float3" -0.097098939 2.7910833 0.070546292 ;
	setAttr ".tk[175]" -type "float3" -0.79902565 2.7910833 0.25961888 ;
	setAttr ".tk[176]" -type "float3" -0.68487895 2.7910833 0.22253051 ;
	setAttr ".tk[177]" -type "float3" -0.57073277 2.7910833 0.18544206 ;
	setAttr ".tk[178]" -type "float3" -0.45658594 2.7910833 0.14835361 ;
	setAttr ".tk[179]" -type "float3" -0.34243953 2.7910833 0.1112652 ;
	setAttr ".tk[180]" -type "float3" -0.22829303 2.7910833 0.074176744 ;
	setAttr ".tk[181]" -type "float3" -0.11414658 2.7910833 0.037088312 ;
	setAttr ".tk[182]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[183]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[184]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[185]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[186]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[187]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[188]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[189]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[190]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[191]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[192]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[193]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[194]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[195]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[196]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[197]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[198]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[199]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[200]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[201]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[202]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[203]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[204]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[205]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[206]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[207]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[208]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[209]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[210]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[211]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[212]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[213]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[214]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[215]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[216]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[217]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[218]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[219]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[220]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[221]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[222]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[223]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[224]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[225]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[226]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[227]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[228]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[229]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[230]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[231]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[232]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[233]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[234]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[235]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[236]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[237]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[238]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[239]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[240]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[241]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[242]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[243]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[244]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[245]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[246]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[247]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[248]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[249]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[250]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[251]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[252]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[253]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[254]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[255]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[256]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[257]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[258]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[259]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[260]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[261]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[262]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[263]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[264]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[265]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[266]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[267]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[268]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[269]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[270]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[271]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[272]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[273]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[274]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[275]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[276]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[277]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[278]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[279]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[280]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[281]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[282]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[283]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[284]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[285]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[286]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[287]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[288]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[289]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[290]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[291]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[292]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[293]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[294]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[295]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[296]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[297]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[298]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[299]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[300]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[301]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[302]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[303]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[304]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[305]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[306]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[307]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[308]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[309]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[310]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[311]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[312]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[313]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[314]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[315]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[316]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[317]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[318]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[319]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[320]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[321]" -type "float3" 0 -1.1197344 0 ;
	setAttr ".tk[328]" -type "float3" 6.5565109e-07 -6.7055225e-08 -9.9475983e-14 ;
	setAttr ".tk[335]" -type "float3" -5.9604645e-08 -6.7055225e-08 1.3411045e-07 ;
	setAttr ".tk[342]" -type "float3" -1.7881393e-07 -6.7055225e-08 1.1920929e-07 ;
	setAttr ".tk[349]" -type "float3" 0 -6.7055225e-08 -1.7881393e-07 ;
	setAttr ".tk[356]" -type "float3" 1.4901161e-07 -6.7055225e-08 -5.9604645e-08 ;
	setAttr ".tk[363]" -type "float3" -4.9737992e-14 -6.7055225e-08 5.364418e-07 ;
	setAttr ".tk[370]" -type "float3" -1.6391277e-07 -6.7055225e-08 -5.9604645e-08 ;
	setAttr ".tk[377]" -type "float3" -2.9802322e-08 -6.7055225e-08 -2.3841858e-07 ;
	setAttr ".tk[384]" -type "float3" 1.1920929e-07 -6.7055225e-08 1.7881393e-07 ;
	setAttr ".tk[391]" -type "float3" 5.9604645e-08 -6.7055225e-08 1.0430813e-07 ;
	setAttr ".tk[398]" -type "float3" -6.5565109e-07 -6.7055225e-08 -9.9475983e-14 ;
	setAttr ".tk[405]" -type "float3" 5.9604645e-08 -6.7055225e-08 -1.937151e-07 ;
	setAttr ".tk[412]" -type "float3" 1.7881393e-07 -6.7055225e-08 -2.9802322e-08 ;
	setAttr ".tk[419]" -type "float3" 0 -6.7055225e-08 1.1920929e-07 ;
	setAttr ".tk[426]" -type "float3" -1.3411045e-07 -6.7055225e-08 5.9604645e-08 ;
	setAttr ".tk[433]" -type "float3" 6.3948846e-14 -6.7055225e-08 -5.364418e-07 ;
	setAttr ".tk[440]" -type "float3" 1.0430813e-07 -6.7055225e-08 5.9604645e-08 ;
	setAttr ".tk[447]" -type "float3" 2.9802322e-07 -6.7055225e-08 2.3841858e-07 ;
	setAttr ".tk[454]" -type "float3" -1.7881393e-07 -6.7055225e-08 -1.4901161e-07 ;
	setAttr ".tk[461]" -type "float3" -2.9802322e-07 -6.7055225e-08 -1.4901161e-07 ;
createNode polySubdFace -n "polySubdFace3";
	rename -uid "097953C8-4D4B-27AB-43E5-5AA6CAB70C13";
	setAttr ".ics" -type "componentList" 1 "f[0:39]";
	setAttr ".sbm" 1;
createNode polySubdFace -n "polySubdFace4";
	rename -uid "21C03F59-FB42-ED7D-A9BB-EF9ED13F0E71";
	setAttr ".ics" -type "componentList" 1 "f[0:39]";
	setAttr ".sbm" 1;
createNode polySubdFace -n "polySubdFace5";
	rename -uid "75E962F8-3448-B55C-CA58-9F9107BD4098";
	setAttr ".ics" -type "componentList" 1 "f[20:39]";
	setAttr ".m" 1;
	setAttr ".sbm" 1;
createNode polyExtrudeVertex -n "polyExtrudeVertex1";
	rename -uid "D05C908D-B04A-3A0C-2A09-97AD3B960AF6";
	setAttr ".ics" -type "componentList" 3 "vtx[0:19]" "vtx[40]" "vtx[182:321]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".w" 0.5;
createNode polyTweak -n "polyTweak2";
	rename -uid "04D3EB23-FB4D-E1E6-84D3-D6BB120E713E";
	setAttr ".uopa" yes;
	setAttr -s 541 ".tk";
	setAttr ".tk[0]" -type "float3" -0.45240891 -0.41390827 0.14699644 ;
	setAttr ".tk[1]" -type "float3" -0.38484138 -0.41390827 0.27960375 ;
	setAttr ".tk[2]" -type "float3" -0.27960405 -0.41390827 0.38484097 ;
	setAttr ".tk[3]" -type "float3" -0.14699648 -0.41390827 0.45240855 ;
	setAttr ".tk[4]" -type "float3" -5.6706629e-08 -0.41390827 0.47568998 ;
	setAttr ".tk[5]" -type "float3" 0.14699645 -0.41390827 0.45240849 ;
	setAttr ".tk[6]" -type "float3" 0.27960369 -0.41390827 0.38484085 ;
	setAttr ".tk[7]" -type "float3" 0.38484085 -0.41390827 0.27960357 ;
	setAttr ".tk[8]" -type "float3" 0.45240837 -0.41390827 0.14699639 ;
	setAttr ".tk[9]" -type "float3" 0.4756898 -0.41390827 -8.5059852e-08 ;
	setAttr ".tk[10]" -type "float3" 0.45240837 -0.41390827 -0.14699647 ;
	setAttr ".tk[11]" -type "float3" 0.38484085 -0.41390827 -0.27960387 ;
	setAttr ".tk[12]" -type "float3" 0.27960357 -0.41390827 -0.38484097 ;
	setAttr ".tk[13]" -type "float3" 0.14699645 -0.41390827 -0.45240855 ;
	setAttr ".tk[14]" -type "float3" -4.2529926e-08 -0.41390827 -0.47568998 ;
	setAttr ".tk[15]" -type "float3" -0.14699635 -0.41390827 -0.45240849 ;
	setAttr ".tk[16]" -type "float3" -0.27960369 -0.41390827 -0.38484091 ;
	setAttr ".tk[17]" -type "float3" -0.38484085 -0.41390827 -0.27960381 ;
	setAttr ".tk[18]" -type "float3" -0.45240837 -0.41390827 -0.14699642 ;
	setAttr ".tk[19]" -type "float3" -0.4756898 -0.41390827 -8.5059852e-08 ;
	setAttr ".tk[40]" -type "float3" -5.670654e-08 -0.413908 -8.5059767e-08 ;
	setAttr ".tk[182]" -type "float3" -0.059461329 -0.41390827 -8.5059852e-08 ;
	setAttr ".tk[183]" -type "float3" -0.11892254 -0.41390827 -8.5059852e-08 ;
	setAttr ".tk[184]" -type "float3" -0.17838356 -0.41390827 -8.5059852e-08 ;
	setAttr ".tk[185]" -type "float3" -0.23784496 -0.41390827 -8.5059852e-08 ;
	setAttr ".tk[186]" -type "float3" -0.29730657 -0.41390827 -8.5059852e-08 ;
	setAttr ".tk[187]" -type "float3" -0.356767 -0.41390827 -8.5059852e-08 ;
	setAttr ".tk[188]" -type "float3" -0.41622877 -0.41390827 -8.5059852e-08 ;
	setAttr ".tk[189]" -type "float3" -0.056551091 -0.41390827 -0.018374626 ;
	setAttr ".tk[190]" -type "float3" -0.11310218 -0.41390827 -0.036749151 ;
	setAttr ".tk[191]" -type "float3" -0.16965345 -0.41390827 -0.055123679 ;
	setAttr ".tk[192]" -type "float3" -0.22620425 -0.41390827 -0.073498249 ;
	setAttr ".tk[193]" -type "float3" -0.28275526 -0.41390827 -0.091872782 ;
	setAttr ".tk[194]" -type "float3" -0.33930677 -0.41390827 -0.11024746 ;
	setAttr ".tk[195]" -type "float3" -0.39585751 -0.41390827 -0.1286218 ;
	setAttr ".tk[196]" -type "float3" -0.04810521 -0.41390827 -0.034950525 ;
	setAttr ".tk[197]" -type "float3" -0.096210301 -0.41390827 -0.069901034 ;
	setAttr ".tk[198]" -type "float3" -0.14431539 -0.41390827 -0.10485142 ;
	setAttr ".tk[199]" -type "float3" -0.19242048 -0.41390827 -0.13980199 ;
	setAttr ".tk[200]" -type "float3" -0.2405258 -0.41390827 -0.17475218 ;
	setAttr ".tk[201]" -type "float3" -0.28863066 -0.41390827 -0.20970267 ;
	setAttr ".tk[202]" -type "float3" -0.33673614 -0.41390827 -0.24465297 ;
	setAttr ".tk[203]" -type "float3" -0.034950539 -0.41390827 -0.048105277 ;
	setAttr ".tk[204]" -type "float3" -0.069901012 -0.41390827 -0.096210375 ;
	setAttr ".tk[205]" -type "float3" -0.10485134 -0.41390827 -0.14431545 ;
	setAttr ".tk[206]" -type "float3" -0.1398019 -0.41390827 -0.19242057 ;
	setAttr ".tk[207]" -type "float3" -0.17475209 -0.41390827 -0.2405258 ;
	setAttr ".tk[208]" -type "float3" -0.20970288 -0.41390827 -0.28863072 ;
	setAttr ".tk[209]" -type "float3" -0.24465311 -0.41390827 -0.33673584 ;
	setAttr ".tk[210]" -type "float3" -0.018374573 -0.41390827 -0.056551151 ;
	setAttr ".tk[211]" -type "float3" -0.036749098 -0.41390827 -0.11310224 ;
	setAttr ".tk[212]" -type "float3" -0.05512375 -0.41390827 -0.16965315 ;
	setAttr ".tk[213]" -type "float3" -0.073498227 -0.41390827 -0.22620434 ;
	setAttr ".tk[214]" -type "float3" -0.091872782 -0.41390827 -0.28275532 ;
	setAttr ".tk[215]" -type "float3" -0.11024738 -0.41390827 -0.33930686 ;
	setAttr ".tk[216]" -type "float3" -0.12862182 -0.41390827 -0.39585757 ;
	setAttr ".tk[217]" -type "float3" -5.4934524e-08 -0.41390827 -0.059461374 ;
	setAttr ".tk[218]" -type "float3" -5.3162417e-08 -0.41390827 -0.11892263 ;
	setAttr ".tk[219]" -type "float3" -5.1390302e-08 -0.41390827 -0.17838366 ;
	setAttr ".tk[220]" -type "float3" -4.9618322e-08 -0.41390827 -0.23784508 ;
	setAttr ".tk[221]" -type "float3" -4.7846193e-08 -0.41390827 -0.29730669 ;
	setAttr ".tk[222]" -type "float3" -4.6074142e-08 -0.41390827 -0.35676718 ;
	setAttr ".tk[223]" -type "float3" -4.4302041e-08 -0.41390827 -0.41622883 ;
	setAttr ".tk[224]" -type "float3" 0.018374477 -0.41390827 -0.056551155 ;
	setAttr ".tk[225]" -type "float3" 0.036749035 -0.41390827 -0.11310222 ;
	setAttr ".tk[226]" -type "float3" 0.055123549 -0.41390827 -0.16965315 ;
	setAttr ".tk[227]" -type "float3" 0.073498167 -0.41390827 -0.22620437 ;
	setAttr ".tk[228]" -type "float3" 0.091872603 -0.41390827 -0.28275514 ;
	setAttr ".tk[229]" -type "float3" 0.1102472 -0.41390827 -0.33930686 ;
	setAttr ".tk[230]" -type "float3" 0.12862171 -0.41390827 -0.39585763 ;
	setAttr ".tk[231]" -type "float3" 0.034950368 -0.41390827 -0.048105285 ;
	setAttr ".tk[232]" -type "float3" 0.069900848 -0.41390827 -0.09621039 ;
	setAttr ".tk[233]" -type "float3" 0.10485131 -0.41390827 -0.14431548 ;
	setAttr ".tk[234]" -type "float3" 0.13980177 -0.41390827 -0.1924206 ;
	setAttr ".tk[235]" -type "float3" 0.17475206 -0.41390827 -0.2405258 ;
	setAttr ".tk[236]" -type "float3" 0.20970273 -0.41390839 -0.28863078 ;
	setAttr ".tk[237]" -type "float3" 0.24465302 -0.41390827 -0.33673584 ;
	setAttr ".tk[238]" -type "float3" 0.048105139 -0.41390827 -0.034950532 ;
	setAttr ".tk[239]" -type "float3" 0.096210152 -0.41390827 -0.069901049 ;
	setAttr ".tk[240]" -type "float3" 0.14431521 -0.41390827 -0.10485144 ;
	setAttr ".tk[241]" -type "float3" 0.19242042 -0.41390827 -0.13980202 ;
	setAttr ".tk[242]" -type "float3" 0.24052569 -0.41390827 -0.17475221 ;
	setAttr ".tk[243]" -type "float3" 0.28863055 -0.41390839 -0.2097027 ;
	setAttr ".tk[244]" -type "float3" 0.33673608 -0.41390827 -0.24465302 ;
	setAttr ".tk[245]" -type "float3" 0.056550942 -0.41390827 -0.018374633 ;
	setAttr ".tk[246]" -type "float3" 0.113102 -0.41390827 -0.036749166 ;
	setAttr ".tk[247]" -type "float3" 0.1696533 -0.41390827 -0.055123702 ;
	setAttr ".tk[248]" -type "float3" 0.22620413 -0.41390827 -0.073498189 ;
	setAttr ".tk[249]" -type "float3" 0.28275514 -0.41390827 -0.091872804 ;
	setAttr ".tk[250]" -type "float3" 0.33930671 -0.41390827 -0.1102475 ;
	setAttr ".tk[251]" -type "float3" 0.39585745 -0.41390827 -0.12862183 ;
	setAttr ".tk[252]" -type "float3" 0.059461121 -0.41390827 -8.5059852e-08 ;
	setAttr ".tk[253]" -type "float3" 0.11892236 -0.41390827 -8.5059852e-08 ;
	setAttr ".tk[254]" -type "float3" 0.17838353 -0.41390827 -8.5059852e-08 ;
	setAttr ".tk[255]" -type "float3" 0.23784484 -0.41390827 -8.5059852e-08 ;
	setAttr ".tk[256]" -type "float3" 0.29730645 -0.41390827 -8.5059852e-08 ;
	setAttr ".tk[257]" -type "float3" 0.35676694 -0.41390827 -8.5059852e-08 ;
	setAttr ".tk[258]" -type "float3" 0.41622877 -0.41390827 -8.5059852e-08 ;
	setAttr ".tk[259]" -type "float3" 0.056550942 -0.41390827 0.018374417 ;
	setAttr ".tk[260]" -type "float3" 0.113102 -0.41390827 0.036748976 ;
	setAttr ".tk[261]" -type "float3" 0.1696533 -0.41390827 0.055123545 ;
	setAttr ".tk[262]" -type "float3" 0.22620413 -0.41390827 0.073498115 ;
	setAttr ".tk[263]" -type "float3" 0.28275514 -0.41390827 0.091872543 ;
	setAttr ".tk[264]" -type "float3" 0.33930671 -0.41390827 0.11024714 ;
	setAttr ".tk[265]" -type "float3" 0.39585745 -0.41390827 0.12862165 ;
	setAttr ".tk[266]" -type "float3" 0.048105143 -0.41390827 0.034950316 ;
	setAttr ".tk[267]" -type "float3" 0.096210167 -0.41390827 0.069900811 ;
	setAttr ".tk[268]" -type "float3" 0.14431524 -0.41390827 0.10485126 ;
	setAttr ".tk[269]" -type "float3" 0.19242042 -0.41390827 0.13980177 ;
	setAttr ".tk[270]" -type "float3" 0.24052574 -0.41390827 0.17475206 ;
	setAttr ".tk[271]" -type "float3" 0.2886306 -0.41390827 0.2097027 ;
	setAttr ".tk[272]" -type "float3" 0.33673614 -0.41390827 0.24465302 ;
	setAttr ".tk[273]" -type "float3" 0.034950383 -0.41390827 0.048105136 ;
	setAttr ".tk[274]" -type "float3" 0.06990087 -0.41390827 0.096210122 ;
	setAttr ".tk[275]" -type "float3" 0.10485135 -0.41390827 0.14431521 ;
	setAttr ".tk[276]" -type "float3" 0.13980179 -0.41390827 0.19242042 ;
	setAttr ".tk[277]" -type "float3" 0.17475203 -0.41390827 0.24052569 ;
	setAttr ".tk[278]" -type "float3" 0.20970282 -0.41390827 0.2886306 ;
	setAttr ".tk[279]" -type "float3" 0.24465308 -0.41390827 0.33673614 ;
	setAttr ".tk[280]" -type "float3" 0.018374486 -0.41390827 0.056550905 ;
	setAttr ".tk[281]" -type "float3" 0.03674905 -0.41390827 0.11310199 ;
	setAttr ".tk[282]" -type "float3" 0.055123571 -0.41390827 0.1696533 ;
	setAttr ".tk[283]" -type "float3" 0.073498212 -0.41390827 0.22620416 ;
	setAttr ".tk[284]" -type "float3" 0.091872662 -0.41390827 0.2827552 ;
	setAttr ".tk[285]" -type "float3" 0.11024726 -0.41390827 0.33930674 ;
	setAttr ".tk[286]" -type "float3" 0.12862176 -0.41390827 0.39585754 ;
	setAttr ".tk[287]" -type "float3" -5.6706629e-08 -0.41390827 0.059461091 ;
	setAttr ".tk[288]" -type "float3" -5.6706629e-08 -0.41390827 0.11892236 ;
	setAttr ".tk[289]" -type "float3" -5.6706629e-08 -0.41390827 0.17838344 ;
	setAttr ".tk[290]" -type "float3" -5.6706629e-08 -0.41390827 0.2378449 ;
	setAttr ".tk[291]" -type "float3" -5.6706629e-08 -0.41390827 0.29730657 ;
	setAttr ".tk[292]" -type "float3" -5.6706629e-08 -0.41390827 0.35676706 ;
	setAttr ".tk[293]" -type "float3" -5.6706629e-08 -0.41390827 0.41622877 ;
	setAttr ".tk[294]" -type "float3" -0.018374596 -0.41390827 0.056550913 ;
	setAttr ".tk[295]" -type "float3" -0.036749128 -0.41390827 0.113102 ;
	setAttr ".tk[296]" -type "float3" -0.05512381 -0.41390827 0.16965333 ;
	setAttr ".tk[297]" -type "float3" -0.073498175 -0.41390827 0.22620419 ;
	setAttr ".tk[298]" -type "float3" -0.091872804 -0.41390827 0.28275526 ;
	setAttr ".tk[299]" -type "float3" -0.1102475 -0.41390827 0.3393068 ;
	setAttr ".tk[300]" -type "float3" -0.12862185 -0.41390827 0.39585757 ;
	setAttr ".tk[301]" -type "float3" -0.03495051 -0.41390827 0.04810515 ;
	setAttr ".tk[302]" -type "float3" -0.069901049 -0.41390827 0.096210167 ;
	setAttr ".tk[303]" -type "float3" -0.10485147 -0.41390827 0.14431527 ;
	setAttr ".tk[304]" -type "float3" -0.13980204 -0.41390827 0.19242042 ;
	setAttr ".tk[305]" -type "float3" -0.17475221 -0.41390827 0.2405258 ;
	setAttr ".tk[306]" -type "float3" -0.20970282 -0.41390827 0.28863072 ;
	setAttr ".tk[307]" -type "float3" -0.24465312 -0.41390827 0.33673584 ;
	setAttr ".tk[308]" -type "float3" -0.048105277 -0.41390827 0.034950338 ;
	setAttr ".tk[309]" -type "float3" -0.096210435 -0.41390827 0.069900848 ;
	setAttr ".tk[310]" -type "float3" -0.14431551 -0.41390827 0.10485134 ;
	setAttr ".tk[311]" -type "float3" -0.19242075 -0.41390827 0.13980179 ;
	setAttr ".tk[312]" -type "float3" -0.2405259 -0.41390827 0.17475203 ;
	setAttr ".tk[313]" -type "float3" -0.28863102 -0.41390827 0.20970285 ;
	setAttr ".tk[314]" -type "float3" -0.33673608 -0.41390827 0.24465311 ;
	setAttr ".tk[315]" -type "float3" -0.056551155 -0.41390827 0.018374432 ;
	setAttr ".tk[316]" -type "float3" -0.11310221 -0.41390827 0.036749005 ;
	setAttr ".tk[317]" -type "float3" -0.16965318 -0.41390827 0.055123538 ;
	setAttr ".tk[318]" -type "float3" -0.22620444 -0.41390827 0.073498167 ;
	setAttr ".tk[319]" -type "float3" -0.28275537 -0.41390827 0.091872618 ;
	setAttr ".tk[320]" -type "float3" -0.33930624 -0.41390827 0.11024723 ;
	setAttr ".tk[321]" -type "float3" -0.39585781 -0.41390827 0.12862176 ;
	setAttr ".tk[462]" -type "float3" -0.418625 -0.41390827 0.21330008 ;
	setAttr ".tk[463]" -type "float3" -0.418625 -0.41390827 0.21330008 ;
	setAttr ".tk[464]" -type "float3" -0.33222261 -0.41390827 0.33222243 ;
	setAttr ".tk[465]" -type "float3" -0.33222261 -0.41390827 0.33222243 ;
	setAttr ".tk[466]" -type "float3" -0.21330038 -0.41390827 0.41862488 ;
	setAttr ".tk[467]" -type "float3" -0.21330038 -0.41390827 0.41862488 ;
	setAttr ".tk[468]" -type "float3" -0.073498175 -0.41390827 0.46404892 ;
	setAttr ".tk[469]" -type "float3" -0.073498175 -0.41390827 0.46404892 ;
	setAttr ".tk[470]" -type "float3" 0.073498175 -0.41390827 0.46404892 ;
	setAttr ".tk[471]" -type "float3" 0.073498175 -0.41390827 0.46404892 ;
	setAttr ".tk[472]" -type "float3" 0.21330008 -0.41390827 0.41862476 ;
	setAttr ".tk[473]" -type "float3" 0.21330008 -0.41390827 0.41862476 ;
	setAttr ".tk[474]" -type "float3" 0.33222231 -0.41390827 0.33222234 ;
	setAttr ".tk[475]" -type "float3" 0.33222231 -0.41390827 0.33222234 ;
	setAttr ".tk[476]" -type "float3" 0.4186247 -0.41390827 0.21329993 ;
	setAttr ".tk[477]" -type "float3" 0.4186247 -0.41390827 0.21329993 ;
	setAttr ".tk[478]" -type "float3" 0.46404874 -0.41390827 0.073498107 ;
	setAttr ".tk[479]" -type "float3" 0.46404874 -0.41390827 0.073498107 ;
	setAttr ".tk[480]" -type "float3" 0.46404874 -0.41390827 -0.073498189 ;
	setAttr ".tk[481]" -type "float3" 0.46404874 -0.41390827 -0.073498189 ;
	setAttr ".tk[482]" -type "float3" 0.41862467 -0.41390827 -0.21330026 ;
	setAttr ".tk[483]" -type "float3" 0.41862467 -0.41390827 -0.21330026 ;
	setAttr ".tk[484]" -type "float3" 0.33222234 -0.41390827 -0.33222243 ;
	setAttr ".tk[485]" -type "float3" 0.33222234 -0.41390827 -0.33222243 ;
	setAttr ".tk[486]" -type "float3" 0.21329996 -0.41390827 -0.41862488 ;
	setAttr ".tk[487]" -type "float3" 0.21329996 -0.41390827 -0.41862488 ;
	setAttr ".tk[488]" -type "float3" 0.073498182 -0.41390827 -0.46404892 ;
	setAttr ".tk[489]" -type "float3" 0.073498182 -0.41390827 -0.46404892 ;
	setAttr ".tk[490]" -type "float3" -0.073498204 -0.41390827 -0.46404892 ;
	setAttr ".tk[491]" -type "float3" -0.073498204 -0.41390827 -0.46404892 ;
	setAttr ".tk[492]" -type "float3" -0.21330008 -0.41390827 -0.41862482 ;
	setAttr ".tk[493]" -type "float3" -0.21330008 -0.41390827 -0.41862482 ;
	setAttr ".tk[494]" -type "float3" -0.33222231 -0.41390827 -0.33222243 ;
	setAttr ".tk[495]" -type "float3" -0.33222231 -0.41390827 -0.33222243 ;
	setAttr ".tk[496]" -type "float3" -0.4186247 -0.41390827 -0.2133002 ;
	setAttr ".tk[497]" -type "float3" -0.4186247 -0.41390827 -0.2133002 ;
	setAttr ".tk[498]" -type "float3" -0.46404874 -0.41390827 -0.073498249 ;
	setAttr ".tk[499]" -type "float3" -0.46404874 -0.41390827 -0.073498249 ;
	setAttr ".tk[500]" -type "float3" -0.4640491 -0.41390827 0.073498167 ;
	setAttr ".tk[501]" -type "float3" -0.4640491 -0.41390827 0.073498167 ;
	setAttr ".tk[502]" -type "float3" -0.16253641 -0.58073938 0.052811339 ;
	setAttr ".tk[503]" -type "float3" -0.13826212 -0.58073938 0.10045317 ;
	setAttr ".tk[504]" -type "float3" -0.1004532 -0.58073938 0.13826187 ;
	setAttr ".tk[505]" -type "float3" -0.052811373 -0.58073938 0.16253664 ;
	setAttr ".tk[506]" -type "float3" -2.0372987e-08 -0.58073938 0.17090121 ;
	setAttr ".tk[507]" -type "float3" 0.052811339 -0.58073938 0.16253658 ;
	setAttr ".tk[508]" -type "float3" 0.10045314 -0.58073938 0.13826184 ;
	setAttr ".tk[509]" -type "float3" 0.13826184 -0.58073938 0.10045311 ;
	setAttr ".tk[510]" -type "float3" 0.16253656 -0.58073938 0.05281131 ;
	setAttr ".tk[511]" -type "float3" 0.17090112 -0.58073938 -3.0559505e-08 ;
	setAttr ".tk[512]" -type "float3" 0.16253656 -0.58073938 -0.052811369 ;
	setAttr ".tk[513]" -type "float3" 0.13826184 -0.58073938 -0.10045317 ;
	setAttr ".tk[514]" -type "float3" 0.10045311 -0.58073938 -0.13826187 ;
	setAttr ".tk[515]" -type "float3" 0.052811306 -0.58073938 -0.16253664 ;
	setAttr ".tk[516]" -type "float3" -1.5279753e-08 -0.58073938 -0.17090121 ;
	setAttr ".tk[517]" -type "float3" -0.052811339 -0.58073938 -0.16253658 ;
	setAttr ".tk[518]" -type "float3" -0.10045314 -0.58073938 -0.13826187 ;
	setAttr ".tk[519]" -type "float3" -0.13826184 -0.58073938 -0.10045317 ;
	setAttr ".tk[520]" -type "float3" -0.16253656 -0.58073938 -0.052811369 ;
	setAttr ".tk[521]" -type "float3" -0.17090112 -0.58073938 -3.0559505e-08 ;
	setAttr ".tk[522]" -type "float3" -0.02827549 -0.413908 0.0091871768 ;
	setAttr ".tk[523]" -type "float3" -0.028275549 -0.41390827 0.0091871917 ;
	setAttr ".tk[524]" -type "float3" -0.024052709 -0.413908 0.017475083 ;
	setAttr ".tk[525]" -type "float3" -0.024052668 -0.41390827 0.017475126 ;
	setAttr ".tk[526]" -type "float3" -0.017475232 -0.413908 0.02405256 ;
	setAttr ".tk[527]" -type "float3" -0.017475288 -0.41390827 0.024052514 ;
	setAttr ".tk[528]" -type "float3" -0.009187296 -0.413908 0.02827552 ;
	setAttr ".tk[529]" -type "float3" -0.009187324 -0.41390827 0.028275501 ;
	setAttr ".tk[530]" -type "float3" -5.670654e-08 -0.413908 0.029730469 ;
	setAttr ".tk[531]" -type "float3" -5.6706629e-08 -0.41390827 0.02973057 ;
	setAttr ".tk[532]" -type "float3" 0.0091871992 -0.413908 0.02827552 ;
	setAttr ".tk[533]" -type "float3" 0.0091872197 -0.41390827 0.028275497 ;
	setAttr ".tk[534]" -type "float3" 0.017475188 -0.413908 0.02405256 ;
	setAttr ".tk[535]" -type "float3" 0.017475152 -0.41390827 0.024052508 ;
	setAttr ".tk[536]" -type "float3" 0.024052531 -0.413908 0.017475203 ;
	setAttr ".tk[537]" -type "float3" 0.024052545 -0.41390827 0.017475145 ;
	setAttr ".tk[538]" -type "float3" 0.028275579 -0.413908 0.0091871619 ;
	setAttr ".tk[539]" -type "float3" 0.028275443 -0.41390827 0.0091871861 ;
	setAttr ".tk[540]" -type "float3" 0.029730439 -0.413908 -8.5059966e-08 ;
	setAttr ".tk[541]" -type "float3" 0.029730542 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[542]" -type "float3" 0.028275579 -0.413908 -0.0091873854 ;
	setAttr ".tk[543]" -type "float3" 0.028275443 -0.41390827 -0.0091873538 ;
	setAttr ".tk[544]" -type "float3" 0.024052531 -0.413908 -0.017475337 ;
	setAttr ".tk[545]" -type "float3" 0.024052542 -0.41390827 -0.017475288 ;
	setAttr ".tk[546]" -type "float3" 0.017475113 -0.413908 -0.02405262 ;
	setAttr ".tk[547]" -type "float3" 0.017475171 -0.41390827 -0.024052681 ;
	setAttr ".tk[548]" -type "float3" 0.0091871917 -0.413908 -0.028275669 ;
	setAttr ".tk[549]" -type "float3" 0.0091872141 -0.41390827 -0.028275579 ;
	setAttr ".tk[550]" -type "float3" -5.5820635e-08 -0.413908 -0.029730588 ;
	setAttr ".tk[551]" -type "float3" -5.5820621e-08 -0.41390827 -0.029730694 ;
	setAttr ".tk[552]" -type "float3" -0.0091873556 -0.413908 -0.028275609 ;
	setAttr ".tk[553]" -type "float3" -0.0091873258 -0.41390827 -0.028275575 ;
	setAttr ".tk[554]" -type "float3" -0.017475367 -0.413908 -0.02405262 ;
	setAttr ".tk[555]" -type "float3" -0.017475288 -0.41390827 -0.02405268 ;
	setAttr ".tk[556]" -type "float3" -0.02405268 -0.413908 -0.017475322 ;
	setAttr ".tk[557]" -type "float3" -0.024052635 -0.41390827 -0.017475285 ;
	setAttr ".tk[558]" -type "float3" -0.02827543 -0.413908 -0.0091873705 ;
	setAttr ".tk[559]" -type "float3" -0.028275512 -0.41390827 -0.0091873519 ;
	setAttr ".tk[560]" -type "float3" -0.029730588 -0.413908 -8.5059966e-08 ;
	setAttr ".tk[561]" -type "float3" -0.0297307 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[562]" -type "float3" -0.089191839 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[563]" -type "float3" -0.089191839 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[564]" -type "float3" -0.14865334 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[565]" -type "float3" -0.14865334 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[566]" -type "float3" -0.20811445 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[567]" -type "float3" -0.20811445 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[568]" -type "float3" -0.26757532 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[569]" -type "float3" -0.26757532 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[570]" -type "float3" -0.32703692 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[571]" -type "float3" -0.32703692 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[572]" -type "float3" -0.38649803 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[573]" -type "float3" -0.38649803 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[574]" -type "float3" -0.44595927 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[575]" -type "float3" -0.44595927 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[576]" -type "float3" -0.084826536 -0.41390827 -0.027561897 ;
	setAttr ".tk[577]" -type "float3" -0.084826536 -0.41390827 -0.027561897 ;
	setAttr ".tk[578]" -type "float3" -0.14137757 -0.41390827 -0.045936465 ;
	setAttr ".tk[579]" -type "float3" -0.14137757 -0.41390827 -0.045936465 ;
	setAttr ".tk[580]" -type "float3" -0.19792879 -0.41390827 -0.064310975 ;
	setAttr ".tk[581]" -type "float3" -0.19792879 -0.41390827 -0.064310975 ;
	setAttr ".tk[582]" -type "float3" -0.25447962 -0.41390827 -0.082685553 ;
	setAttr ".tk[583]" -type "float3" -0.25447962 -0.41390827 -0.082685553 ;
	setAttr ".tk[584]" -type "float3" -0.31103045 -0.41390827 -0.10105994 ;
	setAttr ".tk[585]" -type "float3" -0.31103045 -0.41390827 -0.10105994 ;
	setAttr ".tk[586]" -type "float3" -0.36758131 -0.41390827 -0.11943462 ;
	setAttr ".tk[587]" -type "float3" -0.36758131 -0.41390827 -0.11943462 ;
	setAttr ".tk[588]" -type "float3" -0.42413265 -0.41390827 -0.13780916 ;
	setAttr ".tk[589]" -type "float3" -0.42413265 -0.41390827 -0.13780916 ;
	setAttr ".tk[590]" -type "float3" -0.072157755 -0.41390827 -0.052425798 ;
	setAttr ".tk[591]" -type "float3" -0.072157755 -0.41390827 -0.052425798 ;
	setAttr ".tk[592]" -type "float3" -0.12026296 -0.41390827 -0.087376133 ;
	setAttr ".tk[593]" -type "float3" -0.12026296 -0.41390827 -0.087376133 ;
	setAttr ".tk[594]" -type "float3" -0.16836798 -0.41390827 -0.12232657 ;
	setAttr ".tk[595]" -type "float3" -0.16836798 -0.41390827 -0.12232657 ;
	setAttr ".tk[596]" -type "float3" -0.21647313 -0.41390827 -0.15727711 ;
	setAttr ".tk[597]" -type "float3" -0.21647313 -0.41390827 -0.15727711 ;
	setAttr ".tk[598]" -type "float3" -0.26457864 -0.41390827 -0.19222747 ;
	setAttr ".tk[599]" -type "float3" -0.26457864 -0.41390827 -0.19222747 ;
	setAttr ".tk[600]" -type "float3" -0.31268394 -0.41390827 -0.22717813 ;
	setAttr ".tk[601]" -type "float3" -0.31268394 -0.41390827 -0.22717813 ;
	setAttr ".tk[602]" -type "float3" -0.360789 -0.41390827 -0.26212835 ;
	setAttr ".tk[603]" -type "float3" -0.360789 -0.41390827 -0.26212835 ;
	setAttr ".tk[604]" -type "float3" -0.052425727 -0.41390827 -0.0721578 ;
	setAttr ".tk[605]" -type "float3" -0.052425727 -0.41390827 -0.0721578 ;
	setAttr ".tk[606]" -type "float3" -0.087376103 -0.41390827 -0.12026295 ;
	setAttr ".tk[607]" -type "float3" -0.087376103 -0.41390827 -0.12026295 ;
	setAttr ".tk[608]" -type "float3" -0.12232649 -0.41390827 -0.16836801 ;
	setAttr ".tk[609]" -type "float3" -0.12232649 -0.41390827 -0.16836801 ;
	setAttr ".tk[610]" -type "float3" -0.15727709 -0.41390827 -0.21647325 ;
	setAttr ".tk[611]" -type "float3" -0.15727709 -0.41390827 -0.21647325 ;
	setAttr ".tk[612]" -type "float3" -0.19222739 -0.41390827 -0.2645787 ;
	setAttr ".tk[613]" -type "float3" -0.19222739 -0.41390827 -0.2645787 ;
	setAttr ".tk[614]" -type "float3" -0.22717822 -0.41390827 -0.31268397 ;
	setAttr ".tk[615]" -type "float3" -0.22717822 -0.41390827 -0.31268397 ;
	setAttr ".tk[616]" -type "float3" -0.26212817 -0.41390827 -0.36078864 ;
	setAttr ".tk[617]" -type "float3" -0.26212817 -0.41390827 -0.36078864 ;
	setAttr ".tk[618]" -type "float3" -0.027561866 -0.41390827 -0.084826604 ;
	setAttr ".tk[619]" -type "float3" -0.027561866 -0.41390827 -0.084826604 ;
	setAttr ".tk[620]" -type "float3" -0.045936406 -0.41390827 -0.14137766 ;
	setAttr ".tk[621]" -type "float3" -0.045936406 -0.41390827 -0.14137766 ;
	setAttr ".tk[622]" -type "float3" -0.064310916 -0.41390827 -0.19792883 ;
	setAttr ".tk[623]" -type "float3" -0.064310916 -0.41390827 -0.19792883 ;
	setAttr ".tk[624]" -type "float3" -0.082685515 -0.41390827 -0.25447968 ;
	setAttr ".tk[625]" -type "float3" -0.082685515 -0.41390827 -0.25447968 ;
	setAttr ".tk[626]" -type "float3" -0.10105985 -0.41390827 -0.31103051 ;
	setAttr ".tk[627]" -type "float3" -0.10105985 -0.41390827 -0.31103051 ;
	setAttr ".tk[628]" -type "float3" -0.1194347 -0.41390827 -0.36758143 ;
	setAttr ".tk[629]" -type "float3" -0.1194347 -0.41390827 -0.36758143 ;
	setAttr ".tk[630]" -type "float3" -0.1378091 -0.41390827 -0.4241327 ;
	setAttr ".tk[631]" -type "float3" -0.1378091 -0.41390827 -0.4241327 ;
	setAttr ".tk[632]" -type "float3" -5.4048563e-08 -0.41390827 -0.089191899 ;
	setAttr ".tk[633]" -type "float3" -5.4048563e-08 -0.41390827 -0.089191899 ;
	setAttr ".tk[634]" -type "float3" -5.2276445e-08 -0.41390827 -0.1486533 ;
	setAttr ".tk[635]" -type "float3" -5.2276445e-08 -0.41390827 -0.1486533 ;
	setAttr ".tk[636]" -type "float3" -5.0504418e-08 -0.41390827 -0.2081145 ;
	setAttr ".tk[637]" -type "float3" -5.0504418e-08 -0.41390827 -0.2081145 ;
	setAttr ".tk[638]" -type "float3" -4.8732247e-08 -0.41390827 -0.26757538 ;
	setAttr ".tk[639]" -type "float3" -4.8732247e-08 -0.41390827 -0.26757538 ;
	setAttr ".tk[640]" -type "float3" -4.6960171e-08 -0.41390827 -0.32703704 ;
	setAttr ".tk[641]" -type "float3" -4.6960171e-08 -0.41390827 -0.32703704 ;
	setAttr ".tk[642]" -type "float3" -4.5188131e-08 -0.41390827 -0.38649815 ;
	setAttr ".tk[643]" -type "float3" -4.5188131e-08 -0.41390827 -0.38649815 ;
	setAttr ".tk[644]" -type "float3" -4.3416051e-08 -0.41390827 -0.44595909 ;
	setAttr ".tk[645]" -type "float3" -4.3416051e-08 -0.41390827 -0.44595909 ;
	setAttr ".tk[646]" -type "float3" 0.027561758 -0.41390827 -0.084826604 ;
	setAttr ".tk[647]" -type "float3" 0.027561758 -0.41390827 -0.084826604 ;
	setAttr ".tk[648]" -type "float3" 0.045936249 -0.41390827 -0.14137766 ;
	setAttr ".tk[649]" -type "float3" 0.045936249 -0.41390827 -0.14137766 ;
	setAttr ".tk[650]" -type "float3" 0.064310797 -0.41390827 -0.19792883 ;
	setAttr ".tk[651]" -type "float3" 0.064310797 -0.41390827 -0.19792883 ;
	setAttr ".tk[652]" -type "float3" 0.082685396 -0.41390827 -0.25447974 ;
	setAttr ".tk[653]" -type "float3" 0.082685396 -0.41390827 -0.25447974 ;
	setAttr ".tk[654]" -type "float3" 0.10105978 -0.41390827 -0.31103057 ;
	setAttr ".tk[655]" -type "float3" 0.10105978 -0.41390827 -0.31103057 ;
	setAttr ".tk[656]" -type "float3" 0.11943452 -0.41390827 -0.36758149 ;
	setAttr ".tk[657]" -type "float3" 0.11943452 -0.41390827 -0.36758149 ;
	setAttr ".tk[658]" -type "float3" 0.13780901 -0.41390827 -0.42413276 ;
	setAttr ".tk[659]" -type "float3" 0.13780901 -0.41390827 -0.42413276 ;
	setAttr ".tk[660]" -type "float3" 0.052425593 -0.41390827 -0.072157815 ;
	setAttr ".tk[661]" -type "float3" 0.052425593 -0.41390827 -0.072157815 ;
	setAttr ".tk[662]" -type "float3" 0.087375984 -0.41390827 -0.12026298 ;
	setAttr ".tk[663]" -type "float3" 0.087375984 -0.41390827 -0.12026298 ;
	setAttr ".tk[664]" -type "float3" 0.12232645 -0.41390827 -0.16836801 ;
	setAttr ".tk[665]" -type "float3" 0.12232645 -0.41390827 -0.16836801 ;
	setAttr ".tk[666]" -type "float3" 0.15727696 -0.41390827 -0.21647325 ;
	setAttr ".tk[667]" -type "float3" 0.15727696 -0.41390827 -0.21647325 ;
	setAttr ".tk[668]" -type "float3" 0.1922273 -0.41390827 -0.26457876 ;
	setAttr ".tk[669]" -type "float3" 0.1922273 -0.41390827 -0.26457876 ;
	setAttr ".tk[670]" -type "float3" 0.22717808 -0.41390827 -0.31268355 ;
	setAttr ".tk[671]" -type "float3" 0.22717808 -0.41390827 -0.31268355 ;
	setAttr ".tk[672]" -type "float3" 0.26212806 -0.41390827 -0.36078864 ;
	setAttr ".tk[673]" -type "float3" 0.26212806 -0.41390827 -0.36078864 ;
	setAttr ".tk[674]" -type "float3" 0.072157733 -0.41390827 -0.052425802 ;
	setAttr ".tk[675]" -type "float3" 0.072157733 -0.41390827 -0.052425802 ;
	setAttr ".tk[676]" -type "float3" 0.12026282 -0.41390827 -0.087376133 ;
	setAttr ".tk[677]" -type "float3" 0.12026282 -0.41390827 -0.087376133 ;
	setAttr ".tk[678]" -type "float3" 0.16836804 -0.41390827 -0.1223266 ;
	setAttr ".tk[679]" -type "float3" 0.16836804 -0.41390827 -0.1223266 ;
	setAttr ".tk[680]" -type "float3" 0.21647306 -0.41390827 -0.15727697 ;
	setAttr ".tk[681]" -type "float3" 0.21647306 -0.41390827 -0.15727697 ;
	setAttr ".tk[682]" -type "float3" 0.26457852 -0.41390827 -0.19222753 ;
	setAttr ".tk[683]" -type "float3" 0.26457852 -0.41390827 -0.19222753 ;
	setAttr ".tk[684]" -type "float3" 0.31268382 -0.41390827 -0.22717816 ;
	setAttr ".tk[685]" -type "float3" 0.31268382 -0.41390827 -0.22717816 ;
	setAttr ".tk[686]" -type "float3" 0.360789 -0.41390827 -0.26212835 ;
	setAttr ".tk[687]" -type "float3" 0.360789 -0.41390827 -0.26212835 ;
	setAttr ".tk[688]" -type "float3" 0.084826589 -0.41390827 -0.027561907 ;
	setAttr ".tk[689]" -type "float3" 0.084826589 -0.41390827 -0.027561907 ;
	setAttr ".tk[690]" -type "float3" 0.14137751 -0.41390827 -0.045936488 ;
	setAttr ".tk[691]" -type "float3" 0.14137751 -0.41390827 -0.045936488 ;
	setAttr ".tk[692]" -type "float3" 0.19792867 -0.41390827 -0.064310983 ;
	setAttr ".tk[693]" -type "float3" 0.19792867 -0.41390827 -0.064310983 ;
	setAttr ".tk[694]" -type "float3" 0.2544795 -0.41390827 -0.0826855 ;
	setAttr ".tk[695]" -type "float3" 0.2544795 -0.41390827 -0.0826855 ;
	setAttr ".tk[696]" -type "float3" 0.31103033 -0.41390827 -0.10105997 ;
	setAttr ".tk[697]" -type "float3" 0.31103033 -0.41390827 -0.10105997 ;
	setAttr ".tk[698]" -type "float3" 0.36758128 -0.41390827 -0.11943465 ;
	setAttr ".tk[699]" -type "float3" 0.36758128 -0.41390827 -0.11943465 ;
	setAttr ".tk[700]" -type "float3" 0.42413265 -0.41390827 -0.13780922 ;
	setAttr ".tk[701]" -type "float3" 0.42413265 -0.41390827 -0.13780922 ;
	setAttr ".tk[702]" -type "float3" 0.089191779 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[703]" -type "float3" 0.089191779 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[704]" -type "float3" 0.14865316 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[705]" -type "float3" 0.14865316 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[706]" -type "float3" 0.20811443 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[707]" -type "float3" 0.20811443 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[708]" -type "float3" 0.26757538 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[709]" -type "float3" 0.26757538 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[710]" -type "float3" 0.32703692 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[711]" -type "float3" 0.32703692 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[712]" -type "float3" 0.38649803 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[713]" -type "float3" 0.38649803 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[714]" -type "float3" 0.44595927 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[715]" -type "float3" 0.44595927 -0.41390827 -8.5059952e-08 ;
	setAttr ".tk[716]" -type "float3" 0.084826589 -0.41390827 0.027561719 ;
	setAttr ".tk[717]" -type "float3" 0.084826589 -0.41390827 0.027561719 ;
	setAttr ".tk[718]" -type "float3" 0.14137751 -0.41390827 0.045936231 ;
	setAttr ".tk[719]" -type "float3" 0.14137751 -0.41390827 0.045936231 ;
	setAttr ".tk[720]" -type "float3" 0.19792867 -0.41390827 0.064310737 ;
	setAttr ".tk[721]" -type "float3" 0.19792867 -0.41390827 0.064310737 ;
	setAttr ".tk[722]" -type "float3" 0.2544795 -0.41390827 0.082685351 ;
	setAttr ".tk[723]" -type "float3" 0.2544795 -0.41390827 0.082685351 ;
	setAttr ".tk[724]" -type "float3" 0.31103033 -0.41390827 0.10105979 ;
	setAttr ".tk[725]" -type "float3" 0.31103033 -0.41390827 0.10105979 ;
	setAttr ".tk[726]" -type "float3" 0.36758128 -0.41390827 0.11943446 ;
	setAttr ".tk[727]" -type "float3" 0.36758128 -0.41390827 0.11943446 ;
	setAttr ".tk[728]" -type "float3" 0.42413265 -0.41390827 0.13780898 ;
	setAttr ".tk[729]" -type "float3" 0.42413265 -0.41390827 0.13780898 ;
	setAttr ".tk[730]" -type "float3" 0.072157726 -0.41390827 0.05242556 ;
	setAttr ".tk[731]" -type "float3" 0.072157726 -0.41390827 0.05242556 ;
	setAttr ".tk[732]" -type "float3" 0.12026284 -0.41390827 0.087375954 ;
	setAttr ".tk[733]" -type "float3" 0.12026284 -0.41390827 0.087375954 ;
	setAttr ".tk[734]" -type "float3" 0.16836807 -0.41390827 0.12232642 ;
	setAttr ".tk[735]" -type "float3" 0.16836807 -0.41390827 0.12232642 ;
	setAttr ".tk[736]" -type "float3" 0.2164731 -0.41390827 0.15727693 ;
	setAttr ".tk[737]" -type "float3" 0.2164731 -0.41390827 0.15727693 ;
	setAttr ".tk[738]" -type "float3" 0.26457858 -0.41390827 0.19222727 ;
	setAttr ".tk[739]" -type "float3" 0.26457858 -0.41390827 0.19222727 ;
	setAttr ".tk[740]" -type "float3" 0.31268388 -0.41390827 0.22717808 ;
	setAttr ".tk[741]" -type "float3" 0.31268388 -0.41390827 0.22717808 ;
	setAttr ".tk[742]" -type "float3" 0.360789 -0.41390827 0.26212811 ;
	setAttr ".tk[743]" -type "float3" 0.360789 -0.41390827 0.26212811 ;
	setAttr ".tk[744]" -type "float3" 0.052425615 -0.41390827 0.072157711 ;
	setAttr ".tk[745]" -type "float3" 0.052425615 -0.41390827 0.072157711 ;
	setAttr ".tk[746]" -type "float3" 0.087376028 -0.41390827 0.12026282 ;
	setAttr ".tk[747]" -type "float3" 0.087376028 -0.41390827 0.12026282 ;
	setAttr ".tk[748]" -type "float3" 0.12232646 -0.41390827 0.16836804 ;
	setAttr ".tk[749]" -type "float3" 0.12232646 -0.41390827 0.16836804 ;
	setAttr ".tk[750]" -type "float3" 0.15727705 -0.41390827 0.21647306 ;
	setAttr ".tk[751]" -type "float3" 0.15727705 -0.41390827 0.21647306 ;
	setAttr ".tk[752]" -type "float3" 0.19222733 -0.41390827 0.26457858 ;
	setAttr ".tk[753]" -type "float3" 0.19222733 -0.41390827 0.26457858 ;
	setAttr ".tk[754]" -type "float3" 0.22717817 -0.41390827 0.31268388 ;
	setAttr ".tk[755]" -type "float3" 0.22717817 -0.41390827 0.31268388 ;
	setAttr ".tk[756]" -type "float3" 0.26212817 -0.41390827 0.360789 ;
	setAttr ".tk[757]" -type "float3" 0.26212817 -0.41390827 0.360789 ;
	setAttr ".tk[758]" -type "float3" 0.027561765 -0.41390827 0.084826559 ;
	setAttr ".tk[759]" -type "float3" 0.027561765 -0.41390827 0.084826559 ;
	setAttr ".tk[760]" -type "float3" 0.045936264 -0.41390827 0.14137751 ;
	setAttr ".tk[761]" -type "float3" 0.045936264 -0.41390827 0.14137751 ;
	setAttr ".tk[762]" -type "float3" 0.064310841 -0.41390827 0.19792867 ;
	setAttr ".tk[763]" -type "float3" 0.064310841 -0.41390827 0.19792867 ;
	setAttr ".tk[764]" -type "float3" 0.082685411 -0.41390827 0.25447956 ;
	setAttr ".tk[765]" -type "float3" 0.082685411 -0.41390827 0.25447956 ;
	setAttr ".tk[766]" -type "float3" 0.10105982 -0.41390827 0.31103039 ;
	setAttr ".tk[767]" -type "float3" 0.10105982 -0.41390827 0.31103039 ;
	setAttr ".tk[768]" -type "float3" 0.11943461 -0.41390827 0.36758137 ;
	setAttr ".tk[769]" -type "float3" 0.11943461 -0.41390827 0.36758137 ;
	setAttr ".tk[770]" -type "float3" 0.1378091 -0.41390827 0.42413267 ;
	setAttr ".tk[771]" -type "float3" 0.1378091 -0.41390827 0.42413267 ;
	setAttr ".tk[772]" -type "float3" -5.6706629e-08 -0.41390827 0.089191779 ;
	setAttr ".tk[773]" -type "float3" -5.6706629e-08 -0.41390827 0.089191779 ;
	setAttr ".tk[774]" -type "float3" -5.6706629e-08 -0.41390827 0.14865319 ;
	setAttr ".tk[775]" -type "float3" -5.6706629e-08 -0.41390827 0.14865319 ;
	setAttr ".tk[776]" -type "float3" -5.6706629e-08 -0.41390827 0.20811443 ;
	setAttr ".tk[777]" -type "float3" -5.6706629e-08 -0.41390827 0.20811443 ;
	setAttr ".tk[778]" -type "float3" -5.6706629e-08 -0.41390827 0.26757544 ;
	setAttr ".tk[779]" -type "float3" -5.6706629e-08 -0.41390827 0.26757544 ;
	setAttr ".tk[780]" -type "float3" -5.6706629e-08 -0.41390827 0.32703698 ;
	setAttr ".tk[781]" -type "float3" -5.6706629e-08 -0.41390827 0.32703698 ;
	setAttr ".tk[782]" -type "float3" -5.6706629e-08 -0.41390827 0.38649809 ;
	setAttr ".tk[783]" -type "float3" -5.6706629e-08 -0.41390827 0.38649809 ;
	setAttr ".tk[784]" -type "float3" -5.6706629e-08 -0.41390827 0.44595909 ;
	setAttr ".tk[785]" -type "float3" -5.6706629e-08 -0.41390827 0.44595909 ;
	setAttr ".tk[786]" -type "float3" -0.027561873 -0.41390827 0.084826574 ;
	setAttr ".tk[787]" -type "float3" -0.027561873 -0.41390827 0.084826574 ;
	setAttr ".tk[788]" -type "float3" -0.04593645 -0.41390827 0.14137754 ;
	setAttr ".tk[789]" -type "float3" -0.04593645 -0.41390827 0.14137754 ;
	setAttr ".tk[790]" -type "float3" -0.064310975 -0.41390827 0.1979287 ;
	setAttr ".tk[791]" -type "float3" -0.064310975 -0.41390827 0.1979287 ;
	setAttr ".tk[792]" -type "float3" -0.082685485 -0.41390827 0.25447956 ;
	setAttr ".tk[793]" -type "float3" -0.082685485 -0.41390827 0.25447956 ;
	setAttr ".tk[794]" -type "float3" -0.10105997 -0.41390827 0.31103051 ;
	setAttr ".tk[795]" -type "float3" -0.10105997 -0.41390827 0.31103051 ;
	setAttr ".tk[796]" -type "float3" -0.11943467 -0.41390827 0.36758137 ;
	setAttr ".tk[797]" -type "float3" -0.11943467 -0.41390827 0.36758137 ;
	setAttr ".tk[798]" -type "float3" -0.13780925 -0.41390827 0.42413276 ;
	setAttr ".tk[799]" -type "float3" -0.13780925 -0.41390827 0.42413276 ;
	setAttr ".tk[800]" -type "float3" -0.052425794 -0.41390827 0.072157733 ;
	setAttr ".tk[801]" -type "float3" -0.052425794 -0.41390827 0.072157733 ;
	setAttr ".tk[802]" -type "float3" -0.087376155 -0.41390827 0.12026284 ;
	setAttr ".tk[803]" -type "float3" -0.087376155 -0.41390827 0.12026284 ;
	setAttr ".tk[804]" -type "float3" -0.12232661 -0.41390827 0.1683681 ;
	setAttr ".tk[805]" -type "float3" -0.12232661 -0.41390827 0.1683681 ;
	setAttr ".tk[806]" -type "float3" -0.15727703 -0.41390827 0.21647313 ;
	setAttr ".tk[807]" -type "float3" -0.15727703 -0.41390827 0.21647313 ;
	setAttr ".tk[808]" -type "float3" -0.19222765 -0.41390827 0.2645787 ;
	setAttr ".tk[809]" -type "float3" -0.19222765 -0.41390827 0.2645787 ;
	setAttr ".tk[810]" -type "float3" -0.22717795 -0.41390827 0.31268397 ;
	setAttr ".tk[811]" -type "float3" -0.22717795 -0.41390827 0.31268397 ;
	setAttr ".tk[812]" -type "float3" -0.26212853 -0.41390827 0.36078864 ;
	setAttr ".tk[813]" -type "float3" -0.26212853 -0.41390827 0.36078864 ;
	setAttr ".tk[814]" -type "float3" -0.072157815 -0.41390827 0.052425578 ;
	setAttr ".tk[815]" -type "float3" -0.072157815 -0.41390827 0.052425578 ;
	setAttr ".tk[816]" -type "float3" -0.12026301 -0.41390827 0.087376013 ;
	setAttr ".tk[817]" -type "float3" -0.12026301 -0.41390827 0.087376013 ;
	setAttr ".tk[818]" -type "float3" -0.1683681 -0.41390827 0.12232646 ;
	setAttr ".tk[819]" -type "float3" -0.1683681 -0.41390827 0.12232646 ;
	setAttr ".tk[820]" -type "float3" -0.21647336 -0.41390827 0.15727705 ;
	setAttr ".tk[821]" -type "float3" -0.21647336 -0.41390827 0.15727705 ;
	setAttr ".tk[822]" -type "float3" -0.26457882 -0.41390827 0.19222736 ;
	setAttr ".tk[823]" -type "float3" -0.26457882 -0.41390827 0.19222736 ;
	setAttr ".tk[824]" -type "float3" -0.31268379 -0.41390827 0.22717819 ;
	setAttr ".tk[825]" -type "float3" -0.31268379 -0.41390827 0.22717819 ;
	setAttr ".tk[826]" -type "float3" -0.36078888 -0.41390827 0.26212823 ;
	setAttr ".tk[827]" -type "float3" -0.36078888 -0.41390827 0.26212823 ;
	setAttr ".tk[828]" -type "float3" -0.084826618 -0.41390827 0.027561732 ;
	setAttr ".tk[829]" -type "float3" -0.084826618 -0.41390827 0.027561732 ;
	setAttr ".tk[830]" -type "float3" -0.14137769 -0.41390827 0.045936238 ;
	setAttr ".tk[831]" -type "float3" -0.14137769 -0.41390827 0.045936238 ;
	setAttr ".tk[832]" -type "float3" -0.19792861 -0.41390827 0.064310797 ;
	setAttr ".tk[833]" -type "float3" -0.19792861 -0.41390827 0.064310797 ;
	setAttr ".tk[834]" -type "float3" -0.25447991 -0.41390827 0.082685396 ;
	setAttr ".tk[835]" -type "float3" -0.25447991 -0.41390827 0.082685396 ;
	setAttr ".tk[836]" -type "float3" -0.31103081 -0.41390827 0.10105981 ;
	setAttr ".tk[837]" -type "float3" -0.31103081 -0.41390827 0.10105981 ;
	setAttr ".tk[838]" -type "float3" -0.36758149 -0.41390827 0.11943458 ;
	setAttr ".tk[839]" -type "float3" -0.36758149 -0.41390827 0.11943458 ;
	setAttr ".tk[840]" -type "float3" -0.42413253 -0.41390827 0.13780907 ;
	setAttr ".tk[841]" -type "float3" -0.42413253 -0.41390827 0.13780907 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "75C96554-9E4C-B41B-9F37-858B59778E35";
	setAttr ".dc" -type "componentList" 2 "f[0:39]" "f[200:439]";
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "90939A16-1047-ACB3-5170-F3B1E84DBB6A";
	setAttr ".ics" -type "componentList" 40 "e[180]" "e[187]" "e[194]" "e[201]" "e[208]" "e[215]" "e[222]" "e[229]" "e[236]" "e[243]" "e[250]" "e[257]" "e[264]" "e[271]" "e[278]" "e[285]" "e[292]" "e[299]" "e[306]" "e[313]" "e[325:326]" "e[332:333]" "e[339:340]" "e[346:347]" "e[353:354]" "e[360:361]" "e[367:368]" "e[374:375]" "e[381:382]" "e[388:389]" "e[395:396]" "e[402:403]" "e[409:410]" "e[416:417]" "e[423:424]" "e[430:431]" "e[437:438]" "e[444:445]" "e[451:452]" "e[458:459]";
createNode polySubdFace -n "polySubdFace6";
	rename -uid "2A7B8D91-4C45-8B01-8121-9092849F9C00";
	setAttr ".ics" -type "componentList" 1 "f[160]";
	setAttr ".dv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "366FD3BE-E944-BF17-0EE9-EB96423061AA";
	setAttr ".ics" -type "componentList" 40 "f[182]" "f[185]" "f[188]" "f[191]" "f[194]" "f[197]" "f[200]" "f[203]" "f[206]" "f[209]" "f[212]" "f[215]" "f[218]" "f[221]" "f[224]" "f[227]" "f[230]" "f[233]" "f[236]" "f[239]" "f[307:308]" "f[316:317]" "f[325:326]" "f[334:335]" "f[343:344]" "f[352:353]" "f[361:362]" "f[370:371]" "f[379:380]" "f[388:389]" "f[397:398]" "f[406:407]" "f[415:416]" "f[424:425]" "f[433:434]" "f[442:443]" "f[451:452]" "f[460:461]" "f[469:470]" "f[478:479]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9802322e-08 -0.75000012 -2.0861626e-07 ;
	setAttr ".rs" 2081668451;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.55612850189208984 -0.75000017881393433 -0.55612874031066895 ;
	setAttr ".cbx" -type "double3" 0.55612844228744507 -0.75000005960464478 0.55612832307815552 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak3";
	rename -uid "637A90C6-3A45-8B22-B201-93AF4986A7B9";
	setAttr ".uopa" yes;
	setAttr -s 375 ".tk";
	setAttr ".tk[301]" -type "float3" 5.6120468e-09 -1.1920929e-07 -1.1819682e-09 ;
	setAttr ".tk[322]" -type "float3" -1.1920929e-07 -5.9604645e-08 1.4210855e-14 ;
	setAttr ".tk[325]" -type "float3" 8.9406967e-08 -5.9604645e-08 0 ;
	setAttr ".tk[326]" -type "float3" 5.9604645e-08 -5.9604645e-08 0 ;
	setAttr ".tk[327]" -type "float3" 0 -5.9604645e-08 0 ;
	setAttr ".tk[330]" -type "float3" 2.9802322e-08 -5.9604645e-08 2.9802322e-08 ;
	setAttr ".tk[331]" -type "float3" 0 -5.9604645e-08 2.9802322e-08 ;
	setAttr ".tk[334]" -type "float3" 0 -5.9604645e-08 5.9604645e-08 ;
	setAttr ".tk[335]" -type "float3" 5.9604645e-08 -1.1920929e-07 -2.9802322e-08 ;
	setAttr ".tk[338]" -type "float3" 7.4505806e-08 -5.9604645e-08 0 ;
	setAttr ".tk[339]" -type "float3" 2.2351742e-08 -1.7881393e-07 -5.9604645e-08 ;
	setAttr ".tk[342]" -type "float3" 1.4901161e-08 -5.9604645e-08 8.9406967e-08 ;
	setAttr ".tk[343]" -type "float3" -4.4408921e-16 -5.9604645e-08 -1.1920929e-07 ;
	setAttr ".tk[346]" -type "float3" -1.8626451e-08 -5.9604645e-08 8.9406967e-08 ;
	setAttr ".tk[347]" -type "float3" -2.2351742e-08 -5.9604645e-08 -5.9604645e-08 ;
	setAttr ".tk[350]" -type "float3" -7.4505806e-08 -5.9604645e-08 2.9802322e-08 ;
	setAttr ".tk[351]" -type "float3" -5.9604645e-08 -5.9604645e-08 -2.9802322e-08 ;
	setAttr ".tk[354]" -type "float3" 0 -5.9604645e-08 5.9604645e-08 ;
	setAttr ".tk[355]" -type "float3" 0 -5.9604645e-08 2.9802322e-08 ;
	setAttr ".tk[358]" -type "float3" -2.9802322e-08 -5.9604645e-08 2.9802322e-08 ;
	setAttr ".tk[359]" -type "float3" 2.9802322e-08 -5.9604645e-08 -1.4901161e-08 ;
	setAttr ".tk[362]" -type "float3" -1.1920929e-07 -5.9604645e-08 0 ;
	setAttr ".tk[363]" -type "float3" 1.1920929e-07 -5.9604645e-08 -1.4210855e-14 ;
	setAttr ".tk[366]" -type "float3" -1.1920929e-07 -5.9604645e-08 1.4901161e-08 ;
	setAttr ".tk[367]" -type "float3" 5.9604645e-08 -5.9604645e-08 -3.7252903e-08 ;
	setAttr ".tk[370]" -type "float3" -2.9802322e-08 -5.9604645e-08 1.4901161e-08 ;
	setAttr ".tk[371]" -type "float3" 0 -5.9604645e-08 -7.4505806e-08 ;
	setAttr ".tk[374]" -type "float3" -8.9406967e-08 -5.9604645e-08 0 ;
	setAttr ".tk[375]" -type "float3" -4.4703484e-08 -5.9604645e-08 0 ;
	setAttr ".tk[378]" -type "float3" -4.4703484e-08 -5.9604645e-08 -2.9802322e-08 ;
	setAttr ".tk[379]" -type "float3" -7.4505806e-09 -5.9604645e-08 5.9604645e-08 ;
	setAttr ".tk[382]" -type "float3" -1.4901161e-08 -5.9604645e-08 -8.9406967e-08 ;
	setAttr ".tk[383]" -type "float3" -7.1054274e-15 -1.1920929e-07 1.1920929e-07 ;
	setAttr ".tk[386]" -type "float3" 1.1175871e-08 -5.9604645e-08 -8.9406967e-08 ;
	setAttr ".tk[387]" -type "float3" -1.4901161e-08 -5.9604645e-08 5.9604645e-08 ;
	setAttr ".tk[390]" -type "float3" 2.9802322e-08 -5.9604645e-08 0 ;
	setAttr ".tk[391]" -type "float3" 1.4901161e-08 -5.9604645e-08 5.9604645e-08 ;
	setAttr ".tk[394]" -type "float3" 7.4505806e-08 -5.9604645e-08 -5.9604645e-08 ;
	setAttr ".tk[395]" -type "float3" -5.9604645e-08 -1.1920929e-07 -4.4703484e-08 ;
	setAttr ".tk[398]" -type "float3" 0 -5.9604645e-08 -5.9604645e-08 ;
	setAttr ".tk[399]" -type "float3" -1.1920929e-07 -5.9604645e-08 -1.4901161e-08 ;
	setAttr ".tk[406]" -type "float3" 5.9604645e-08 -5.9604645e-08 3.7252903e-09 ;
	setAttr ".tk[411]" -type "float3" 2.9802322e-08 -5.9604645e-08 -2.2351742e-08 ;
	setAttr ".tk[416]" -type "float3" -8.9406967e-08 -5.9604645e-08 -2.9802322e-08 ;
	setAttr ".tk[421]" -type "float3" 1.4901161e-08 -5.9604645e-08 0 ;
	setAttr ".tk[426]" -type "float3" 5.9604645e-08 -1.1920929e-07 -8.9406967e-08 ;
	setAttr ".tk[431]" -type "float3" 5.5879354e-09 -5.9604645e-08 5.9604645e-08 ;
	setAttr ".tk[436]" -type "float3" -7.4505806e-09 -5.9604645e-08 2.9802322e-08 ;
	setAttr ".tk[441]" -type "float3" -1.4901161e-08 -5.9604645e-08 0 ;
	setAttr ".tk[446]" -type "float3" -2.9802322e-08 -5.9604645e-08 0 ;
	setAttr ".tk[451]" -type "float3" 5.9604645e-08 -5.9604645e-08 4.4703484e-08 ;
	setAttr ".tk[456]" -type "float3" -8.9406967e-08 -5.9604645e-08 -7.4505806e-09 ;
	setAttr ".tk[461]" -type "float3" -2.9802322e-08 -5.9604645e-08 -2.2351742e-08 ;
	setAttr ".tk[466]" -type "float3" 1.1920929e-07 -5.9604645e-08 -2.9802322e-08 ;
	setAttr ".tk[471]" -type "float3" -1.4901161e-08 -5.9604645e-08 -2.9802322e-08 ;
	setAttr ".tk[476]" -type "float3" -4.4703484e-08 -5.9604645e-08 8.9406967e-08 ;
	setAttr ".tk[481]" -type "float3" 5.5879354e-09 -5.9604645e-08 -5.9604645e-08 ;
	setAttr ".tk[486]" -type "float3" -1.4901161e-08 -5.9604645e-08 0 ;
	setAttr ".tk[491]" -type "float3" -1.4901161e-08 -5.9604645e-08 0 ;
	setAttr ".tk[496]" -type "float3" 0 -5.9604645e-08 1.4901161e-08 ;
	setAttr ".tk[501]" -type "float3" -2.9802322e-08 -5.9604645e-08 -7.4505806e-08 ;
	setAttr ".tk[508]" -type "float3" 1.1920929e-07 -5.9604645e-08 1.8626451e-09 ;
	setAttr ".tk[509]" -type "float3" 0.16159594 -1.7881393e-07 2.5671625e-08 ;
	setAttr ".tk[510]" -type "float3" 0.13499939 -1.7881393e-07 0.021381829 ;
	setAttr ".tk[511]" -type "float3" 0.13499936 -1.7881393e-07 -0.021381788 ;
	setAttr ".tk[518]" -type "float3" -8.9406967e-08 -5.9604645e-08 5.9604645e-08 ;
	setAttr ".tk[519]" -type "float3" 0.15368685 -1.7881393e-07 0.049935944 ;
	setAttr ".tk[520]" -type "float3" 0.12178461 -1.7881393e-07 0.062052444 ;
	setAttr ".tk[527]" -type "float3" 5.9604645e-08 -5.9604645e-08 0 ;
	setAttr ".tk[528]" -type "float3" 0.130734 -1.7881393e-07 0.094983757 ;
	setAttr ".tk[529]" -type "float3" 0.096648738 -1.7881393e-07 0.096648827 ;
	setAttr ".tk[536]" -type "float3" 1.4901161e-08 -5.9604645e-08 -1.1920929e-07 ;
	setAttr ".tk[537]" -type "float3" 0.094983712 -1.1920929e-07 0.13073398 ;
	setAttr ".tk[538]" -type "float3" 0.062052414 -1.7881393e-07 0.12178464 ;
	setAttr ".tk[545]" -type "float3" 0 -1.1920929e-07 2.9802322e-08 ;
	setAttr ".tk[546]" -type "float3" 0.049935907 -1.7881393e-07 0.15368685 ;
	setAttr ".tk[547]" -type "float3" 0.021381777 -1.7881393e-07 0.13499945 ;
	setAttr ".tk[554]" -type "float3" -1.1175871e-08 -5.9604645e-08 5.9604645e-08 ;
	setAttr ".tk[555]" -type "float3" -3.8680348e-10 -1.7881393e-07 0.16159591 ;
	setAttr ".tk[556]" -type "float3" -0.021381792 -1.7881393e-07 0.13499945 ;
	setAttr ".tk[563]" -type "float3" -5.9604645e-08 -5.9604645e-08 -8.9406967e-08 ;
	setAttr ".tk[564]" -type "float3" -0.049935915 -1.7881393e-07 0.15368691 ;
	setAttr ".tk[565]" -type "float3" -0.062052444 -1.7881393e-07 0.12178464 ;
	setAttr ".tk[572]" -type "float3" -2.9802322e-08 -5.9604645e-08 0 ;
	setAttr ".tk[573]" -type "float3" -0.094983712 -5.9604645e-08 0.13073397 ;
	setAttr ".tk[574]" -type "float3" -0.096648782 -1.7881393e-07 0.096648827 ;
	setAttr ".tk[581]" -type "float3" 8.9406967e-08 -5.9604645e-08 -1.4901161e-08 ;
	setAttr ".tk[582]" -type "float3" -0.13073401 -1.7881393e-07 0.094983757 ;
	setAttr ".tk[583]" -type "float3" -0.12178461 -1.7881393e-07 0.062052399 ;
	setAttr ".tk[590]" -type "float3" -2.9802322e-08 -5.9604645e-08 -2.2351742e-08 ;
	setAttr ".tk[591]" -type "float3" -0.15368685 -1.1920929e-07 0.049935944 ;
	setAttr ".tk[592]" -type "float3" -0.13499942 -1.7881393e-07 0.021381829 ;
	setAttr ".tk[599]" -type "float3" -8.9406967e-08 -5.9604645e-08 -3.7252903e-09 ;
	setAttr ".tk[600]" -type "float3" -0.161596 -1.7881393e-07 3.5170387e-08 ;
	setAttr ".tk[601]" -type "float3" -0.13499942 -1.7881393e-07 -0.021381781 ;
	setAttr ".tk[608]" -type "float3" 8.9406967e-08 -5.9604645e-08 -7.4505806e-08 ;
	setAttr ".tk[609]" -type "float3" -0.15368679 -1.7881393e-07 -0.049935862 ;
	setAttr ".tk[610]" -type "float3" -0.12178457 -1.7881393e-07 -0.062052332 ;
	setAttr ".tk[617]" -type "float3" -2.9802322e-08 -5.9604645e-08 -1.4901161e-08 ;
	setAttr ".tk[618]" -type "float3" -0.13073404 -1.7881393e-07 -0.094983682 ;
	setAttr ".tk[619]" -type "float3" -0.096648768 -1.7881393e-07 -0.096648782 ;
	setAttr ".tk[626]" -type "float3" 1.4901161e-08 -5.9604645e-08 8.9406967e-08 ;
	setAttr ".tk[627]" -type "float3" -0.094983682 -1.7881393e-07 -0.13073398 ;
	setAttr ".tk[628]" -type "float3" -0.062052436 -1.7881393e-07 -0.12178461 ;
	setAttr ".tk[635]" -type "float3" 7.4505806e-09 -5.9604645e-08 0 ;
	setAttr ".tk[636]" -type "float3" -0.049935929 -1.1920929e-07 -0.15368691 ;
	setAttr ".tk[637]" -type "float3" -0.021381784 -1.7881393e-07 -0.13499945 ;
	setAttr ".tk[644]" -type "float3" -1.8626451e-09 -5.9604645e-08 -5.9604645e-08 ;
	setAttr ".tk[645]" -type "float3" 6.5213825e-09 -5.9604645e-08 -0.16159591 ;
	setAttr ".tk[646]" -type "float3" 0.021381784 -1.7881393e-07 -0.13499945 ;
	setAttr ".tk[653]" -type "float3" 4.4703484e-08 -5.9604645e-08 8.9406967e-08 ;
	setAttr ".tk[654]" -type "float3" 0.049935929 -1.1920929e-07 -0.15368691 ;
	setAttr ".tk[655]" -type "float3" 0.062052451 -1.7881393e-07 -0.12178466 ;
	setAttr ".tk[662]" -type "float3" -5.9604645e-08 -5.9604645e-08 -2.9802322e-08 ;
	setAttr ".tk[663]" -type "float3" 0.094983712 -1.7881393e-07 -0.13073398 ;
	setAttr ".tk[664]" -type "float3" 0.096648872 -1.7881393e-07 -0.096648827 ;
	setAttr ".tk[671]" -type "float3" -2.9802322e-08 -5.9604645e-08 1.4901161e-08 ;
	setAttr ".tk[672]" -type "float3" 0.130734 -1.1920929e-07 -0.094983757 ;
	setAttr ".tk[673]" -type "float3" 0.12178484 -1.7881393e-07 -0.062052436 ;
	setAttr ".tk[680]" -type "float3" 0 -5.9604645e-08 -1.4901161e-08 ;
	setAttr ".tk[681]" -type "float3" 0.15368703 -1.1920929e-07 -0.049935892 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "6ED87DFC-CF46-0735-C1DC-ED82FD422464";
	setAttr ".ics" -type "componentList" 40 "f[182]" "f[185]" "f[188]" "f[191]" "f[194]" "f[197]" "f[200]" "f[203]" "f[206]" "f[209]" "f[212]" "f[215]" "f[218]" "f[221]" "f[224]" "f[227]" "f[230]" "f[233]" "f[236]" "f[239]" "f[307:308]" "f[316:317]" "f[325:326]" "f[334:335]" "f[343:344]" "f[352:353]" "f[361:362]" "f[370:371]" "f[379:380]" "f[388:389]" "f[397:398]" "f[406:407]" "f[415:416]" "f[424:425]" "f[433:434]" "f[442:443]" "f[451:452]" "f[460:461]" "f[469:470]" "f[478:479]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9802322e-08 -1.5715609 -2.3841858e-07 ;
	setAttr ".rs" 1846925123;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.73937898874282837 -1.5715609788894653 -0.73937928676605225 ;
	setAttr ".cbx" -type "double3" 0.73937892913818359 -1.5715608596801758 0.73937880992889404 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak4";
	rename -uid "52E15CC1-D148-9CC3-0488-33AA8CDE3459";
	setAttr ".uopa" yes;
	setAttr -s 120 ".tk[682:801]" -type "float3"  0.16072375 -0.8215608 0.025456179
		 0.17198719 -0.8215608 0.012728099 0.12484564 -0.8215608 0.01977364 0.14944203 -0.8215608
		 2.3740778e-08 0.14499097 -0.8215608 0.073876634 0.1596363 -0.8215608 0.065252081
		 0.11262493 -0.8215608 0.057385251 0.14212781 -0.8215608 0.046180155 0.1150655 -0.8215608
		 0.11506556 0.13165911 -0.8215608 0.1113887 0.089379601 -0.8215608 0.089379646 0.12090114
		 -0.8215608 0.087839805 0.073876619 -0.8215608 0.14499098 0.090794265 -0.8215608 0.14662184
		 0.057385221 -0.8215608 0.11262494 0.087839775 -0.8215608 0.12090114 0.025456153 -0.8215608
		 0.16072378 0.041041844 -0.8215608 0.16750266 0.019773606 -0.8215608 0.12484568 0.046180103
		 -0.8215608 0.14212781 -0.025456145 -0.8215608 0.16072378 -0.012728073 -0.8215608
		 0.17198722 -0.019773606 -0.8215608 0.12484568 4.5523878e-09 -0.8215608 0.14944203
		 -0.073876619 -0.8215608 0.14499101 -0.065252051 -0.8215608 0.15963636 -0.057385221
		 -0.8215608 0.11262494 -0.046180096 -0.8215608 0.14212784 -0.11506553 -0.8215608 0.11506556
		 -0.11138868 -0.8215608 0.13165912 -0.089379616 -0.8215608 0.089379646 -0.08783979
		 -0.8215608 0.12090114 -0.14499097 -0.8215608 0.073876642 -0.14662184 -0.8215608 0.090794295
		 -0.11262478 -0.8215608 0.057385243 -0.12090114 -0.8215608 0.087839805 -0.16072378
		 -0.8215608 0.025456179 -0.16750266 -0.8215608 0.041041866 -0.12484564 -0.8215608
		 0.01977364 -0.14212781 -0.8215608 0.046180155 -0.16072378 -0.8215608 -0.025456103
		 -0.17198722 -0.8215608 -0.012728036 -0.12484564 -0.8215608 -0.019773591 -0.14944203
		 -0.8215608 3.2525126e-08 -0.14499098 -0.8215608 -0.073876582 -0.15963636 -0.8215608
		 -0.065252066 -0.11262478 -0.8215608 -0.057385191 -0.14212781 -0.8215608 -0.046180081
		 -0.11506554 -0.8215608 -0.1150655 -0.13165911 -0.8215608 -0.11138867 -0.089379616
		 -0.8215608 -0.089379616 -0.12090114 -0.8215608 -0.08783976 -0.073876627 -0.8215608
		 -0.14499098 -0.09079428 -0.8215608 -0.14662184 -0.057385243 -0.8215608 -0.11262493
		 -0.087839775 -0.8215608 -0.12090114 -0.025456145 -0.8215608 -0.16072378 -0.041041844
		 -0.8215608 -0.16750269 -0.019773606 -0.8215608 -0.12484568 -0.046180118 -0.8215608
		 -0.14212784 0.025456171 -0.8215608 -0.16072378 0.012728086 -0.8215608 -0.17198722
		 0.019773617 -0.8215608 -0.12484568 1.0940996e-08 -0.8215608 -0.14944203 0.073876642
		 -0.8215608 -0.14499098 0.065252088 -0.8215608 -0.15963633 0.057385258 -0.8215608
		 -0.11262494 0.046180155 -0.8215608 -0.14212784 0.11506559 -0.8215608 -0.11506556
		 0.11138871 -0.8215608 -0.13165912 0.089379698 -0.8215608 -0.089379646 0.087839805
		 -0.8215608 -0.12090114 0.14499104 -0.8215608 -0.073876619 0.14662202 -0.8215608 -0.09079428
		 0.11262502 -0.8215608 -0.057385243 0.12090117 -0.8215608 -0.087839805 0.16072378
		 -0.8215608 -0.02545611 0.16750272 -0.8215608 -0.041041836 0.12484565 -0.8215608 -0.019773599
		 0.1421279 -0.8215608 -0.046180096 0.17198722 -0.8215608 -0.012728042 0.18325049 -0.8215608
		 2.7569019e-08 0.16750266 -0.8215608 0.041041866 0.17428164 -0.8215608 0.056627553
		 0.14662182 -0.8215608 0.09079428 0.14825283 -0.8215608 0.107712 0.11138867 -0.8215608
		 0.13165911 0.10771194 -0.8215608 0.14825283 0.065252051 -0.8215608 0.15963633 0.056627508
		 -0.8215608 0.17428164 0.012728076 -0.8215608 0.17198722 1.5052568e-09 -0.8215608
		 0.18325052 -0.041041836 -0.8215608 0.16750266 -0.056627508 -0.8215608 0.17428164
		 -0.090794265 -0.8215608 0.1466219 -0.10771197 -0.8215608 0.14825287 -0.13165911 -0.8215608
		 0.1113887 -0.14825283 -0.8215608 0.107712 -0.15963633 -0.8215608 0.065252081 -0.17428164
		 -0.8215608 0.056627538 -0.17198722 -0.8215608 0.012728104 -0.18325049 -0.8215608
		 3.9773191e-08 -0.16750266 -0.8215608 -0.041041821 -0.17428164 -0.8215608 -0.056627516
		 -0.14662184 -0.8215608 -0.090794265 -0.14825284 -0.8215608 -0.10771197 -0.11138868
		 -0.8215608 -0.13165911 -0.10771199 -0.8215608 -0.14825283 -0.065252066 -0.8215608
		 -0.15963633 -0.056627516 -0.8215608 -0.17428164 -0.012728059 -0.8215608 -0.17198722
		 9.820198e-09 -0.8215608 -0.18325052 0.041041858 -0.8215608 -0.16750269 0.056627538
		 -0.8215608 -0.17428164 0.090794347 -0.8215608 -0.14662188 0.10771211 -0.8215608 -0.14825284
		 0.13165915 -0.8215608 -0.1113887 0.1482529 -0.8215608 -0.10771199 0.15963642 -0.8215608
		 -0.065252058 0.1742817 -0.8215608 -0.056627508;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "1D9D1B32-884C-01AF-A4AB-14A52C2DB4D4";
	setAttr ".ics" -type "componentList" 8 "f[24:26]" "f[31:33]" "f[59:61]" "f[66:68]" "f[94:96]" "f[101:103]" "f[129:131]" "f[136:138]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.1920929e-07 -0.375 -1.7881393e-07 ;
	setAttr ".rs" 446935260;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.0000002384185791 -0.75 -1.0000004768371582 ;
	setAttr ".cbx" -type "double3" 1 0 1.0000001192092896 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak5";
	rename -uid "675EB648-3A44-00E4-DD9C-24825ED2465F";
	setAttr ".uopa" yes;
	setAttr -s 311 ".tk";
	setAttr ".tk[165]" -type "float3" 0 0.142123 0 ;
	setAttr ".tk[166]" -type "float3" 0 0.32912681 0 ;
	setAttr ".tk[167]" -type "float3" 0 0.66864926 0 ;
	setAttr ".tk[172]" -type "float3" 0 0.142123 0 ;
	setAttr ".tk[173]" -type "float3" 0 0.32912681 0 ;
	setAttr ".tk[174]" -type "float3" 0 0.66864926 0 ;
	setAttr ".tk[179]" -type "float3" 0 0.142123 0 ;
	setAttr ".tk[180]" -type "float3" 0 0.32912681 0 ;
	setAttr ".tk[181]" -type "float3" 0 0.66864926 0 ;
	setAttr ".tk[186]" -type "float3" 0 0.142123 0 ;
	setAttr ".tk[187]" -type "float3" 0 0.32912681 0 ;
	setAttr ".tk[188]" -type "float3" 0 0.66864926 0 ;
	setAttr ".tk[193]" -type "float3" 0 0.142123 0 ;
	setAttr ".tk[194]" -type "float3" 0 0.32912681 0 ;
	setAttr ".tk[195]" -type "float3" 0 0.66864926 0 ;
	setAttr ".tk[200]" -type "float3" 0 0.142123 0 ;
	setAttr ".tk[201]" -type "float3" 0 0.32912681 0 ;
	setAttr ".tk[202]" -type "float3" 0 0.66864926 0 ;
	setAttr ".tk[207]" -type "float3" 0 0.142123 0 ;
	setAttr ".tk[208]" -type "float3" 0 0.32912681 0 ;
	setAttr ".tk[209]" -type "float3" 0 0.66864926 0 ;
	setAttr ".tk[214]" -type "float3" 0 0.142123 0 ;
	setAttr ".tk[215]" -type "float3" 0 0.32912681 0 ;
	setAttr ".tk[216]" -type "float3" 0 0.66864926 0 ;
	setAttr ".tk[221]" -type "float3" 0 0.142123 0 ;
	setAttr ".tk[222]" -type "float3" 0 0.32912681 0 ;
	setAttr ".tk[223]" -type "float3" 0 0.66864926 0 ;
	setAttr ".tk[228]" -type "float3" 0 0.142123 0 ;
	setAttr ".tk[229]" -type "float3" 0 0.32912681 0 ;
	setAttr ".tk[230]" -type "float3" 0 0.66864926 0 ;
	setAttr ".tk[235]" -type "float3" 0 0.142123 0 ;
	setAttr ".tk[236]" -type "float3" 0 0.32912681 0 ;
	setAttr ".tk[237]" -type "float3" 0 0.66864926 0 ;
	setAttr ".tk[242]" -type "float3" 0 0.142123 0 ;
	setAttr ".tk[243]" -type "float3" 0 0.32912681 0 ;
	setAttr ".tk[244]" -type "float3" 0 0.66864926 0 ;
	setAttr ".tk[249]" -type "float3" 0 0.142123 0 ;
	setAttr ".tk[250]" -type "float3" 0 0.32912681 0 ;
	setAttr ".tk[251]" -type "float3" 0 0.66864926 0 ;
	setAttr ".tk[256]" -type "float3" 0 0.142123 0 ;
	setAttr ".tk[257]" -type "float3" 0 0.32912681 0 ;
	setAttr ".tk[258]" -type "float3" 0 0.66864926 0 ;
	setAttr ".tk[263]" -type "float3" 0 0.142123 0 ;
	setAttr ".tk[264]" -type "float3" 0 0.32912681 0 ;
	setAttr ".tk[265]" -type "float3" 0 0.66864926 0 ;
	setAttr ".tk[266]" -type "float3" 3.3527613e-08 0 -3.7252903e-09 ;
	setAttr ".tk[267]" -type "float3" 3.3527613e-08 0 -3.7252903e-09 ;
	setAttr ".tk[270]" -type "float3" 0 0.142123 0 ;
	setAttr ".tk[271]" -type "float3" 0 0.32912681 0 ;
	setAttr ".tk[272]" -type "float3" 0 0.66864926 0 ;
	setAttr ".tk[273]" -type "float3" 3.3527613e-08 0 -3.7252903e-09 ;
	setAttr ".tk[274]" -type "float3" 3.3527613e-08 0 -3.7252903e-09 ;
	setAttr ".tk[277]" -type "float3" 0 0.142123 0 ;
	setAttr ".tk[278]" -type "float3" 0 0.32912681 0 ;
	setAttr ".tk[279]" -type "float3" 0 0.66864926 0 ;
	setAttr ".tk[284]" -type "float3" 0 0.142123 0 ;
	setAttr ".tk[285]" -type "float3" 0 0.32912681 0 ;
	setAttr ".tk[286]" -type "float3" 0 0.66864926 0 ;
	setAttr ".tk[291]" -type "float3" 0 0.142123 0 ;
	setAttr ".tk[292]" -type "float3" 0 0.32912681 0 ;
	setAttr ".tk[293]" -type "float3" 0 0.66864926 0 ;
	setAttr ".tk[298]" -type "float3" 0 0.142123 0 ;
	setAttr ".tk[299]" -type "float3" 0 0.32912681 0 ;
	setAttr ".tk[300]" -type "float3" 0 0.66864926 0 ;
	setAttr ".tk[317]" -type "float3" 3.3527613e-08 0 -3.7252903e-09 ;
	setAttr ".tk[385]" -type "float3" 3.3527613e-08 0 -3.7252903e-09 ;
	setAttr ".tk[388]" -type "float3" 3.3527613e-08 0 -3.7252903e-09 ;
	setAttr ".tk[484]" -type "float3" 3.3527613e-08 0 -3.7252903e-09 ;
	setAttr ".tk[640]" -type "float3" 3.3527613e-08 0 -3.7252903e-09 ;
	setAttr ".tk[643]" -type "float3" 3.3527613e-08 0 -3.7252903e-09 ;
	setAttr ".tk[648]" -type "float3" 3.3527613e-08 0 -3.7252903e-09 ;
	setAttr ".tk[682]" -type "float3" -0.11898623 0.36379859 0.28550881 ;
	setAttr ".tk[683]" -type "float3" -0.10051683 0.36379859 0.31201467 ;
	setAttr ".tk[684]" -type "float3" -0.092425235 0.36379859 0.22177507 ;
	setAttr ".tk[685]" -type "float3" -0.066909775 0.36379859 0.27606544 ;
	setAttr ".tk[686]" -type "float3" -0.20138961 0.36379859 0.23476613 ;
	setAttr ".tk[687]" -type "float3" -0.19201484 0.36379859 0.26568216 ;
	setAttr ".tk[688]" -type "float3" -0.15643395 0.36379859 0.18235973 ;
	setAttr ".tk[689]" -type "float3" -0.14894389 0.36379859 0.24187741 ;
	setAttr ".tk[690]" -type "float3" -0.26407993 0.36379859 0.16104279 ;
	setAttr ".tk[691]" -type "float3" -0.26471728 0.36379859 0.19334276 ;
	setAttr ".tk[692]" -type "float3" -0.20512967 0.36379859 0.12509356 ;
	setAttr ".tk[693]" -type "float3" -0.21639825 0.36379859 0.18401305 ;
	setAttr ".tk[694]" -type "float3" -0.30091971 0.36379859 0.07155586 ;
	setAttr ".tk[695]" -type "float3" -0.31150705 0.36379859 0.1020778 ;
	setAttr ".tk[696]" -type "float3" -0.23374602 0.36379859 0.055582494 ;
	setAttr ".tk[697]" -type "float3" -0.26267019 0.36379859 0.10813585 ;
	setAttr ".tk[698]" -type "float3" -0.30830389 0.36379859 -0.02493567 ;
	setAttr ".tk[699]" -type "float3" -0.32780465 0.36379859 0.00082082022 ;
	setAttr ".tk[700]" -type "float3" -0.23948163 0.36379859 -0.019369368 ;
	setAttr ".tk[701]" -type "float3" -0.28322986 0.36379859 0.021673845 ;
	setAttr ".tk[702]" -type "float3" -0.28550881 0.36379859 -0.1189862 ;
	setAttr ".tk[703]" -type "float3" -0.31201464 0.36379859 -0.10051677 ;
	setAttr ".tk[704]" -type "float3" -0.22177513 0.36379859 -0.092425138 ;
	setAttr ".tk[705]" -type "float3" -0.2760655 0.36379859 -0.066909797 ;
	setAttr ".tk[706]" -type "float3" -0.23476623 0.36379859 -0.20138982 ;
	setAttr ".tk[707]" -type "float3" -0.2656821 0.36379859 -0.19201474 ;
	setAttr ".tk[708]" -type "float3" -0.1823598 0.36379859 -0.15643395 ;
	setAttr ".tk[709]" -type "float3" -0.24187756 0.36379859 -0.14894392 ;
	setAttr ".tk[710]" -type "float3" -0.16104314 0.36379859 -0.2640799 ;
	setAttr ".tk[711]" -type "float3" -0.19334282 0.36379859 -0.2647171 ;
	setAttr ".tk[712]" -type "float3" -0.12509368 0.36379859 -0.20512955 ;
	setAttr ".tk[713]" -type "float3" -0.18401311 0.36379859 -0.21639836 ;
	setAttr ".tk[714]" -type "float3" -0.071555853 0.36379859 -0.30091974 ;
	setAttr ".tk[715]" -type "float3" -0.10207773 0.36379859 -0.31150705 ;
	setAttr ".tk[716]" -type "float3" -0.055582639 0.36379859 -0.23374604 ;
	setAttr ".tk[717]" -type "float3" -0.10813603 0.36379859 -0.26267019 ;
	setAttr ".tk[718]" -type "float3" 0.024935652 0.36379859 -0.30830383 ;
	setAttr ".tk[719]" -type "float3" -0.00082077738 0.36379859 -0.32780454 ;
	setAttr ".tk[720]" -type "float3" 0.019369319 0.36379859 -0.23948143 ;
	setAttr ".tk[721]" -type "float3" -0.021673886 0.36379859 -0.28322989 ;
	setAttr ".tk[722]" -type "float3" 0.11898626 0.36379859 -0.28550881 ;
	setAttr ".tk[723]" -type "float3" 0.10051659 0.36379859 -0.31201473 ;
	setAttr ".tk[724]" -type "float3" 0.092425138 0.36379859 -0.22177503 ;
	setAttr ".tk[725]" -type "float3" 0.066909626 0.36379859 -0.27606541 ;
	setAttr ".tk[726]" -type "float3" 0.20138961 0.36379859 -0.23476616 ;
	setAttr ".tk[727]" -type "float3" 0.19201465 0.36379859 -0.26568204 ;
	setAttr ".tk[728]" -type "float3" 0.15643375 0.36379859 -0.18235941 ;
	setAttr ".tk[729]" -type "float3" 0.14894378 0.36379859 -0.24187747 ;
	setAttr ".tk[730]" -type "float3" 0.26407969 0.36379859 -0.16104296 ;
	setAttr ".tk[731]" -type "float3" 0.26471707 0.36379859 -0.19334272 ;
	setAttr ".tk[732]" -type "float3" 0.20512959 0.36379859 -0.12509359 ;
	setAttr ".tk[733]" -type "float3" 0.21639824 0.36379859 -0.18401314 ;
	setAttr ".tk[734]" -type "float3" 0.30091974 0.36379859 -0.07155589 ;
	setAttr ".tk[735]" -type "float3" 0.31150702 0.36379859 -0.1020777 ;
	setAttr ".tk[736]" -type "float3" 0.23374598 0.36379859 -0.055582538 ;
	setAttr ".tk[737]" -type "float3" 0.26267013 0.36379859 -0.10813589 ;
	setAttr ".tk[738]" -type "float3" 0.30830386 0.36379859 0.024935644 ;
	setAttr ".tk[739]" -type "float3" 0.32780463 0.36379859 -0.00082081743 ;
	setAttr ".tk[740]" -type "float3" 0.23948157 0.36379859 0.019369313 ;
	setAttr ".tk[741]" -type "float3" 0.28322989 0.36379859 -0.021673813 ;
	setAttr ".tk[742]" -type "float3" 0.28550896 0.36379859 0.11898638 ;
	setAttr ".tk[743]" -type "float3" 0.31201467 0.36379859 0.10051681 ;
	setAttr ".tk[744]" -type "float3" 0.22177514 0.36379859 0.092425227 ;
	setAttr ".tk[745]" -type "float3" 0.27606553 0.36379859 0.066909805 ;
	setAttr ".tk[746]" -type "float3" 0.23476611 0.36379859 0.2013898 ;
	setAttr ".tk[747]" -type "float3" 0.26568204 0.36379859 0.19201477 ;
	setAttr ".tk[748]" -type "float3" 0.18235987 0.36379859 0.156434 ;
	setAttr ".tk[749]" -type "float3" 0.24187759 0.36379859 0.14894399 ;
	setAttr ".tk[750]" -type "float3" 0.16104299 0.36379859 0.26407987 ;
	setAttr ".tk[751]" -type "float3" 0.19334273 0.36379859 0.26471722 ;
	setAttr ".tk[752]" -type "float3" 0.12509367 0.36379859 0.20512992 ;
	setAttr ".tk[753]" -type "float3" 0.1840131 0.36379859 0.21639839 ;
	setAttr ".tk[754]" -type "float3" 0.07155586 0.36379859 0.30092001 ;
	setAttr ".tk[755]" -type "float3" 0.10207769 0.36379859 0.31150714 ;
	setAttr ".tk[756]" -type "float3" 0.055582471 0.36379859 0.23374616 ;
	setAttr ".tk[757]" -type "float3" 0.10813599 0.36379859 0.26267037 ;
	setAttr ".tk[758]" -type "float3" -0.024935734 0.36379859 0.30830386 ;
	setAttr ".tk[759]" -type "float3" 0.00082076155 0.36379859 0.32780468 ;
	setAttr ".tk[760]" -type "float3" -0.019369433 0.36379859 0.23948146 ;
	setAttr ".tk[761]" -type "float3" 0.021673761 0.36379859 0.28323016 ;
	setAttr ".tk[762]" -type "float3" -0.053491406 0.36379859 0.3234123 ;
	setAttr ".tk[763]" -type "float3" -0.082046837 0.36379859 0.33851999 ;
	setAttr ".tk[764]" -type "float3" -0.15081295 0.36379859 0.29105335 ;
	setAttr ".tk[765]" -type "float3" -0.18263987 0.36379859 0.29659772 ;
	setAttr ".tk[766]" -type "float3" -0.23337223 0.36379859 0.23020415 ;
	setAttr ".tk[767]" -type "float3" -0.26535457 0.36379859 0.22564238 ;
	setAttr ".tk[768]" -type "float3" -0.29308712 0.36379859 0.14682132 ;
	setAttr ".tk[769]" -type "float3" -0.32209441 0.36379859 0.13259967 ;
	setAttr ".tk[770]" -type "float3" -0.3241128 0.36379859 0.049066614 ;
	setAttr ".tk[771]" -type "float3" -0.34730554 0.36379859 0.026577149 ;
	setAttr ".tk[772]" -type "float3" -0.32341221 0.36379859 -0.053491298 ;
	setAttr ".tk[773]" -type "float3" -0.33852008 0.36379859 -0.082046866 ;
	setAttr ".tk[774]" -type "float3" -0.2910533 0.36379859 -0.15081298 ;
	setAttr ".tk[775]" -type "float3" -0.2965979 0.36379859 -0.18263954 ;
	setAttr ".tk[776]" -type "float3" -0.2302044 0.36379859 -0.23337227 ;
	setAttr ".tk[777]" -type "float3" -0.2256428 0.36379859 -0.2653546 ;
	setAttr ".tk[778]" -type "float3" -0.14682147 0.36379859 -0.2930871 ;
	setAttr ".tk[779]" -type "float3" -0.13259976 0.36379859 -0.32209444 ;
	setAttr ".tk[780]" -type "float3" -0.049066622 0.36379859 -0.32411274 ;
	setAttr ".tk[781]" -type "float3" -0.026577367 0.36379859 -0.34730577 ;
	setAttr ".tk[782]" -type "float3" 0.053491201 0.36379859 -0.32341218 ;
	setAttr ".tk[783]" -type "float3" 0.082046874 0.36379859 -0.33852014 ;
	setAttr ".tk[784]" -type "float3" 0.15081292 0.36379859 -0.29105332 ;
	setAttr ".tk[785]" -type "float3" 0.18263964 0.36379859 -0.2965979 ;
	setAttr ".tk[786]" -type "float3" 0.23337218 0.36379859 -0.23020425 ;
	setAttr ".tk[787]" -type "float3" 0.26535463 0.36379859 -0.22564273 ;
	setAttr ".tk[788]" -type "float3" 0.29308698 0.36379859 -0.14682139 ;
	setAttr ".tk[789]" -type "float3" 0.32209453 0.36379859 -0.13259968 ;
	setAttr ".tk[790]" -type "float3" 0.32411289 0.36379859 -0.049066659 ;
	setAttr ".tk[791]" -type "float3" 0.34730566 0.36379859 -0.026577162 ;
	setAttr ".tk[792]" -type "float3" 0.32341227 0.36379859 0.053491291 ;
	setAttr ".tk[793]" -type "float3" 0.33851996 0.36379859 0.082046777 ;
	setAttr ".tk[794]" -type "float3" 0.29105347 0.36379859 0.15081295 ;
	setAttr ".tk[795]" -type "float3" 0.2965979 0.36379859 0.18263975 ;
	setAttr ".tk[796]" -type "float3" 0.23020437 0.36379859 0.23337241 ;
	setAttr ".tk[797]" -type "float3" 0.22564258 0.36379859 0.26535472 ;
	setAttr ".tk[798]" -type "float3" 0.14682142 0.36379859 0.2930873 ;
	setAttr ".tk[799]" -type "float3" 0.13259973 0.36379859 0.32209462 ;
	setAttr ".tk[800]" -type "float3" 0.049066558 0.36379859 0.32411304 ;
	setAttr ".tk[801]" -type "float3" 0.026577061 0.36379859 0.3473058 ;
	setAttr ".tk[802]" -type "float3" -0.36665064 -0.3196415 0.36940077 ;
	setAttr ".tk[803]" -type "float3" -0.35469261 -0.3196415 0.42243001 ;
	setAttr ".tk[804]" -type "float3" -0.28480384 -0.3196415 0.28694004 ;
	setAttr ".tk[805]" -type "float3" -0.27950212 -0.3196415 0.38774002 ;
	setAttr ".tk[806]" -type "float3" -0.46285668 -0.3196415 0.2380197 ;
	setAttr ".tk[807]" -type "float3" -0.46787062 -0.3196415 0.29214868 ;
	setAttr ".tk[808]" -type "float3" -0.35953388 -0.3196415 0.18488699 ;
	setAttr ".tk[809]" -type "float3" -0.38564062 -0.3196415 0.28239176 ;
	setAttr ".tk[810]" -type "float3" -0.51375484 -0.3196415 0.083339721 ;
	setAttr ".tk[811]" -type "float3" -0.53525037 -0.3196415 0.13327 ;
	setAttr ".tk[812]" -type "float3" -0.39907023 -0.3196415 0.06473583 ;
	setAttr ".tk[813]" -type "float3" -0.45402974 -0.3196415 0.14940122 ;
	setAttr ".tk[814]" -type "float3" -0.51436341 -0.3196415 -0.079498105 ;
	setAttr ".tk[815]" -type "float3" -0.55023599 -0.3196415 -0.038654003 ;
	setAttr ".tk[816]" -type "float3" -0.3995429 -0.3196415 -0.061751943 ;
	setAttr ".tk[817]" -type "float3" -0.47797561 -0.3196415 0.0017858794 ;
	setAttr ".tk[818]" -type "float3" -0.46462238 -0.3196415 -0.23455434 ;
	setAttr ".tk[819]" -type "float3" -0.51136088 -0.3196415 -0.20679449 ;
	setAttr ".tk[820]" -type "float3" -0.36090565 -0.3196415 -0.18219513 ;
	setAttr ".tk[821]" -type "float3" -0.4551335 -0.3196415 -0.14600401 ;
	setAttr ".tk[822]" -type "float3" -0.36940086 -0.3196415 -0.3666507 ;
	setAttr ".tk[823]" -type "float3" -0.42243019 -0.3196415 -0.35469255 ;
	setAttr ".tk[824]" -type "float3" -0.28694028 -0.3196415 -0.28480378 ;
	setAttr ".tk[825]" -type "float3" -0.38774011 -0.3196415 -0.27950203 ;
	setAttr ".tk[826]" -type "float3" -0.23801987 -0.3196415 -0.46285671 ;
	setAttr ".tk[827]" -type "float3" -0.29214889 -0.3196415 -0.46787062 ;
	setAttr ".tk[828]" -type "float3" -0.18488716 -0.3196415 -0.35953388 ;
	setAttr ".tk[829]" -type "float3" -0.282392 -0.3196415 -0.38564059 ;
	setAttr ".tk[830]" -type "float3" -0.083339989 -0.3196415 -0.51375484 ;
	setAttr ".tk[831]" -type "float3" -0.13327017 -0.3196415 -0.53525037 ;
	setAttr ".tk[832]" -type "float3" -0.064736046 -0.3196415 -0.39907023 ;
	setAttr ".tk[833]" -type "float3" -0.14940134 -0.3196415 -0.45402971 ;
	setAttr ".tk[834]" -type "float3" 0.079497948 -0.3196415 -0.51436347 ;
	setAttr ".tk[835]" -type "float3" 0.038653851 -0.3196415 -0.55023599 ;
	setAttr ".tk[836]" -type "float3" 0.061751693 -0.3196415 -0.39954275 ;
	setAttr ".tk[837]" -type "float3" -0.0017860462 -0.3196415 -0.47797561 ;
	setAttr ".tk[838]" -type "float3" 0.23455422 -0.3196415 -0.46462241 ;
	setAttr ".tk[839]" -type "float3" 0.20679435 -0.3196415 -0.51136088 ;
	setAttr ".tk[840]" -type "float3" 0.18219502 -0.3196415 -0.36090562 ;
	setAttr ".tk[841]" -type "float3" 0.14600384 -0.3196415 -0.45513362 ;
	setAttr ".tk[842]" -type "float3" 0.36665055 -0.3196415 -0.36940104 ;
	setAttr ".tk[843]" -type "float3" 0.3546924 -0.3196415 -0.42243025 ;
	setAttr ".tk[844]" -type "float3" 0.28480363 -0.3196415 -0.28694022 ;
	setAttr ".tk[845]" -type "float3" 0.27950194 -0.3196415 -0.38774025 ;
	setAttr ".tk[846]" -type "float3" 0.46285644 -0.3196415 -0.23801991 ;
	setAttr ".tk[847]" -type "float3" 0.46787053 -0.3196415 -0.29214895 ;
	setAttr ".tk[848]" -type "float3" 0.35953364 -0.3196415 -0.18488705 ;
	setAttr ".tk[849]" -type "float3" 0.38564038 -0.3196415 -0.28239194 ;
	setAttr ".tk[850]" -type "float3" 0.51375479 -0.3196415 -0.083339997 ;
	setAttr ".tk[851]" -type "float3" 0.53525037 -0.3196415 -0.13327011 ;
	setAttr ".tk[852]" -type "float3" 0.39907011 -0.3196415 -0.064735949 ;
	setAttr ".tk[853]" -type "float3" 0.45402962 -0.3196415 -0.14940137 ;
	setAttr ".tk[854]" -type "float3" 0.51436341 -0.3196415 0.079498045 ;
	setAttr ".tk[855]" -type "float3" 0.55023599 -0.3196415 0.038653973 ;
	setAttr ".tk[856]" -type "float3" 0.39954287 -0.3196415 0.061751876 ;
	setAttr ".tk[857]" -type "float3" 0.47797549 -0.3196415 -0.0017859375 ;
	setAttr ".tk[858]" -type "float3" 0.46462238 -0.3196415 0.23455429 ;
	setAttr ".tk[859]" -type "float3" 0.51136094 -0.3196415 0.20679452 ;
	setAttr ".tk[860]" -type "float3" 0.36090559 -0.3196415 0.1821951 ;
	setAttr ".tk[861]" -type "float3" 0.45513362 -0.3196415 0.14600399 ;
	setAttr ".tk[862]" -type "float3" 0.36940083 -0.3196415 0.3666507 ;
	setAttr ".tk[863]" -type "float3" 0.4224301 -0.3196415 0.35469258 ;
	setAttr ".tk[864]" -type "float3" 0.28694022 -0.3196415 0.28480381 ;
	setAttr ".tk[865]" -type "float3" 0.38774005 -0.3196415 0.27950203 ;
	setAttr ".tk[866]" -type "float3" 0.2380197 -0.3196415 0.46285671 ;
	setAttr ".tk[867]" -type "float3" 0.29214883 -0.3196415 0.46787065 ;
	setAttr ".tk[868]" -type "float3" 0.18488708 -0.3196415 0.35953394 ;
	setAttr ".tk[869]" -type "float3" 0.28239188 -0.3196415 0.38564068 ;
	setAttr ".tk[870]" -type "float3" 0.083339825 -0.3196415 0.51375502 ;
	setAttr ".tk[871]" -type "float3" 0.13327004 -0.3196415 0.53525043 ;
	setAttr ".tk[872]" -type "float3" 0.064735852 -0.3196415 0.39907041 ;
	setAttr ".tk[873]" -type "float3" 0.14940123 -0.3196415 0.4540298 ;
	setAttr ".tk[874]" -type "float3" -0.079498217 -0.3196415 0.51436353 ;
	setAttr ".tk[875]" -type "float3" -0.038654204 -0.3196415 0.55023617 ;
	setAttr ".tk[876]" -type "float3" -0.061752092 -0.3196415 0.39954305 ;
	setAttr ".tk[877]" -type "float3" 0.0017858711 -0.3196415 0.47797579 ;
	setAttr ".tk[878]" -type "float3" -0.2345544 -0.3196415 0.46462232 ;
	setAttr ".tk[879]" -type "float3" -0.20679462 -0.3196415 0.51136094 ;
	setAttr ".tk[880]" -type "float3" -0.18219513 -0.3196415 0.36090559 ;
	setAttr ".tk[881]" -type "float3" -0.1460042 -0.3196415 0.45513389 ;
	setAttr ".tk[882]" -type "float3" -0.28864449 -0.3196415 0.47004086 ;
	setAttr ".tk[883]" -type "float3" -0.34273437 -0.3196415 0.47545919 ;
	setAttr ".tk[884]" -type "float3" -0.41976762 -0.3196415 0.35783932 ;
	setAttr ".tk[885]" -type "float3" -0.47288477 -0.3196415 0.34627792 ;
	setAttr ".tk[886]" -type "float3" -0.50980121 -0.3196415 0.21060994 ;
	setAttr ".tk[887]" -type "float3" -0.55674601 -0.3196415 0.18320037 ;
	setAttr ".tk[888]" -type "float3" -0.54993182 -0.3196415 0.042764779 ;
	setAttr ".tk[889]" -type "float3" -0.58610892 -0.3196415 0.002189982 ;
	setAttr ".tk[890]" -type "float3" -0.53623152 -0.3196415 -0.1292664 ;
	setAttr ".tk[891]" -type "float3" -0.55809939 -0.3196415 -0.17903474 ;
	setAttr ".tk[892]" -type "float3" -0.47004095 -0.3196415 -0.28864443 ;
	setAttr ".tk[893]" -type "float3" -0.47545922 -0.3196415 -0.34273431 ;
	setAttr ".tk[894]" -type "float3" -0.35783941 -0.3196415 -0.4197675 ;
	setAttr ".tk[895]" -type "float3" -0.34627807 -0.3196415 -0.47288477 ;
	setAttr ".tk[896]" -type "float3" -0.21061017 -0.3196415 -0.50980133 ;
	setAttr ".tk[897]" -type "float3" -0.18320058 -0.3196415 -0.55674601 ;
	setAttr ".tk[898]" -type "float3" -0.042764924 -0.3196415 -0.54993182 ;
	setAttr ".tk[899]" -type "float3" -0.0021901675 -0.3196415 -0.58610898 ;
	setAttr ".tk[900]" -type "float3" 0.12926632 -0.3196415 -0.53623152 ;
	setAttr ".tk[901]" -type "float3" 0.17903458 -0.3196415 -0.55809939 ;
	setAttr ".tk[902]" -type "float3" 0.28864428 -0.3196415 -0.47004098 ;
	setAttr ".tk[903]" -type "float3" 0.34273416 -0.3196415 -0.47545928 ;
	setAttr ".tk[904]" -type "float3" 0.41976744 -0.3196415 -0.35783941 ;
	setAttr ".tk[905]" -type "float3" 0.4728846 -0.3196415 -0.34627813 ;
	setAttr ".tk[906]" -type "float3" 0.50980109 -0.3196415 -0.21061009 ;
	setAttr ".tk[907]" -type "float3" 0.55674595 -0.3196415 -0.18320054 ;
	setAttr ".tk[908]" -type "float3" 0.54993176 -0.3196415 -0.04276488 ;
	setAttr ".tk[909]" -type "float3" 0.58610892 -0.3196415 -0.0021900879 ;
	setAttr ".tk[910]" -type "float3" 0.53623158 -0.3196415 0.1292664 ;
	setAttr ".tk[911]" -type "float3" 0.55809939 -0.3196415 0.17903467 ;
	setAttr ".tk[912]" -type "float3" 0.47004083 -0.3196415 0.2886444 ;
	setAttr ".tk[913]" -type "float3" 0.47545922 -0.3196415 0.34273434 ;
	setAttr ".tk[914]" -type "float3" 0.35783944 -0.3196415 0.41976768 ;
	setAttr ".tk[915]" -type "float3" 0.34627801 -0.3196415 0.47288483 ;
	setAttr ".tk[916]" -type "float3" 0.21061005 -0.3196415 0.50980139 ;
	setAttr ".tk[917]" -type "float3" 0.18320031 -0.3196415 0.55674613 ;
	setAttr ".tk[918]" -type "float3" 0.042764783 -0.3196415 0.549932 ;
	setAttr ".tk[919]" -type "float3" 0.0021899561 -0.3196415 0.58610904 ;
	setAttr ".tk[920]" -type "float3" -0.1292665 -0.3196415 0.5362317 ;
	setAttr ".tk[921]" -type "float3" -0.17903484 -0.3196415 0.55809951 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "B4E96B60-2F4C-C237-CCE3-698C0771D2EE";
	setAttr ".ics" -type "componentList" 20 "f[187]" "f[189]" "f[202]" "f[204]" "f[217]" "f[219]" "f[232]" "f[234]" "f[249:250]" "f[264:265]" "f[279:280]" "f[294:295]" "f[319]" "f[321]" "f[364]" "f[366]" "f[409]" "f[411]" "f[454]" "f[456]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.4901161e-07 -0.75 -1.7881393e-07 ;
	setAttr ".rs" 944650916;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.78136324882507324 -0.75000005960464478 -0.78136348724365234 ;
	setAttr ".cbx" -type "double3" 0.78136354684829712 -0.74999994039535522 0.78136312961578369 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak6";
	rename -uid "F30E617A-C145-45C4-335F-F5A6298E745C";
	setAttr ".uopa" yes;
	setAttr -s 104 ".tk[914:1017]" -type "float3"  0.11981285 -0.036351454 -0.038929448
		 0.12597847 -0.036351454 2.2526734e-08 0.11981285 -0.10905432 -0.038929448 0.12597847
		 -0.10905432 2.2526734e-08 0.11981285 0.036351446 -0.038929448 0.12597847 0.036351446
		 2.2526734e-08 0.12520742 0.10905436 -0.0048661903 0.12597847 0.10905436 2.2526734e-08
		 0.12443739 0.10905436 -0.0097323433 0.12366593 0.10905436 -0.014598593 0.12289548
		 0.10905436 -0.019464821 0.12212455 0.10905436 -0.024330884 0.1213541 0.10905436 -0.029197007
		 0.12058365 0.10905436 -0.03406325 0.11981285 0.10905436 -0.038929448 0.11981249 -0.036351454
		 0.038929328 0.11981243 -0.10905432 0.038929328 0.11981243 0.036351446 0.038929328
		 0.12058347 0.10905436 0.034063324 0.11981243 0.10905436 0.038929328 0.12135381 0.10905436
		 0.029197142 0.12212437 0.10905436 0.024330959 0.12289536 0.10905436 0.019464716 0.12366605
		 0.10905436 0.014598563 0.12443721 0.10905436 0.0097324103 0.12520742 0.10905436 0.004866207
		 0.038929373 -0.036351454 0.11981243 1.1263332e-08 -0.036351454 0.12597859 0.038929373
		 -0.10905432 0.11981243 1.1263332e-08 -0.10905432 0.12597859 0.038929373 0.036351446
		 0.11981243 1.1263332e-08 0.036351446 0.12597859 0.0048662145 0.10905436 0.12520748
		 1.1263332e-08 0.10905436 0.12597859 0.0097323582 0.10905436 0.12443721 0.014598571
		 0.10905436 0.12366629 0.019464649 0.10905436 0.12289554 0.024331018 0.10905436 0.12212473
		 0.029197142 0.10905436 0.12135428 0.03406328 0.10905436 0.12058365 0.038929373 0.10905436
		 0.11981243 -0.038929522 -0.036351454 0.11981231 -0.038929522 -0.10905432 0.11981231
		 -0.038929522 0.036351446 0.11981231 -0.034063309 0.10905436 0.12058365 -0.038929522
		 0.10905436 0.11981231 -0.029196993 0.10905436 0.12135428 -0.024330884 0.10905436
		 0.12212473 -0.019464761 0.10905436 0.12289554 -0.014598563 0.10905436 0.12366629
		 -0.0097323656 0.10905436 0.12443721 -0.004866166 0.10905436 0.12520748 -0.11981243
		 -0.036351454 0.038929433 -0.12597841 -0.036351454 2.2526734e-08 -0.11981243 -0.10905432
		 0.038929433 -0.12597841 -0.10905432 2.2526734e-08 -0.11981243 0.036351446 0.038929433
		 -0.12597841 0.036351446 2.2526734e-08 -0.12520748 0.10905436 0.0048661996 -0.12597841
		 0.10905436 2.2526734e-08 -0.12443721 0.10905436 0.0097323991 -0.12366605 0.10905436
		 0.014598548 -0.12289536 0.10905436 0.019464746 -0.12212437 0.10905436 0.024330914
		 -0.12135381 0.10905436 0.029197156 -0.12058347 0.10905436 0.034063295 -0.11981243
		 0.10905436 0.038929433 -0.11981243 -0.036351454 -0.038929552 -0.11981243 -0.10905432
		 -0.038929552 -0.11981243 0.036351446 -0.038929552 -0.12058347 0.10905436 -0.034063295
		 -0.11981243 0.10905436 -0.038929552 -0.12135381 0.10905436 -0.029197097 -0.12212437
		 0.10905436 -0.024330929 -0.12289536 0.10905436 -0.01946485 -0.12366605 0.10905436
		 -0.014598504 -0.12443721 0.10905436 -0.0097323321 -0.12520748 0.10905436 -0.0048661884
		 -0.038929403 -0.036351454 -0.11981243 1.5017797e-08 -0.036351454 -0.12597859 -0.038929403
		 -0.10905432 -0.11981243 1.5017797e-08 -0.10905432 -0.12597859 -0.038929403 0.036351446
		 -0.11981243 1.9241455e-08 0.036351446 -0.12597859 -0.0048661623 0.10905436 -0.12520748
		 1.9241455e-08 0.10905436 -0.12597859 -0.0097323656 0.10905436 -0.12443721 -0.014598548
		 0.10905436 -0.12366605 -0.019464776 0.10905436 -0.1228956 -0.024330944 0.10905436
		 -0.12212467 -0.029196978 0.10905436 -0.12135422 -0.034063414 0.10905436 -0.12058377
		 -0.038929403 0.10905436 -0.11981243 0.038929433 -0.036351454 -0.11981231 0.038929433
		 -0.10905432 -0.11981231 0.038929448 0.036351446 -0.11981231 0.034063324 0.10905436
		 -0.12058377 0.038929448 0.10905436 -0.11981231 0.029197127 0.10905436 -0.12135422
		 0.024330884 0.10905436 -0.12212467 0.019464791 0.10905436 -0.1228956 0.014598578
		 0.10905436 -0.12366605 0.0097324252 0.10905436 -0.12443721 0.0048661884 0.10905436
		 -0.12520748;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "06D08FDB-494A-3225-6BE0-D5BB8CABCB3A";
	setAttr ".ics" -type "componentList" 20 "f[187]" "f[189]" "f[202]" "f[204]" "f[217]" "f[219]" "f[232]" "f[234]" "f[249:250]" "f[264:265]" "f[279:280]" "f[294:295]" "f[319]" "f[321]" "f[364]" "f[366]" "f[409]" "f[411]" "f[454]" "f[456]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.4901161e-07 -0.90886915 -1.7881393e-07 ;
	setAttr ".rs" 852991031;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.78136324882507324 -0.90886920690536499 -0.78136348724365234 ;
	setAttr ".cbx" -type "double3" 0.78136354684829712 -0.90886908769607544 0.78136312961578369 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak7";
	rename -uid "C672E600-7D46-7F7B-E092-BA991E5989E9";
	setAttr ".uopa" yes;
	setAttr -s 56 ".tk[1018:1073]" -type "float3"  0 -0.15886916 0 0 -0.15886916
		 0 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0
		 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0 0
		 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916
		 0 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0
		 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0 0
		 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916
		 0 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0
		 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0 0
		 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916
		 0 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0 0 -0.15886916 0
		 0 -0.15886916 0;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "7DE42345-0649-F8AD-D09C-62BCAB3F7498";
	setAttr ".ics" -type "componentList" 20 "f[187]" "f[189]" "f[202]" "f[204]" "f[217]" "f[219]" "f[232]" "f[234]" "f[249:250]" "f[264:265]" "f[279:280]" "f[294:295]" "f[319]" "f[321]" "f[364]" "f[366]" "f[409]" "f[411]" "f[454]" "f[456]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.4901161e-07 -1.1298852 -1.7881393e-07 ;
	setAttr ".rs" 1808987624;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.97416216135025024 -1.129885196685791 -0.97416239976882935 ;
	setAttr ".cbx" -type "double3" 0.97416245937347412 -1.1298850774765015 0.97416204214096069 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak8";
	rename -uid "449D3469-EE4D-D3CE-D81D-4F9B2CD1DBE1";
	setAttr ".uopa" yes;
	setAttr -s 56 ".tk[1074:1129]" -type "float3"  0.18597525 -0.22101603 0.15868126
		 0.14849542 -0.22101603 0.11966942 0.17915171 -0.22101603 0.1655048 0.13749033 -0.22101603
		 0.1237765 0.15868117 -0.22101603 0.18597537 0.11966935 -0.22101603 0.14849545 0.15185763
		 -0.22101603 0.19279893 0.11683097 -0.22101603 0.16080417 0.17232817 -0.22101603 0.17232834
		 0.12924613 -0.22101603 0.12924621 0.16550465 -0.22101603 0.17915183 0.12377647 -0.22101603
		 0.13749044 0.19279878 -0.22101603 0.15185772 0.16080406 -0.22101603 0.11683107 -0.15868126
		 -0.22101603 0.18597537 -0.11966944 -0.22101603 0.14849553 -0.1655048 -0.22101603
		 0.17915186 -0.1237765 -0.22101603 0.13749044 -0.18597537 -0.22101603 0.15868126 -0.14849551
		 -0.22101603 0.11966942 -0.19279893 -0.22101603 0.15185772 -0.16080423 -0.22101603
		 0.11683107 -0.17232834 -0.22101603 0.17232834 -0.12924622 -0.22101603 0.12924621
		 -0.17915188 -0.22101603 0.1655048 -0.13749044 -0.22101603 0.1237765 -0.15185772 -0.22101603
		 0.19279893 -0.11683107 -0.22101603 0.16080421 -0.18597542 -0.22101603 -0.15868118
		 -0.14849553 -0.22101603 -0.11966942 -0.17915188 -0.22101603 -0.16550474 -0.13749045
		 -0.22101603 -0.1237765 -0.15868126 -0.22101603 -0.18597533 -0.11966945 -0.22101603
		 -0.14849545 -0.15185772 -0.22101603 -0.1927989 -0.11683109 -0.22101603 -0.16080417
		 -0.17232834 -0.22101603 -0.17232828 -0.12924622 -0.22101603 -0.12924613 -0.1655048
		 -0.22101603 -0.17915179 -0.1237765 -0.22101603 -0.13749036 -0.19279893 -0.22101603
		 -0.15185764 -0.16080423 -0.22101603 -0.11683106 0.15868126 -0.22101603 -0.18597537
		 0.11966942 -0.22101603 -0.14849553 0.1655048 -0.22101603 -0.17915186 0.1237765 -0.22101603
		 -0.13749044 0.18597542 -0.22101603 -0.15868126 0.14849551 -0.22101603 -0.11966942
		 0.19279893 -0.22101603 -0.15185772 0.16080423 -0.22101603 -0.11683106 0.17232834
		 -0.22101603 -0.17232834 0.12924621 -0.22101603 -0.12924621 0.17915188 -0.22101603
		 -0.1655048 0.13749044 -0.22101603 -0.1237765 0.15185772 -0.22101603 -0.19279893 0.11683106
		 -0.22101603 -0.16080423;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "52ED5D4E-7148-8400-F3B4-B4BAED690C84";
	setAttr ".ics" -type "componentList" 20 "f[187]" "f[189]" "f[202]" "f[204]" "f[217]" "f[219]" "f[232]" "f[234]" "f[249:250]" "f[264:265]" "f[279:280]" "f[294:295]" "f[319]" "f[321]" "f[364]" "f[366]" "f[409]" "f[411]" "f[454]" "f[456]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.1920929e-07 -1.4248939 -1.7881393e-07 ;
	setAttr ".rs" 1706374325;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.0749431848526001 -1.4248939752578735 -1.0749434232711792 ;
	setAttr ".cbx" -type "double3" 1.0749434232711792 -1.424893856048584 1.0749430656433105 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak9";
	rename -uid "E07867CD-0844-9276-D6AC-8883A5DABFC0";
	setAttr ".uopa" yes;
	setAttr -s 56 ".tk[1130:1185]" -type "float3"  0.097214088 -0.29500875 0.082946807
		 0.077622443 -0.29500875 0.062554315 0.093647256 -0.29500875 0.086513638 0.071869783
		 -0.29500875 0.064701192 0.082946748 -0.29500875 0.09721417 0.062554285 -0.29500875
		 0.077622458 0.079379901 -0.29500875 0.100781 0.061070606 -0.29500875 0.084056504
		 0.090080433 -0.29500875 0.09008047 0.067560308 -0.29500875 0.067560367 0.086513586
		 -0.29500875 0.093647316 0.064701177 -0.29500875 0.07186982 0.10078091 -0.29500875
		 0.079379983 0.084056489 -0.29500875 0.06107064 -0.082946815 -0.29500875 0.09721417
		 -0.062554337 -0.29500875 0.077622473 -0.086513638 -0.29500875 0.093647316 -0.064701207
		 -0.29500875 0.07186982 -0.097214162 -0.29500875 0.082946815 -0.077622466 -0.29500875
		 0.062554337 -0.100781 -0.29500875 0.079379983 -0.084056512 -0.29500875 0.06107064
		 -0.09008047 -0.29500875 0.09008047 -0.067560367 -0.29500875 0.067560367 -0.093647324
		 -0.29500875 0.086513638 -0.07186982 -0.29500875 0.064701192 -0.079379983 -0.29500875
		 0.100781 -0.061070651 -0.29500875 0.084056512 -0.097214177 -0.29500875 -0.08294677
		 -0.077622473 -0.29500875 -0.062554292 -0.093647324 -0.29500875 -0.086513594 -0.071869835
		 -0.29500875 -0.064701192 -0.082946815 -0.29500875 -0.097214133 -0.062554345 -0.29500875
		 -0.077622451 -0.079379991 -0.29500875 -0.10078097 -0.061070651 -0.29500875 -0.084056504
		 -0.0900805 -0.29500875 -0.090080447 -0.067560367 -0.29500875 -0.067560345 -0.086513638
		 -0.29500875 -0.093647301 -0.064701207 -0.29500875 -0.071869798 -0.100781 -0.29500875
		 -0.079379939 -0.084056549 -0.29500875 -0.061070632 0.082946807 -0.29500875 -0.09721417
		 0.062554315 -0.29500875 -0.077622473 0.086513638 -0.29500875 -0.093647316 0.064701192
		 -0.29500875 -0.07186982 0.097214177 -0.29500875 -0.082946807 0.077622466 -0.29500875
		 -0.062554315 0.100781 -0.29500875 -0.079379983 0.084056512 -0.29500875 -0.061070636
		 0.09008047 -0.29500875 -0.09008047 0.067560367 -0.29500875 -0.067560367 0.093647324
		 -0.29500875 -0.086513638 0.07186982 -0.29500875 -0.064701192 0.079379983 -0.29500875
		 -0.100781 0.061070636 -0.29500875 -0.084056549;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "A16BC9D4-7445-2E3B-3AD6-A6B56FBA95B6";
	setAttr ".ics" -type "componentList" 20 "f[187]" "f[189]" "f[202]" "f[204]" "f[217]" "f[219]" "f[232]" "f[234]" "f[249:250]" "f[264:265]" "f[279:280]" "f[294:295]" "f[319]" "f[321]" "f[364]" "f[366]" "f[409]" "f[411]" "f[454]" "f[456]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.1920929e-07 -1.778511 -1.7881393e-07 ;
	setAttr ".rs" 379958870;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.0749431848526001 -1.7785110473632812 -1.0749434232711792 ;
	setAttr ".cbx" -type "double3" 1.0749434232711792 -1.7785110473632812 1.0749430656433105 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak10";
	rename -uid "9164E0D3-5947-D7FA-3C8B-F08E6E36F9B2";
	setAttr ".uopa" yes;
	setAttr -s 56 ".tk[1186:1241]" -type "float3"  0 -0.35361713 0 0 -0.35361713
		 0 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0
		 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0 0
		 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713
		 0 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0
		 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0 0
		 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713
		 0 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0
		 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0 0
		 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713
		 0 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0 0 -0.35361713 0
		 0 -0.35361713 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "A6F4D2C7-E64D-F3D5-8E49-C8BCB1C7937F";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 861\n            -height 522\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 860\n            -height 521\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 861\n            -height 521\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1728\n            -height 1088\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 0\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n"
		+ "                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -hierarchyBelow 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n"
		+ "            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n"
		+ "\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1728\\n    -height 1088\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1728\\n    -height 1088\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D73A8E8B-844B-6996-2DFA-6481B73AE1EA";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "41E40C90-3145-16AD-1FB8-73AE4D0660B5";
	setAttr ".ics" -type "componentList" 2 "f[57]" "f[64]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -4.4703484e-08 0.61062491 0.97552836 ;
	setAttr ".rs" 2100019922;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.30901706218719482 0.10078710317611694 0.95105659961700439 ;
	setAttr ".cbx" -type "double3" 0.30901697278022766 1.1204626560211182 1.0000001192092896 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak11";
	rename -uid "18819E4D-5248-F193-4EFF-CA89FA3B4D34";
	setAttr ".uopa" yes;
	setAttr -s 62 ".tk";
	setAttr ".tk[191]" -type "float3" 0 -0.29133588 0 ;
	setAttr ".tk[192]" -type "float3" 0 0.29133588 0 ;
	setAttr ".tk[196]" -type "float3" 0 -0.29133588 0 ;
	setAttr ".tk[197]" -type "float3" 0 0.29133588 0 ;
	setAttr ".tk[203]" -type "float3" 0 -0.29133588 0 ;
	setAttr ".tk[204]" -type "float3" 0 0.29133588 0 ;
	setAttr ".tk[1242]" -type "float3" -0.099910736 -0.64423555 -0.085247681 ;
	setAttr ".tk[1243]" -type "float3" -0.079775624 -0.64423555 -0.06428951 ;
	setAttr ".tk[1244]" -type "float3" -0.096244968 -0.64423555 -0.088913441 ;
	setAttr ".tk[1245]" -type "float3" -0.073863402 -0.64423555 -0.066495985 ;
	setAttr ".tk[1246]" -type "float3" -0.085247636 -0.64423555 -0.099910833 ;
	setAttr ".tk[1247]" -type "float3" -0.064289503 -0.64423555 -0.079775691 ;
	setAttr ".tk[1248]" -type "float3" -0.081581905 -0.64423555 -0.10357659 ;
	setAttr ".tk[1249]" -type "float3" -0.062764674 -0.64423555 -0.08638823 ;
	setAttr ".tk[1250]" -type "float3" -0.092579193 -0.64423555 -0.092579275 ;
	setAttr ".tk[1251]" -type "float3" -0.069434404 -0.64423555 -0.069434434 ;
	setAttr ".tk[1252]" -type "float3" -0.088913426 -0.64423555 -0.096245036 ;
	setAttr ".tk[1253]" -type "float3" -0.066495955 -0.64423555 -0.073863454 ;
	setAttr ".tk[1254]" -type "float3" -0.10357654 -0.64423555 -0.081581883 ;
	setAttr ".tk[1255]" -type "float3" -0.086388148 -0.64423555 -0.062764689 ;
	setAttr ".tk[1256]" -type "float3" 0.085247695 -0.64423555 -0.099910833 ;
	setAttr ".tk[1257]" -type "float3" 0.064289533 -0.64423555 -0.079775676 ;
	setAttr ".tk[1258]" -type "float3" 0.088913441 -0.64423555 -0.096245021 ;
	setAttr ".tk[1259]" -type "float3" 0.066495985 -0.64423555 -0.073863469 ;
	setAttr ".tk[1260]" -type "float3" 0.099910833 -0.64423555 -0.08524771 ;
	setAttr ".tk[1261]" -type "float3" 0.079775676 -0.64423555 -0.064289533 ;
	setAttr ".tk[1262]" -type "float3" 0.10357657 -0.64423555 -0.081581883 ;
	setAttr ".tk[1263]" -type "float3" 0.086388215 -0.64423555 -0.062764689 ;
	setAttr ".tk[1264]" -type "float3" 0.092579231 -0.64423555 -0.092579275 ;
	setAttr ".tk[1265]" -type "float3" 0.069434434 -0.64423555 -0.069434434 ;
	setAttr ".tk[1266]" -type "float3" 0.09624505 -0.64423555 -0.088913471 ;
	setAttr ".tk[1267]" -type "float3" 0.073863454 -0.64423555 -0.066495985 ;
	setAttr ".tk[1268]" -type "float3" 0.081581883 -0.64423555 -0.10357659 ;
	setAttr ".tk[1269]" -type "float3" 0.062764727 -0.64423555 -0.086388215 ;
	setAttr ".tk[1270]" -type "float3" 0.09991084 -0.64423555 0.085247621 ;
	setAttr ".tk[1271]" -type "float3" 0.079775691 -0.64423555 0.064289518 ;
	setAttr ".tk[1272]" -type "float3" 0.096245065 -0.64423555 0.088913456 ;
	setAttr ".tk[1273]" -type "float3" 0.073863469 -0.64423555 0.066495985 ;
	setAttr ".tk[1274]" -type "float3" 0.085247725 -0.64423555 0.099910788 ;
	setAttr ".tk[1275]" -type "float3" 0.064289555 -0.64423555 0.079775676 ;
	setAttr ".tk[1276]" -type "float3" 0.081581883 -0.64423555 0.10357656 ;
	setAttr ".tk[1277]" -type "float3" 0.062764727 -0.64423555 0.08638823 ;
	setAttr ".tk[1278]" -type "float3" 0.09257929 -0.64423555 0.092579231 ;
	setAttr ".tk[1279]" -type "float3" 0.069434434 -0.64423555 0.069434419 ;
	setAttr ".tk[1280]" -type "float3" 0.08891353 -0.64423555 0.096245013 ;
	setAttr ".tk[1281]" -type "float3" 0.066495985 -0.64423555 0.073863417 ;
	setAttr ".tk[1282]" -type "float3" 0.10357659 -0.64423555 0.081581779 ;
	setAttr ".tk[1283]" -type "float3" 0.086388215 -0.64423555 0.062764674 ;
	setAttr ".tk[1284]" -type "float3" -0.085247681 -0.64423555 0.099910833 ;
	setAttr ".tk[1285]" -type "float3" -0.06428951 -0.64423555 0.079775676 ;
	setAttr ".tk[1286]" -type "float3" -0.088913471 -0.64423555 0.096245021 ;
	setAttr ".tk[1287]" -type "float3" -0.066495985 -0.64423555 0.073863469 ;
	setAttr ".tk[1288]" -type "float3" -0.09991084 -0.64423555 0.085247681 ;
	setAttr ".tk[1289]" -type "float3" -0.079775676 -0.64423555 0.06428951 ;
	setAttr ".tk[1290]" -type "float3" -0.10357659 -0.64423555 0.081581876 ;
	setAttr ".tk[1291]" -type "float3" -0.086388215 -0.64423555 0.062764682 ;
	setAttr ".tk[1292]" -type "float3" -0.09257929 -0.64423555 0.092579275 ;
	setAttr ".tk[1293]" -type "float3" -0.069434434 -0.64423555 0.069434434 ;
	setAttr ".tk[1294]" -type "float3" -0.096245065 -0.64423555 0.088913441 ;
	setAttr ".tk[1295]" -type "float3" -0.073863454 -0.64423555 0.066495985 ;
	setAttr ".tk[1296]" -type "float3" -0.081581883 -0.64423555 0.10357659 ;
	setAttr ".tk[1297]" -type "float3" -0.062764697 -0.64423555 0.086388215 ;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "67662F63-294F-7DCC-7DF5-A393F189A2E0";
	setAttr ".version" -type "string" "5.4.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "12A8215A-8E46-4C28-976E-6AAD6E483F59";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "2FE08238-964C-3A9A-C6AA-F5A5CC8A97BC";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "2AAD304C-C14B-A5B1-1412-D7B9774062A1";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "4B14C06B-A146-2518-5210-17B5120B2CA5";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1177.3809055960387 -1169.0475725938422 ;
	setAttr ".tgi[0].vh" -type "double2" 1498.8094642521869 151.19047018270669 ;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "FF5930EF-8B42-30DF-D50E-198059F9FFEA";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:1101]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".t" -type "double3" 0 -0.3051004303093221 0 ;
	setAttr ".s" -type "double3" 6.2138299942016602 6.2138299942016602 6.2138299942016602 ;
	setAttr ".pvt" -type "float3" 0 -0.30510044 0 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweak -n "polyTweak12";
	rename -uid "0E09DC61-CF41-60D9-5E3C-ED84982606C1";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[1298:1303]" -type "float3"  -0.095067084 0.1568484 0.077622265
		 -4.5842481e-09 0.1568484 0.062565006 -0.095067084 -0.15684843 0.077622265 -4.5842481e-09
		 -0.15684843 0.062565006 0.095067084 0.1568484 0.077622265 0.095067084 -0.15684843
		 0.077622265;
createNode shadingEngine -n "lambert1SG";
	rename -uid "5407B21A-124B-AFAC-98AE-EC8947F2DE2E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "B98E215A-EF42-539C-196B-868A4E8BEE97";
createNode brush -n "art3dPaintLastPaintBrush";
	rename -uid "DBA6AF71-2346-9AEA-CA21-2DA648251749";
	setAttr ".lcl[0]"  0 0.5 1;
	setAttr ".pcl[0]"  0 0.5 1;
	setAttr ".wsc[0]"  0 1 1;
	setAttr ".lws[0]"  0 1 1;
	setAttr ".pws[0]"  0 1 1;
	setAttr ".tls[0]"  0 1 1;
	setAttr -s 3 ".env";
	setAttr ".env[0].envp" 0.20000000298023224;
	setAttr ".env[0].envc" -type "float3" 0 0 0.15000001 ;
	setAttr ".env[0].envi" 2;
	setAttr ".env[1].envp" 0.5;
	setAttr ".env[1].envc" -type "float3" 0.47999999 0.55000001 0.69999999 ;
	setAttr ".env[1].envi" 2;
	setAttr ".env[2].envp" 1;
	setAttr ".env[2].envc" -type "float3" 0 0.1 0.44999999 ;
	setAttr ".env[2].envi" 2;
	setAttr ".rro[0]"  0 1 1;
createNode file -n "file1";
	rename -uid "1168020B-604F-5360-FDE4-0CAADDAB3CF5";
	setAttr ".ftn" -type "string" "/Users/joth/Documents/maya/projects/default//sourceimages/3dPaintTextures/EpicSpaceShipV2/pCylinderShape1_color.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "799C6C3C-C946-7CBD-72F8-0181A265E448";
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "6DDA99C5-0E4C-FCB7-7750-D7BB45426D12";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 3;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
select -ne :lambert1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyAutoProj1.out" "pCylinderShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCylinder1.out" "polySubdFace1.ip";
connectAttr "polyTweak1.out" "polySubdFace2.ip";
connectAttr "polySubdFace1.out" "polyTweak1.ip";
connectAttr "polySubdFace2.out" "polySubdFace3.ip";
connectAttr "polySubdFace3.out" "polySubdFace4.ip";
connectAttr "polySubdFace4.out" "polySubdFace5.ip";
connectAttr "polySubdFace5.out" "polyExtrudeVertex1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeVertex1.mp";
connectAttr "polyExtrudeVertex1.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "polySubdFace6.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polySubdFace6.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace3.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace4.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace5.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace6.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace7.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyExtrudeFace8.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyExtrudeFace9.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak11.ip";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polyTweak12.out" "polyAutoProj1.ip";
connectAttr "pCylinderShape1.wm" "polyAutoProj1.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak12.ip";
connectAttr ":lambert1.oc" "lambert1SG.ss";
connectAttr "pCylinderShape1.iog" "lambert1SG.dsm" -na;
connectAttr "lambert1SG.msg" "materialInfo1.sg";
connectAttr ":lambert1.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "lambert1SG.pa" ":renderPartition.st" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.oc" ":lambert1.c";
// End of EpicSpaceShipV2.ma
