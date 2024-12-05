//Maya ASCII 2023 scene
//Name: CardGiver.ma
//Last modified: Tue, Dec 03, 2024 07:44:53 PM
//Codeset: 949
requires maya "2023";
requires -nodeType "polyDisc" "modelingToolkit" "0.0.0.0";
requires -nodeType "VRaySettingsNode" -dataType "VRaySunParams" -dataType "vrayFloatVectorData"
		 -dataType "vrayFloatVectorData" -dataType "vrayIntData" "vrayformaya" "5";
requires "mtoa" "5.1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "vrayBuild" "5.20.02 31339 24d7612";
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202202161415-df43006fd3";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19045)";
fileInfo "UUID" "71009B8E-4DAB-E3EA-08E3-1EBEEEA93206";
createNode transform -s -n "persp";
	rename -uid "357EAC0D-42E2-261C-48A9-739F3F595C0A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.4728647309758962 16.460571513785755 31.598405361992867 ;
	setAttr ".r" -type "double3" -22.538352729596976 12.199999999969085 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F7AF9A3D-4431-FD51-7E9A-65B5C5E7DE4B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 33.678921298255737;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "C9BF9039-4D08-6B78-88BC-0F817D294350";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 13.21857254588436 1000.1 -0.13016746558237435 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "CE4F99B8-4626-AD02-D1AB-9DB71DB26932";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30.111944240443684;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "7FB8D767-4060-6969-9430-DDBB1043B48F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.62805664997559285 3.3315403274316013 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "869E1C76-47EC-0C78-3A45-71BE97856E09";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 15.195397536365432;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "6BBFB0E8-48F5-BE6A-DD0D-8CA8721C2824";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "7D91AFD8-4946-FD7D-A223-EA92403FD0C7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "cardgiver";
	rename -uid "C04D25C3-4795-5B5F-ACC0-BF87CC59E3BA";
createNode transform -n "head" -p "cardgiver";
	rename -uid "6173B7FE-4CC3-0C00-5D9E-53BCA6CFEAEC";
	setAttr ".t" -type "double3" -0.0073394660078445369 3.5552241522855725 0 ;
	setAttr ".s" -type "double3" 7.099993400867068 7.136049594462837 8.8745532423847742 ;
createNode mesh -n "headShape" -p "head";
	rename -uid "11133993-4071-254A-9BF6-11A3A197611C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 116 ".pt";
	setAttr ".pt[0]" -type "float3" 0.011111114 0 0 ;
	setAttr ".pt[1]" -type "float3" -0.011111114 0 0 ;
	setAttr ".pt[45]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[46]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[47]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[48]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[49]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[50]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[51]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[52]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[53]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[54]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[55]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[56]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[57]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[58]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[59]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[60]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[61]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[62]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[63]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[64]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[65]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[66]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[67]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[68]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[69]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[70]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[71]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[72]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[73]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[74]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[75]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[76]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[77]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[78]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[79]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[80]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[81]" -type "float3" 0.011111114 0 0.47538215 ;
	setAttr ".pt[82]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[83]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[84]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[85]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[86]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[87]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[88]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[89]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[90]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[91]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[92]" -type "float3" -0.011111114 0 0.47538215 ;
	setAttr ".pt[93]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[94]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[95]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[96]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[103]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[104]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[105]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[106]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[107]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[108]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[115]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[116]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[117]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[118]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[119]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[120]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[122]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[123]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[124]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[125]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[126]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[127]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[128]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[129]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[130]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[131]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[132]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[144]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[145]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[146]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[147]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[148]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[149]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[150]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[151]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[152]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[153]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[154]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[166]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[167]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[168]" -type "float3" -9.3132257e-10 -9.3132257e-10 0.47538215 ;
	setAttr ".pt[169]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[170]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[171]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[172]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[173]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[174]" -type "float3" -1.8626451e-09 -9.3132257e-10 0.47538215 ;
	setAttr ".pt[175]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[176]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[179]" -type "float3" -1.8626451e-09 -9.3132257e-10 0 ;
	setAttr ".pt[185]" -type "float3" -9.3132257e-10 -9.3132257e-10 0 ;
	setAttr ".pt[187]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[188]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[189]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[190]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[191]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[192]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[193]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[194]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[195]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[196]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[208]" -type "float3" 0 0 0.47538215 ;
	setAttr ".pt[218]" -type "float3" -1.8626451e-09 -9.3132257e-10 0 ;
	setAttr ".pt[221]" -type "float3" -9.3132257e-10 -9.3132257e-10 0 ;
	setAttr ".pt[244]" -type "float3" 0.011111114 0 0 ;
	setAttr ".pt[254]" -type "float3" -0.011111114 0 0 ;
createNode transform -n "nose" -p "cardgiver";
	rename -uid "BD5CCD3F-40B7-20D2-EF15-538263B6D287";
	setAttr ".t" -type "double3" 0 2.9921129198417278 4.5591716961390922 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 1.8815136837456288 1.8815136837456288 1.8815136837456288 ;
createNode mesh -n "noseShape" -p "nose";
	rename -uid "FBB67BB4-4DA7-61E7-9C61-E5A90302F46E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.85000002384185791 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[1]" -type "float3" 0 0 0.1085504 ;
	setAttr ".pt[2]" -type "float3" 0.099999987 0 0 ;
	setAttr ".pt[3]" -type "float3" 0 0 0.12302378 ;
	setAttr ".pt[4]" -type "float3" 0 0 0.12302378 ;
	setAttr ".pt[5]" -type "float3" -0.1 0 0 ;
	setAttr ".pt[8]" -type "float3" 0 0 -0.12926577 ;
	setAttr ".pt[12]" -type "float3" 0 0 -0.12926577 ;
	setAttr ".pt[16]" -type "float3" 0 0 0.1085504 ;
	setAttr ".pt[17]" -type "float3" 0 0 0.12302378 ;
	setAttr ".pt[18]" -type "float3" 0.1 0 0 ;
	setAttr ".pt[20]" -type "float3" -0.1 0 0 ;
	setAttr ".pt[21]" -type "float3" 0 0 0.12302378 ;
createNode transform -n "eyes" -p "cardgiver";
	rename -uid "C326AD53-4A8C-A1BD-E531-D0B291CEB2F0";
createNode transform -n "pDisc1" -p "eyes";
	rename -uid "E11A7FF8-48D7-A402-7D53-E5AD4397FDE8";
	setAttr ".t" -type "double3" -2.086560622245953 4.4566136433595744 4.4389947588031751 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 1.5949278892527974 1.5949278892527974 1.5949278892527974 ;
createNode mesh -n "pDiscShape1" -p "pDisc1";
	rename -uid "5CA68106-4F6A-14F5-BB7E-E9889B023B06";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pPlane3" -p "eyes";
	rename -uid "8004DE94-4E9D-C14F-5399-268C128D2AA0";
	setAttr ".t" -type "double3" -2.0759088619264787 4.3617835512348275 4.6151881171909164 ;
	setAttr ".r" -type "double3" 90 10.36399213434505 -44.041639645956323 ;
	setAttr ".s" -type "double3" 0.47496671340369251 0.47496671340369251 2.2916678698498556 ;
createNode mesh -n "pPlaneShape3" -p "pPlane3";
	rename -uid "29F60C31-4E47-B8F9-2B45-47B1E0369F12";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape2" -p "pPlane3";
	rename -uid "7196BD62-4108-A54A-E6FC-7AA2EB3B11B5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0 0 0.5 0 1 0 0 0.5
		 0.5 0.5 1 0.5 0 1 0.5 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  -0.5 0 0.5 0 0 0.5 0.5 0 0.5 -0.5 0 0 0 0 0
		 0.5 0 0 -0.5 0 -0.5 0 0 -0.5 0.5 0 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 0 7 8 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -8 -4
		mu 0 4 1 2 5 4
		f 4 5 8 -11 -7
		mu 0 4 3 4 7 6
		f 4 7 9 -12 -9
		mu 0 4 4 5 8 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane2" -p "eyes";
	rename -uid "C836A083-462D-DA6D-5856-1FA38F76DBE6";
	setAttr ".t" -type "double3" -2.0560742380240686 4.3617835512348275 4.6181046219884552 ;
	setAttr ".r" -type "double3" 90 -10.36399213434505 44.041639645956323 ;
	setAttr ".s" -type "double3" 0.47496671340369251 0.47496671340369251 2.2916678698498556 ;
createNode mesh -n "pPlaneShape2" -p "pPlane2";
	rename -uid "DDFCD3F3-48A5-84B3-35E4-CD98A1509F5E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pDisc2" -p "eyes";
	rename -uid "F98507A7-4884-1C5C-0BD3-CA941C613FA2";
	setAttr ".t" -type "double3" 2.0192522150767314 4.4566136433595744 4.4389947588031751 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 1.5949278892527974 1.5949278892527974 1.5949278892527974 ;
createNode mesh -n "pDiscShape2" -p "pDisc2";
	rename -uid "540BD00B-4756-3D1A-8F47-63ADB7E09234";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "pDisc2";
	rename -uid "482D05DC-4E36-975C-E57A-7C88234DADF2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 61 ".uvst[0].uvsp[0:60]" -type "float2" 0.066987306 0.24999997
		 0.93301272 0.25000006 0.49999991 1 0.5 0 0.93301266 0.75000012 0.066987246 0.74999994
		 0.49999997 0.5 0 0.49999994 0.25 0.066987276 0.5 0.25 0.28349364 0.625 0.28349364
		 0.37499997 0.75000006 0.066987306 1 0.50000006 0.7165063 0.62500006 0.71650636 0.37500003
		 0.74999988 0.93301272 0.24999994 0.93301266 0.49999997 0.75 0.17524043 0.6875 0.017037064
		 0.62940949 0.14174682 0.43749997 0.28349364 0.49999997 0.15849361 0.56249994 0.017037094
		 0.37059045 0.14644662 0.14644659 0.26674682 0.22099364 0.15012023 0.29799679 0.37059051
		 0.017037064 0.5 0.125 0.39174682 0.3125 0.38337344 0.17299682 0.5 0.375 0.39174682
		 0.5625 0.39174682 0.4375 0.62940955 0.017037064 0.73325318 0.2209937 0.60825318 0.3125
		 0.61662662 0.17299682 0.85355341 0.14644665 0.98296297 0.37059054 0.85825318 0.43750006
		 0.84987974 0.29799688 0.98296291 0.62940961 0.82475948 0.68750006 0.71650636 0.50000006
		 0.84150636 0.56250006 0.60825312 0.5625 0.60825318 0.43750003 0.85355335 0.85355347
		 0.62499994 0.84150636 0.60825312 0.6875 0.72487968 0.76450324 0.62940943 0.98296297
		 0.37059039 0.98296291 0.37499994 0.84150636 0.49999994 0.90400636 0.14644653 0.85355335
		 0.39174679 0.6875 0.2751202 0.76450312 0.49999997 0.625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 61 ".vt[0:60]"  -0.86602539 0 0.50000006 0.86602545 0 0.49999991
		 -1.6292068e-07 0 -1 5.9604645e-08 0 1 0.86602533 0 -0.50000018 -0.86602551 0 -0.49999991
		 -3.4438681e-08 0 0 -1 0 1.0323827e-07 -0.49999997 0 0.86602545 1.2582982e-08 0 0.5
		 -0.43301275 0 -0.24999994 -0.43301272 0 0.25000006 0.50000012 0 0.86602539 1 0 -1.5485742e-07
		 0.43301263 0 -0.25000009 0.43301272 0 0.24999993 0.49999982 0 -0.86602551 -0.50000012 0 -0.86602533
		 -8.3115474e-08 0 -0.5 -0.64951915 0 -0.37499994 -0.96592587 0 -0.25881895 -0.71650636 0 0.12500007
		 -0.43301272 0 5.9604645e-08 -0.68301278 0 -0.12499993 -0.96592581 0 0.25881913 -0.70710677 0 0.70710683
		 -0.46650636 0 0.55801272 -0.69975954 0 0.40400642 -0.25881901 0 0.96592587 3.6093812e-08 0 0.75
		 -0.21650636 0 0.37500003 -0.23325315 0 0.65400636 -1.092785e-08 0 0.25 -0.21650639 0 -0.12499997
		 -0.21650638 0 0.12500003 0.25881913 0 0.96592587 0.46650639 0 0.5580126 0.21650636 0 0.37499997
		 0.23325321 0 0.65400636 0.70710683 0 0.70710671 0.96592587 0 0.25881892 0.71650636 0 0.12499989
		 0.69975954 0 0.40400624 0.96592581 0 -0.25881922 0.64951897 0 -0.37500012 0.43301266 0 -8.1956387e-08
		 0.68301266 0 -0.12500013 0.2165063 0 -0.12500004 0.21650633 0 0.12499996 0.70710671 0 -0.70710695
		 0.24999987 0 -0.68301272 0.21650627 0 -0.37500006 0.44975939 0 -0.52900642 0.25881886 0 -0.96592587
		 -0.25881919 0 -0.96592581 -0.25000009 0 -0.68301266 -1.3253758e-07 0 -0.80801272
		 -0.70710695 0 -0.70710671 -0.21650642 0 -0.37499997 -0.44975963 0 -0.5290063 -5.8031773e-08 0 -0.25;
	setAttr -s 108 ".ed[0:107]"  22 10 1 10 19 1 19 23 1 23 22 1 19 5 1 5 20 0
		 20 23 1 20 7 0 7 21 1 21 23 1 21 11 1 11 22 1 7 24 0 24 27 1 27 21 1 24 0 0 0 25 0
		 25 27 1 25 8 0 8 26 1 26 27 1 26 11 1 8 28 0 28 31 1 31 26 1 28 3 0 3 29 1 29 31 1
		 29 9 1 9 30 1 30 31 1 30 11 1 9 32 1 32 34 1 34 30 1 32 6 1 6 33 1 33 34 1 33 10 1
		 22 34 1 37 9 1 29 38 1 38 37 1 3 35 0 35 38 1 35 12 0 12 36 1 36 38 1 36 15 1 15 37 1
		 12 39 0 39 42 1 42 36 1 39 1 0 1 40 0 40 42 1 40 13 0 13 41 1 41 42 1 41 15 1 13 43 0
		 43 46 1 46 41 1 43 4 0 4 44 1 44 46 1 44 14 1 14 45 1 45 46 1 45 15 1 14 47 1 47 48 1
		 48 45 1 47 6 1 32 48 1 37 48 1 51 14 1 44 52 1 52 51 1 4 49 0 49 52 1 49 16 0 16 50 1
		 50 52 1 50 18 1 18 51 1 16 53 0 53 56 1 56 50 1 53 2 0 2 54 0 54 56 1 54 17 0 17 55 1
		 55 56 1 55 18 1 17 57 0 57 59 1 59 55 1 57 5 0 19 59 1 10 58 1 58 59 1 58 18 1 33 60 1
		 60 58 1 47 60 1 51 60 1;
	setAttr -s 48 -ch 192 ".fc[0:47]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 22 10 19 23
		f 4 4 5 6 -3
		mu 0 4 19 5 20 23
		f 4 7 8 9 -7
		mu 0 4 20 7 21 23
		f 4 10 11 -4 -10
		mu 0 4 21 11 22 23
		f 4 -9 12 13 14
		mu 0 4 21 7 24 27
		f 4 15 16 17 -14
		mu 0 4 24 0 25 27
		f 4 18 19 20 -18
		mu 0 4 25 8 26 27
		f 4 21 -11 -15 -21
		mu 0 4 26 11 21 27
		f 4 -20 22 23 24
		mu 0 4 26 8 28 31
		f 4 25 26 27 -24
		mu 0 4 28 3 29 31
		f 4 28 29 30 -28
		mu 0 4 29 9 30 31
		f 4 31 -22 -25 -31
		mu 0 4 30 11 26 31
		f 4 -30 32 33 34
		mu 0 4 30 9 32 34
		f 4 35 36 37 -34
		mu 0 4 32 6 33 34
		f 4 38 -1 39 -38
		mu 0 4 33 10 22 34
		f 4 -12 -32 -35 -40
		mu 0 4 22 11 30 34
		f 4 40 -29 41 42
		mu 0 4 37 9 29 38
		f 4 -27 43 44 -42
		mu 0 4 29 3 35 38
		f 4 45 46 47 -45
		mu 0 4 35 12 36 38
		f 4 48 49 -43 -48
		mu 0 4 36 15 37 38
		f 4 -47 50 51 52
		mu 0 4 36 12 39 42
		f 4 53 54 55 -52
		mu 0 4 39 1 40 42
		f 4 56 57 58 -56
		mu 0 4 40 13 41 42
		f 4 59 -49 -53 -59
		mu 0 4 41 15 36 42
		f 4 -58 60 61 62
		mu 0 4 41 13 43 46
		f 4 63 64 65 -62
		mu 0 4 43 4 44 46
		f 4 66 67 68 -66
		mu 0 4 44 14 45 46
		f 4 69 -60 -63 -69
		mu 0 4 45 15 41 46
		f 4 -68 70 71 72
		mu 0 4 45 14 47 48
		f 4 73 -36 74 -72
		mu 0 4 47 6 32 48
		f 4 -33 -41 75 -75
		mu 0 4 32 9 37 48
		f 4 -50 -70 -73 -76
		mu 0 4 37 15 45 48
		f 4 76 -67 77 78
		mu 0 4 51 14 44 52
		f 4 -65 79 80 -78
		mu 0 4 44 4 49 52
		f 4 81 82 83 -81
		mu 0 4 49 16 50 52
		f 4 84 85 -79 -84
		mu 0 4 50 18 51 52
		f 4 -83 86 87 88
		mu 0 4 50 16 53 56
		f 4 89 90 91 -88
		mu 0 4 53 2 54 56
		f 4 92 93 94 -92
		mu 0 4 54 17 55 56
		f 4 95 -85 -89 -95
		mu 0 4 55 18 50 56
		f 4 -94 96 97 98
		mu 0 4 55 17 57 59
		f 4 99 -5 100 -98
		mu 0 4 57 5 19 59
		f 4 -2 101 102 -101
		mu 0 4 19 10 58 59
		f 4 103 -96 -99 -103
		mu 0 4 58 18 55 59
		f 4 -102 -39 104 105
		mu 0 4 58 10 33 60
		f 4 -37 -74 106 -105
		mu 0 4 33 6 47 60
		f 4 -71 -77 107 -107
		mu 0 4 47 14 51 60
		f 4 -86 -104 -106 -108
		mu 0 4 51 18 58 60;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane5" -p "eyes";
	rename -uid "4B19FBFE-47D6-006C-77DD-B7B35ACDFED0";
	setAttr ".t" -type "double3" 2.1196118187049677 4.3617835512348275 4.6151881171909164 ;
	setAttr ".r" -type "double3" 90 10.36399213434505 -44.041639645956323 ;
	setAttr ".s" -type "double3" 0.47496671340369251 0.47496671340369251 2.2916678698498556 ;
createNode mesh -n "pPlaneShape5" -p "pPlane5";
	rename -uid "E600ECB6-415B-1F2E-5BD6-ABA242A78DF8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0 0 0.5 0 1 0 0 0.5
		 0.5 0.5 1 0.5 0 1 0.5 1 1 1 0 0 0.5 0 0.5 0.5 0 0.5 1 0 1 0.5 0.5 1 0 1 1 1 0 0 0.5
		 0 0 0.5 1 0 1 0.5 0.5 1 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -0.5 0 0.5 0 0 0.49999988 0.5 0 0.5 -0.5 0 2.3841858e-07
		 0 0 0 0.5 0 -2.3841858e-07 -0.5 0 -0.5 9.5367432e-07 0 -0.50000024 0.49999905 0 -0.5
		 -0.5 0.15873429 0.5 0 0.15873429 0.49999988 0 0.15873429 0 -0.5 0.15873429 2.3841858e-07
		 0.5 0.15873429 0.5 0.5 0.15873429 -2.3841858e-07 9.5367432e-07 0.15873429 -0.50000024
		 -0.5 0.15873429 -0.5 0.49999905 0.15873429 -0.5;
	setAttr -s 32 ".ed[0:31]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 0 7 8 0 0 9 0 1 10 1 9 10 0 10 11 1 3 12 1 12 11 1 9 12 0 2 13 0
		 10 13 0 5 14 1 13 14 0 11 14 1 7 15 1 11 15 1 6 16 0 16 15 0 12 16 0 8 17 0 14 17 0
		 15 17 0;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 14 15 -18 -19
		mu 0 4 18 19 4 20
		f 4 20 22 -24 -16
		mu 0 4 19 21 22 4
		f 4 17 25 -28 -29
		mu 0 4 20 4 23 24
		f 4 23 30 -32 -26
		mu 0 4 4 22 25 23
		f 4 1 5 -4 -1
		mu 0 4 9 12 11 10
		f 4 3 7 -5 -3
		mu 0 4 10 11 14 13
		f 4 6 10 -9 -6
		mu 0 4 12 16 15 11
		f 4 8 11 -10 -8
		mu 0 4 11 15 17 14
		f 4 0 13 -15 -13
		mu 0 4 0 1 19 18
		f 4 -2 12 18 -17
		mu 0 4 3 0 18 20
		f 4 2 19 -21 -14
		mu 0 4 1 2 21 19
		f 4 4 21 -23 -20
		mu 0 4 2 5 22 21
		f 4 -11 26 27 -25
		mu 0 4 7 6 24 23
		f 4 -7 16 28 -27
		mu 0 4 6 3 20 24
		f 4 9 29 -31 -22
		mu 0 4 5 8 25 22
		f 4 -12 24 31 -30
		mu 0 4 8 7 23 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "pPlane5";
	rename -uid "7DFD6516-4795-AA08-091B-5991CE7AC325";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0 0 0.5 0 1 0 0 0.5
		 0.5 0.5 1 0.5 0 1 0.5 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  -0.5 0 0.5 0 0 0.5 0.5 0 0.5 -0.5 0 0 0 0 0
		 0.5 0 0 -0.5 0 -0.5 0 0 -0.5 0.5 0 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 0 7 8 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -8 -4
		mu 0 4 1 2 5 4
		f 4 5 8 -11 -7
		mu 0 4 3 4 7 6
		f 4 7 9 -12 -9
		mu 0 4 4 5 8 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane4" -p "eyes";
	rename -uid "1DD3FA25-4595-04AE-CEFF-C1A323B0BF1A";
	setAttr ".t" -type "double3" 2.1394464426073778 4.3617835512348275 4.6181046219884552 ;
	setAttr ".r" -type "double3" 90 -10.36399213434505 44.041639645956323 ;
	setAttr ".s" -type "double3" 0.47496671340369251 0.47496671340369251 2.2916678698498556 ;
createNode mesh -n "pPlaneShape4" -p "pPlane4";
	rename -uid "531EA712-41DA-D36B-44A0-DCA68E9BDF57";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0 0 0.5 0 1 0 0 0.5
		 0.5 0.5 1 0.5 0 1 0.5 1 1 1 0 0 0.5 0 0.5 0.5 0 0.5 1 0 1 0.5 0.5 1 0 1 1 1 0 0 0.5
		 0 0 0.5 1 0 1 0.5 0.5 1 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -0.5 0 0.5 0 0 0.5 0.5 0 0.5 -0.5 0 0 0 0 0
		 0.5 0 0 -0.5 0 -0.49999988 0 0 -0.49999976 0.5 0 -0.49999988 -0.5 0.15873429 0.5
		 0 0.15873429 0.5 0 0.15873429 0 -0.5 0.15873429 0 0.5 0.15873429 0.5 0.5 0.15873429 0
		 0 0.15873429 -0.49999976 -0.5 0.15873429 -0.49999988 0.5 0.15873429 -0.49999988;
	setAttr -s 32 ".ed[0:31]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 0 7 8 0 0 9 0 1 10 1 9 10 0 10 11 1 3 12 1 12 11 1 9 12 0 2 13 0
		 10 13 0 5 14 1 13 14 0 11 14 1 7 15 1 11 15 1 6 16 0 16 15 0 12 16 0 8 17 0 14 17 0
		 15 17 0;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 14 15 -18 -19
		mu 0 4 18 19 4 20
		f 4 20 22 -24 -16
		mu 0 4 19 21 22 4
		f 4 17 25 -28 -29
		mu 0 4 20 4 23 24
		f 4 23 30 -32 -26
		mu 0 4 4 22 25 23
		f 4 1 5 -4 -1
		mu 0 4 9 12 11 10
		f 4 3 7 -5 -3
		mu 0 4 10 11 14 13
		f 4 6 10 -9 -6
		mu 0 4 12 16 15 11
		f 4 8 11 -10 -8
		mu 0 4 11 15 17 14
		f 4 0 13 -15 -13
		mu 0 4 0 1 19 18
		f 4 -2 12 18 -17
		mu 0 4 3 0 18 20
		f 4 2 19 -21 -14
		mu 0 4 1 2 21 19
		f 4 4 21 -23 -20
		mu 0 4 2 5 22 21
		f 4 -11 26 27 -25
		mu 0 4 7 6 24 23
		f 4 -7 16 28 -27
		mu 0 4 6 3 20 24
		f 4 9 29 -31 -22
		mu 0 4 5 8 25 22
		f 4 -12 24 31 -30
		mu 0 4 8 7 23 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "teeth" -p "cardgiver";
	rename -uid "AB68E561-4555-C4F6-A89F-198A2F2DDF1C";
createNode transform -n "pCube20" -p "teeth";
	rename -uid "507456B4-4108-CDAA-83EB-30A4D06DA5BE";
	setAttr ".t" -type "double3" -2.1283686083951663 2.3543087813268295 4.0975969596175918 ;
	setAttr ".s" -type "double3" 0.57634856383108501 1.121746217609465 0.57634856383108501 ;
createNode mesh -n "pCubeShape20" -p "pCube20";
	rename -uid "A0028E91-4691-8CB6-633F-67A0A7E4BB4D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt";
	setAttr ".pt[0]" -type "float3" -0.087071866 0 0 ;
	setAttr ".pt[1]" -type "float3" -0.087071866 -1.8626451e-09 -3.7252903e-09 ;
	setAttr ".pt[6]" -type "float3" -0.087071866 0 0 ;
	setAttr ".pt[7]" -type "float3" -0.087071866 -1.8626451e-09 3.7252903e-09 ;
	setAttr ".pt[9]" -type "float3" -0.10716537 0 0 ;
	setAttr ".pt[10]" -type "float3" 0.080373988 -0.20303777 0 ;
	setAttr ".pt[11]" -type "float3" -0.10716537 0 0 ;
	setAttr ".pt[12]" -type "float3" -0.087071866 0 0 ;
	setAttr ".pt[13]" -type "float3" -0.087071866 0 0 ;
	setAttr ".pt[14]" -type "float3" 0.080373988 -0.20303777 0 ;
	setAttr ".pt[15]" -type "float3" -0.10716537 0 0 ;
	setAttr ".pt[17]" -type "float3" -0.10716537 0 0 ;
	setAttr ".pt[20]" -type "float3" -0.10716537 0 0 ;
	setAttr ".pt[22]" -type "float3" -0.10716537 0 0 ;
	setAttr ".pt[23]" -type "float3" 0.15405016 -0.26842302 0 ;
	setAttr ".pt[24]" -type "float3" -0.10716537 0 0 ;
	setAttr ".pt[25]" -type "float3" -0.10716537 0 0 ;
	setAttr ".dr" 1;
createNode transform -n "pCube7" -p "teeth";
	rename -uid "F8E4E3D4-4C15-E4A3-2049-909491A5B770";
	setAttr ".t" -type "double3" -1.5894652795303552 2.3953663338615065 4.1001658330871456 ;
	setAttr ".s" -type "double3" 0.40067469303291281 0.408024170107469 0.37320368557976374 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
	rename -uid "14903D6B-40B3-A3AB-BCA5-10B1CE146C7E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[1]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[6]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[7]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[8]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
	setAttr ".pt[11]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
createNode mesh -n "polySurfaceShape3" -p "pCube7";
	rename -uid "E39B153D-4BE3-9994-7C33-2A88E0EBA58E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6" -p "teeth";
	rename -uid "01D81676-47FE-C710-89D6-C6ACCF9225B4";
	setAttr ".t" -type "double3" -1.0571404897147136 2.3953663338615065 4.1001658330871456 ;
	setAttr ".s" -type "double3" 0.40067469303291281 0.408024170107469 0.37320368557976374 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	rename -uid "123561BE-41A2-AF0A-F3DF-DE99BE7DF1C3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[1]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[6]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[7]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[8]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
	setAttr ".pt[11]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
createNode mesh -n "polySurfaceShape4" -p "pCube6";
	rename -uid "F8E1B758-4CB8-689F-68FF-7086B91AD598";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3" -p "teeth";
	rename -uid "8F08FCAB-4E53-2FA7-0B19-D0AA20EFA708";
	setAttr ".t" -type "double3" -0.53590579968689778 2.3953663338615065 4.1001658330871456 ;
	setAttr ".s" -type "double3" 0.40067469303291281 0.408024170107469 0.37320368557976374 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "CEB1FAE2-4D1F-8F80-C605-C8AF1286B659";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[1]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[6]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[7]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[8]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
	setAttr ".pt[11]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
createNode mesh -n "polySurfaceShape5" -p "pCube3";
	rename -uid "5B454044-467F-B1E6-E654-C698808183DC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "teeth";
	rename -uid "DF2838FF-4894-52DE-484E-3BBC8ACFA00D";
	setAttr ".t" -type "double3" -0.014671109659082027 2.3953663338615065 4.1001658330871456 ;
	setAttr ".s" -type "double3" 0.40067469303291281 0.408024170107469 0.37320368557976374 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "E18D4B09-48FD-58CB-FD69-90A4848CD46C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[1]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[6]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[7]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[8]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
	setAttr ".pt[11]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
createNode transform -n "pCube4" -p "teeth";
	rename -uid "766B8A1C-44F3-5742-488C-4C8928BC1CAB";
	setAttr ".t" -type "double3" 0.50656358036873372 2.3953663338615065 4.1001658330871456 ;
	setAttr ".s" -type "double3" 0.40067469303291281 0.408024170107469 0.37320368557976374 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "2330175C-4117-D9D1-D537-65B03126090E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[1]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[6]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[7]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[8]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
	setAttr ".pt[11]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
createNode mesh -n "polySurfaceShape6" -p "pCube4";
	rename -uid "F9BCEF77-4F09-1490-CC9D-DBAF512E974A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5" -p "teeth";
	rename -uid "2F9F2485-4AE2-B06B-6F1E-3B85181CC413";
	setAttr ".t" -type "double3" 1.0277982703965498 2.3953663338615065 4.1001658330871456 ;
	setAttr ".s" -type "double3" 0.40067469303291281 0.408024170107469 0.37320368557976374 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	rename -uid "EF805569-4C95-B73E-09AB-DF8E93EE3AC4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[1]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[6]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[7]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[8]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
	setAttr ".pt[11]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
createNode mesh -n "polySurfaceShape7" -p "pCube5";
	rename -uid "4AAE7488-47B0-1FD9-4F3F-F29CA059D30C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8" -p "teeth";
	rename -uid "34611771-4E28-9CC8-0E88-11B1A34B785A";
	setAttr ".t" -type "double3" 1.5490329604243678 2.3953663338615065 4.1001658330871456 ;
	setAttr ".s" -type "double3" 0.40067469303291281 0.408024170107469 0.37320368557976374 ;
createNode mesh -n "pCubeShape8" -p "pCube8";
	rename -uid "56FB1CE4-4E11-1336-4F2C-2A9D906C8865";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[1]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[6]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[7]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[8]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
	setAttr ".pt[11]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
createNode mesh -n "polySurfaceShape8" -p "pCube8";
	rename -uid "DEE12245-4EA4-6496-A92A-7D9F0081FBDE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube21" -p "teeth";
	rename -uid "BB750A9C-44D0-534B-56F5-71ACB708E6BC";
	setAttr ".t" -type "double3" 2.0729032920546846 2.3543087813268295 4.0975969596175918 ;
	setAttr ".r" -type "double3" 0 -180 0 ;
	setAttr ".s" -type "double3" 0.57634856383108501 1.121746217609465 0.57634856383108501 ;
createNode mesh -n "pCubeShape21" -p "pCube21";
	rename -uid "22A5134D-4D69-A081-8DEC-528873DFA5AA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 39 ".uvst[0].uvsp[0:38]" -type "float2" 0.375 0 0.375 1 0.625
		 0 0.625 1 0.375 0.25 0.625 0.25 0.375 0.5 0.125 0.25 0.625 0.5 0.875 0.25 0.375 0.75
		 0.125 0 0.625 0.75 0.875 0 0.5 0.125 0.5 0.375 0.5 0.625 0.5 0.875 0.75 0.125 0.25
		 0.125 0.5 0 0.5 1 0.625 0.125 0.5 0.25 0.375 0.125 0.625 0.375 0.75 0.25 0.5 0.5
		 0.375 0.375 0.25 0.25 0.625 0.625 0.875 0.125 0.5 0.75 0.375 0.625 0.125 0.125 0.625
		 0.875 0.75 0 0.375 0.875 0.25 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt";
	setAttr ".pt[0]" -type "float3" -0.087071866 0 0 ;
	setAttr ".pt[1]" -type "float3" -0.087071866 -1.8626451e-09 -3.7252903e-09 ;
	setAttr ".pt[6]" -type "float3" -0.087071866 0 0 ;
	setAttr ".pt[7]" -type "float3" -0.087071866 -1.8626451e-09 3.7252903e-09 ;
	setAttr ".pt[9]" -type "float3" -0.10716537 0 0 ;
	setAttr ".pt[10]" -type "float3" 0.080373988 -0.20303777 0 ;
	setAttr ".pt[11]" -type "float3" -0.10716537 0 0 ;
	setAttr ".pt[12]" -type "float3" -0.087071866 0 0 ;
	setAttr ".pt[13]" -type "float3" -0.087071866 0 0 ;
	setAttr ".pt[14]" -type "float3" 0.080373988 -0.20303777 0 ;
	setAttr ".pt[15]" -type "float3" -0.10716537 0 0 ;
	setAttr ".pt[17]" -type "float3" -0.10716537 0 0 ;
	setAttr ".pt[20]" -type "float3" -0.10716537 0 0 ;
	setAttr ".pt[22]" -type "float3" -0.10716537 0 0 ;
	setAttr ".pt[23]" -type "float3" 0.15405016 -0.26842302 0 ;
	setAttr ".pt[24]" -type "float3" -0.10716537 0 0 ;
	setAttr ".pt[25]" -type "float3" -0.10716537 0 0 ;
	setAttr -s 26 ".vt[0:25]"  -0.27777779 -0.27777779 0.27777779 0.27777779 -0.27777779 0.27777779
		 -0.27777779 0.27777779 0.27777776 0.27777779 0.27777779 0.27777779 -0.27777779 0.27777776 -0.27777779
		 0.27777779 0.27777779 -0.27777779 -0.27777779 -0.27777779 -0.27777776 0.27777779 -0.27777779 -0.27777779
		 -0.375 0.375 0 0.375 0 -0.375 0 -0.375 -0.375 -0.375 0 -0.375 0.375 -0.375 0 -0.375 -0.375 0
		 0 -0.375 0.375 0.375 0 0.375 0 0.375 0.375 -0.375 0 0.375 0.375 0.375 0 0 0.375 -0.375
		 0 0 0.5 0 0.5 0 0 0 -0.5 0 -0.5 0 0.5 0 0 -0.5 0 0;
	setAttr -s 48 ".ed[0:47]"  0 14 1 14 1 1 2 16 1 16 3 1 4 19 1 19 5 1
		 6 10 1 10 7 1 0 17 1 17 2 1 1 15 1 15 3 1 2 8 1 8 4 1 3 18 1 18 5 1 4 11 1 11 6 1
		 5 9 1 9 7 1 6 13 1 13 0 1 7 12 1 12 1 1 14 20 1 20 17 1 15 20 1 16 20 1 16 21 1 21 8 1
		 18 21 1 19 21 1 19 22 1 22 11 1 9 22 1 10 22 1 10 23 1 23 13 1 12 23 1 14 23 1 12 24 1
		 24 15 1 9 24 1 18 24 1 13 25 1 25 11 1 17 25 1 8 25 1;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 24 25 -9
		mu 0 4 0 20 14 24
		f 4 1 10 26 -25
		mu 0 4 20 2 22 14
		f 4 -27 11 -4 27
		mu 0 4 14 22 5 23
		f 4 -26 -28 -3 -10
		mu 0 4 24 14 23 4
		f 4 2 28 29 -13
		mu 0 4 4 23 15 28
		f 4 3 14 30 -29
		mu 0 4 23 5 25 15
		f 4 -31 15 -6 31
		mu 0 4 15 25 8 27
		f 4 -30 -32 -5 -14
		mu 0 4 28 15 27 6
		f 4 4 32 33 -17
		mu 0 4 6 27 16 33
		f 4 5 18 34 -33
		mu 0 4 27 8 30 16
		f 4 -35 19 -8 35
		mu 0 4 16 30 12 32
		f 4 -34 -36 -7 -18
		mu 0 4 33 16 32 10
		f 4 6 36 37 -21
		mu 0 4 10 32 17 37
		f 4 7 22 38 -37
		mu 0 4 32 12 35 17
		f 4 -39 23 -2 39
		mu 0 4 17 35 3 21
		f 4 -38 -40 -1 -22
		mu 0 4 37 17 21 1
		f 4 -24 40 41 -11
		mu 0 4 2 36 18 22
		f 4 -23 -20 42 -41
		mu 0 4 36 13 31 18
		f 4 -43 -19 -16 43
		mu 0 4 18 31 9 26
		f 4 -42 -44 -15 -12
		mu 0 4 22 18 26 5
		f 4 20 44 45 17
		mu 0 4 11 38 19 34
		f 4 21 8 46 -45
		mu 0 4 38 0 24 19
		f 4 -47 9 12 47
		mu 0 4 19 24 4 29
		f 4 -46 -48 13 16
		mu 0 4 34 19 29 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "pCube23" -p "teeth";
	rename -uid "384EAFAF-4B81-1FD1-E67A-23BCEF35BFB2";
	setAttr ".t" -type "double3" 2.5918744023874041 1.2734106297929848 4.0975969596175918 ;
	setAttr ".r" -type "double3" 180 -180 0 ;
	setAttr ".s" -type "double3" 0.57634856383108501 1.121746217609465 0.57634856383108501 ;
createNode mesh -n "pCubeShape23" -p "pCube23";
	rename -uid "73AC845F-47F1-1792-96D4-7FBC53C0A116";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 39 ".uvst[0].uvsp[0:38]" -type "float2" 0.375 0 0.375 1 0.625
		 0 0.625 1 0.375 0.25 0.625 0.25 0.375 0.5 0.125 0.25 0.625 0.5 0.875 0.25 0.375 0.75
		 0.125 0 0.625 0.75 0.875 0 0.5 0.125 0.5 0.375 0.5 0.625 0.5 0.875 0.75 0.125 0.25
		 0.125 0.5 0 0.5 1 0.625 0.125 0.5 0.25 0.375 0.125 0.625 0.375 0.75 0.25 0.5 0.5
		 0.375 0.375 0.25 0.25 0.625 0.625 0.875 0.125 0.5 0.75 0.375 0.625 0.125 0.125 0.625
		 0.875 0.75 0 0.375 0.875 0.25 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt";
	setAttr ".pt[0]" -type "float3" -0.087071866 0 0 ;
	setAttr ".pt[1]" -type "float3" -0.087071866 -1.8626451e-09 -3.7252903e-09 ;
	setAttr ".pt[6]" -type "float3" -0.087071866 0 0 ;
	setAttr ".pt[7]" -type "float3" -0.087071866 -1.8626451e-09 3.7252903e-09 ;
	setAttr ".pt[9]" -type "float3" -0.10716537 0 0 ;
	setAttr ".pt[10]" -type "float3" 0.080373988 -0.20303777 0 ;
	setAttr ".pt[11]" -type "float3" -0.10716537 0 0 ;
	setAttr ".pt[12]" -type "float3" -0.087071866 0 0 ;
	setAttr ".pt[13]" -type "float3" -0.087071866 0 0 ;
	setAttr ".pt[14]" -type "float3" 0.080373988 -0.20303777 0 ;
	setAttr ".pt[15]" -type "float3" -0.10716537 0 0 ;
	setAttr ".pt[17]" -type "float3" -0.10716537 0 0 ;
	setAttr ".pt[20]" -type "float3" -0.10716537 0 0 ;
	setAttr ".pt[22]" -type "float3" -0.10716537 0 0 ;
	setAttr ".pt[23]" -type "float3" 0.15405016 -0.26842302 0 ;
	setAttr ".pt[24]" -type "float3" -0.10716537 0 0 ;
	setAttr ".pt[25]" -type "float3" -0.10716537 0 0 ;
	setAttr -s 26 ".vt[0:25]"  -0.27777779 -0.27777779 0.27777779 0.27777779 -0.27777779 0.27777779
		 -0.27777779 0.27777779 0.27777776 0.27777779 0.27777779 0.27777779 -0.27777779 0.27777776 -0.27777779
		 0.27777779 0.27777779 -0.27777779 -0.27777779 -0.27777779 -0.27777776 0.27777779 -0.27777779 -0.27777779
		 -0.375 0.375 0 0.375 0 -0.375 0 -0.375 -0.375 -0.375 0 -0.375 0.375 -0.375 0 -0.375 -0.375 0
		 0 -0.375 0.375 0.375 0 0.375 0 0.375 0.375 -0.375 0 0.375 0.375 0.375 0 0 0.375 -0.375
		 0 0 0.5 0 0.5 0 0 0 -0.5 0 -0.5 0 0.5 0 0 -0.5 0 0;
	setAttr -s 48 ".ed[0:47]"  0 14 1 14 1 1 2 16 1 16 3 1 4 19 1 19 5 1
		 6 10 1 10 7 1 0 17 1 17 2 1 1 15 1 15 3 1 2 8 1 8 4 1 3 18 1 18 5 1 4 11 1 11 6 1
		 5 9 1 9 7 1 6 13 1 13 0 1 7 12 1 12 1 1 14 20 1 20 17 1 15 20 1 16 20 1 16 21 1 21 8 1
		 18 21 1 19 21 1 19 22 1 22 11 1 9 22 1 10 22 1 10 23 1 23 13 1 12 23 1 14 23 1 12 24 1
		 24 15 1 9 24 1 18 24 1 13 25 1 25 11 1 17 25 1 8 25 1;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 24 25 -9
		mu 0 4 0 20 14 24
		f 4 1 10 26 -25
		mu 0 4 20 2 22 14
		f 4 -27 11 -4 27
		mu 0 4 14 22 5 23
		f 4 -26 -28 -3 -10
		mu 0 4 24 14 23 4
		f 4 2 28 29 -13
		mu 0 4 4 23 15 28
		f 4 3 14 30 -29
		mu 0 4 23 5 25 15
		f 4 -31 15 -6 31
		mu 0 4 15 25 8 27
		f 4 -30 -32 -5 -14
		mu 0 4 28 15 27 6
		f 4 4 32 33 -17
		mu 0 4 6 27 16 33
		f 4 5 18 34 -33
		mu 0 4 27 8 30 16
		f 4 -35 19 -8 35
		mu 0 4 16 30 12 32
		f 4 -34 -36 -7 -18
		mu 0 4 33 16 32 10
		f 4 6 36 37 -21
		mu 0 4 10 32 17 37
		f 4 7 22 38 -37
		mu 0 4 32 12 35 17
		f 4 -39 23 -2 39
		mu 0 4 17 35 3 21
		f 4 -38 -40 -1 -22
		mu 0 4 37 17 21 1
		f 4 -24 40 41 -11
		mu 0 4 2 36 18 22
		f 4 -23 -20 42 -41
		mu 0 4 36 13 31 18
		f 4 -43 -19 -16 43
		mu 0 4 18 31 9 26
		f 4 -42 -44 -15 -12
		mu 0 4 22 18 26 5
		f 4 20 44 45 17
		mu 0 4 11 38 19 34
		f 4 21 8 46 -45
		mu 0 4 38 0 24 19
		f 4 -47 9 12 47
		mu 0 4 19 24 4 29
		f 4 -46 -48 13 16
		mu 0 4 34 19 29 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "pCube31" -p "teeth";
	rename -uid "D90D04A5-45F7-15AF-C774-E8831F6DA903";
	setAttr ".t" -type "double3" 2.0668579598418964 1.1211106980399399 4.1001658330871456 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 0.40067469303291281 0.408024170107469 0.37320368557976374 ;
createNode mesh -n "pCubeShape31" -p "pCube31";
	rename -uid "62A6897B-4781-0531-DCDB-CEBE2D0D052A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0 0.5 1 0.5 0.25 0.5 0.5 0.5 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[1]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[6]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[7]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[8]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
	setAttr ".pt[11]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 0 -0.5 0.5 0 0.5 0.5 0 0.5 -0.5
		 0 -0.5 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 8 0 2 9 0 4 10 0 6 11 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 1 0 9 3 0 10 5 0 11 7 0 8 9 1 9 10 1 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 16 -2 -5
		mu 0 4 0 14 16 2
		f 4 1 17 -3 -7
		mu 0 4 2 16 17 4
		f 4 2 18 -4 -9
		mu 0 4 4 17 18 6
		f 4 3 19 -1 -11
		mu 0 4 6 18 15 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 -17 12 5 -14
		mu 0 4 16 14 1 3
		f 4 -18 13 7 -15
		mu 0 4 17 16 3 5
		f 4 -19 14 9 -16
		mu 0 4 18 17 5 7
		f 4 -20 15 11 -13
		mu 0 4 15 18 7 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape8" -p "pCube31";
	rename -uid "E550E325-41C7-89B4-6A27-83B6209B1916";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube30" -p "teeth";
	rename -uid "40CD7C7C-4EFD-1D32-267F-859BBA1EE803";
	setAttr ".t" -type "double3" 1.5490329604243678 1.1211106980399399 4.1001658330871456 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 0.40067469303291281 0.408024170107469 0.37320368557976374 ;
createNode mesh -n "pCubeShape30" -p "pCube30";
	rename -uid "DB6D2D17-4B0D-28E0-2948-DD8CD986F673";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0 0.5 1 0.5 0.25 0.5 0.5 0.5 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[1]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[6]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[7]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[8]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
	setAttr ".pt[11]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 0 -0.5 0.5 0 0.5 0.5 0 0.5 -0.5
		 0 -0.5 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 8 0 2 9 0 4 10 0 6 11 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 1 0 9 3 0 10 5 0 11 7 0 8 9 1 9 10 1 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 16 -2 -5
		mu 0 4 0 14 16 2
		f 4 1 17 -3 -7
		mu 0 4 2 16 17 4
		f 4 2 18 -4 -9
		mu 0 4 4 17 18 6
		f 4 3 19 -1 -11
		mu 0 4 6 18 15 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 -17 12 5 -14
		mu 0 4 16 14 1 3
		f 4 -18 13 7 -15
		mu 0 4 17 16 3 5
		f 4 -19 14 9 -16
		mu 0 4 18 17 5 7
		f 4 -20 15 11 -13
		mu 0 4 15 18 7 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape8" -p "pCube30";
	rename -uid "C9B82A68-4250-79E4-C87D-918D75771604";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube29" -p "teeth";
	rename -uid "1E649379-42C4-8708-3C10-80B042DA18F9";
	setAttr ".t" -type "double3" 1.0277982703965498 1.1211106980399399 4.1001658330871456 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 0.40067469303291281 0.408024170107469 0.37320368557976374 ;
createNode mesh -n "pCubeShape29" -p "pCube29";
	rename -uid "C3A15D8B-4D0B-5999-5B17-72A083A12FA0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0 0.5 1 0.5 0.25 0.5 0.5 0.5 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[1]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[6]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[7]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[8]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
	setAttr ".pt[11]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 0 -0.5 0.5 0 0.5 0.5 0 0.5 -0.5
		 0 -0.5 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 8 0 2 9 0 4 10 0 6 11 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 1 0 9 3 0 10 5 0 11 7 0 8 9 1 9 10 1 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 16 -2 -5
		mu 0 4 0 14 16 2
		f 4 1 17 -3 -7
		mu 0 4 2 16 17 4
		f 4 2 18 -4 -9
		mu 0 4 4 17 18 6
		f 4 3 19 -1 -11
		mu 0 4 6 18 15 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 -17 12 5 -14
		mu 0 4 16 14 1 3
		f 4 -18 13 7 -15
		mu 0 4 17 16 3 5
		f 4 -19 14 9 -16
		mu 0 4 18 17 5 7
		f 4 -20 15 11 -13
		mu 0 4 15 18 7 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape7" -p "pCube29";
	rename -uid "813594DE-4E93-41C5-6760-C49C895C9FBD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube28" -p "teeth";
	rename -uid "72893361-422E-E75A-5F0F-17A7C7BC5098";
	setAttr ".t" -type "double3" 0.50656358036873372 1.1211106980399399 4.1001658330871456 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 0.40067469303291281 0.408024170107469 0.37320368557976374 ;
createNode mesh -n "pCubeShape28" -p "pCube28";
	rename -uid "98391273-4852-221E-15DD-2D8E773F0AD5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0 0.5 1 0.5 0.25 0.5 0.5 0.5 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[1]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[6]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[7]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[8]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
	setAttr ".pt[11]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 0 -0.5 0.5 0 0.5 0.5 0 0.5 -0.5
		 0 -0.5 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 8 0 2 9 0 4 10 0 6 11 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 1 0 9 3 0 10 5 0 11 7 0 8 9 1 9 10 1 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 16 -2 -5
		mu 0 4 0 14 16 2
		f 4 1 17 -3 -7
		mu 0 4 2 16 17 4
		f 4 2 18 -4 -9
		mu 0 4 4 17 18 6
		f 4 3 19 -1 -11
		mu 0 4 6 18 15 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 -17 12 5 -14
		mu 0 4 16 14 1 3
		f 4 -18 13 7 -15
		mu 0 4 17 16 3 5
		f 4 -19 14 9 -16
		mu 0 4 18 17 5 7
		f 4 -20 15 11 -13
		mu 0 4 15 18 7 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape6" -p "pCube28";
	rename -uid "9E5FC5C3-410C-859F-B0CB-E58D16FF9F7B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube27" -p "teeth";
	rename -uid "85261388-459A-4303-6568-088EAF05EA9A";
	setAttr ".t" -type "double3" -0.014671109659082027 1.1211106980399399 4.1001658330871456 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 0.40067469303291281 0.408024170107469 0.37320368557976374 ;
createNode mesh -n "pCubeShape27" -p "pCube27";
	rename -uid "33956005-4058-B964-6E71-A0AADCCCE0BE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0 0.5 1 0.5 0.25 0.5 0.5 0.5 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[1]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[6]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[7]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[8]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
	setAttr ".pt[11]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 0 -0.5 0.5 0 0.5 0.5 0 0.5 -0.5
		 0 -0.5 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 8 0 2 9 0 4 10 0 6 11 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 1 0 9 3 0 10 5 0 11 7 0 8 9 1 9 10 1 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 16 -2 -5
		mu 0 4 0 14 16 2
		f 4 1 17 -3 -7
		mu 0 4 2 16 17 4
		f 4 2 18 -4 -9
		mu 0 4 4 17 18 6
		f 4 3 19 -1 -11
		mu 0 4 6 18 15 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 -17 12 5 -14
		mu 0 4 16 14 1 3
		f 4 -18 13 7 -15
		mu 0 4 17 16 3 5
		f 4 -19 14 9 -16
		mu 0 4 18 17 5 7
		f 4 -20 15 11 -13
		mu 0 4 15 18 7 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube26" -p "teeth";
	rename -uid "79DB9268-4484-47D6-D6D0-E1873EE4E794";
	setAttr ".t" -type "double3" -0.53590579968689778 1.1211106980399399 4.1001658330871456 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 0.40067469303291281 0.408024170107469 0.37320368557976374 ;
createNode mesh -n "pCubeShape26" -p "pCube26";
	rename -uid "D4DAA10D-44D5-113F-76E9-D19A9714EB21";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0 0.5 1 0.5 0.25 0.5 0.5 0.5 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[1]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[6]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[7]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[8]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
	setAttr ".pt[11]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 0 -0.5 0.5 0 0.5 0.5 0 0.5 -0.5
		 0 -0.5 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 8 0 2 9 0 4 10 0 6 11 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 1 0 9 3 0 10 5 0 11 7 0 8 9 1 9 10 1 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 16 -2 -5
		mu 0 4 0 14 16 2
		f 4 1 17 -3 -7
		mu 0 4 2 16 17 4
		f 4 2 18 -4 -9
		mu 0 4 4 17 18 6
		f 4 3 19 -1 -11
		mu 0 4 6 18 15 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 -17 12 5 -14
		mu 0 4 16 14 1 3
		f 4 -18 13 7 -15
		mu 0 4 17 16 3 5
		f 4 -19 14 9 -16
		mu 0 4 18 17 5 7
		f 4 -20 15 11 -13
		mu 0 4 15 18 7 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape5" -p "pCube26";
	rename -uid "ED256F2E-489E-4130-914F-BF8065DA1FF6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube25" -p "teeth";
	rename -uid "8346ACBE-4703-C945-B645-719DC18EC5A3";
	setAttr ".t" -type "double3" -1.0571404897147136 1.1211106980399399 4.1001658330871456 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 0.40067469303291281 0.408024170107469 0.37320368557976374 ;
createNode mesh -n "pCubeShape25" -p "pCube25";
	rename -uid "81973385-498F-A9C3-2F7B-FE921AC3B4D8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0 0.5 1 0.5 0.25 0.5 0.5 0.5 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[1]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[6]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[7]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[8]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
	setAttr ".pt[11]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 0 -0.5 0.5 0 0.5 0.5 0 0.5 -0.5
		 0 -0.5 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 8 0 2 9 0 4 10 0 6 11 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 1 0 9 3 0 10 5 0 11 7 0 8 9 1 9 10 1 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 16 -2 -5
		mu 0 4 0 14 16 2
		f 4 1 17 -3 -7
		mu 0 4 2 16 17 4
		f 4 2 18 -4 -9
		mu 0 4 4 17 18 6
		f 4 3 19 -1 -11
		mu 0 4 6 18 15 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 -17 12 5 -14
		mu 0 4 16 14 1 3
		f 4 -18 13 7 -15
		mu 0 4 17 16 3 5
		f 4 -19 14 9 -16
		mu 0 4 18 17 5 7
		f 4 -20 15 11 -13
		mu 0 4 15 18 7 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape4" -p "pCube25";
	rename -uid "5168D87F-4F7C-4FA1-FD33-F48E55C481E5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube24" -p "teeth";
	rename -uid "0FB4DEAB-4CA3-A4FA-7D86-3392E0A8BBA4";
	setAttr ".t" -type "double3" -1.5894652795303552 1.1211106980399399 4.1001658330871456 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 0.40067469303291281 0.408024170107469 0.37320368557976374 ;
createNode mesh -n "pCubeShape24" -p "pCube24";
	rename -uid "028622E3-4969-BE0B-37D7-DFA7D13F37CF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0 0.5 1 0.5 0.25 0.5 0.5 0.5 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[1]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[6]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[7]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[8]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
	setAttr ".pt[11]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 0 -0.5 0.5 0 0.5 0.5 0 0.5 -0.5
		 0 -0.5 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 8 0 2 9 0 4 10 0 6 11 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 1 0 9 3 0 10 5 0 11 7 0 8 9 1 9 10 1 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 16 -2 -5
		mu 0 4 0 14 16 2
		f 4 1 17 -3 -7
		mu 0 4 2 16 17 4
		f 4 2 18 -4 -9
		mu 0 4 4 17 18 6
		f 4 3 19 -1 -11
		mu 0 4 6 18 15 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 -17 12 5 -14
		mu 0 4 16 14 1 3
		f 4 -18 13 7 -15
		mu 0 4 17 16 3 5
		f 4 -19 14 9 -16
		mu 0 4 18 17 5 7
		f 4 -20 15 11 -13
		mu 0 4 15 18 7 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape3" -p "pCube24";
	rename -uid "9749A6DF-4C2D-769D-C43A-189941E4A699";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube32" -p "teeth";
	rename -uid "361AFD8B-4346-DE06-A6D1-01B8D132AF97";
	setAttr ".t" -type "double3" -2.1112790452622843 1.1211106980399399 4.1001658330871456 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 0.40067469303291281 0.408024170107469 0.37320368557976374 ;
createNode mesh -n "pCubeShape32" -p "pCube32";
	rename -uid "FCA115C1-47AF-894A-61A6-0A8CCBA870D1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0 0.5 1 0.5 0.25 0.5 0.5 0.5 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[1]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[6]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[7]" -type "float3" 5.5511151e-16 -0.024884395 0 ;
	setAttr ".pt[8]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
	setAttr ".pt[11]" -type "float3" -5.5417676e-16 -0.24884394 0 ;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 0 -0.5 0.5 0 0.5 0.5 0 0.5 -0.5
		 0 -0.5 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 8 0 2 9 0 4 10 0 6 11 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 1 0 9 3 0 10 5 0 11 7 0 8 9 1 9 10 1 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 16 -2 -5
		mu 0 4 0 14 16 2
		f 4 1 17 -3 -7
		mu 0 4 2 16 17 4
		f 4 2 18 -4 -9
		mu 0 4 4 17 18 6
		f 4 3 19 -1 -11
		mu 0 4 6 18 15 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 -17 12 5 -14
		mu 0 4 16 14 1 3
		f 4 -18 13 7 -15
		mu 0 4 17 16 3 5
		f 4 -19 14 9 -16
		mu 0 4 18 17 5 7
		f 4 -20 15 11 -13
		mu 0 4 15 18 7 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape8" -p "pCube32";
	rename -uid "AF43734B-4776-3BF0-EC6C-23B290BBF889";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube22" -p "teeth";
	rename -uid "858E83B4-48A8-CD3A-4912-0A8C6775D00F";
	setAttr ".t" -type "double3" -2.6348620660585143 1.2734106297929848 4.0975969596175918 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 0.57634856383108501 1.121746217609465 0.57634856383108501 ;
createNode mesh -n "pCubeShape22" -p "pCube22";
	rename -uid "7B672D2B-452B-0B6F-08DE-72B307D9FD7E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 39 ".uvst[0].uvsp[0:38]" -type "float2" 0.375 0 0.375 1 0.625
		 0 0.625 1 0.375 0.25 0.625 0.25 0.375 0.5 0.125 0.25 0.625 0.5 0.875 0.25 0.375 0.75
		 0.125 0 0.625 0.75 0.875 0 0.5 0.125 0.5 0.375 0.5 0.625 0.5 0.875 0.75 0.125 0.25
		 0.125 0.5 0 0.5 1 0.625 0.125 0.5 0.25 0.375 0.125 0.625 0.375 0.75 0.25 0.5 0.5
		 0.375 0.375 0.25 0.25 0.625 0.625 0.875 0.125 0.5 0.75 0.375 0.625 0.125 0.125 0.625
		 0.875 0.75 0 0.375 0.875 0.25 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt";
	setAttr ".pt[0]" -type "float3" -0.087071866 0 0 ;
	setAttr ".pt[1]" -type "float3" -0.087071866 -1.8626451e-09 -3.7252903e-09 ;
	setAttr ".pt[6]" -type "float3" -0.087071866 0 0 ;
	setAttr ".pt[7]" -type "float3" -0.087071866 -1.8626451e-09 3.7252903e-09 ;
	setAttr ".pt[9]" -type "float3" -0.10716537 0 0 ;
	setAttr ".pt[10]" -type "float3" 0.080373988 -0.20303777 0 ;
	setAttr ".pt[11]" -type "float3" -0.10716537 0 0 ;
	setAttr ".pt[12]" -type "float3" -0.087071866 0 0 ;
	setAttr ".pt[13]" -type "float3" -0.087071866 0 0 ;
	setAttr ".pt[14]" -type "float3" 0.080373988 -0.20303777 0 ;
	setAttr ".pt[15]" -type "float3" -0.10716537 0 0 ;
	setAttr ".pt[17]" -type "float3" -0.10716537 0 0 ;
	setAttr ".pt[20]" -type "float3" -0.10716537 0 0 ;
	setAttr ".pt[22]" -type "float3" -0.10716537 0 0 ;
	setAttr ".pt[23]" -type "float3" 0.15405016 -0.26842302 0 ;
	setAttr ".pt[24]" -type "float3" -0.10716537 0 0 ;
	setAttr ".pt[25]" -type "float3" -0.10716537 0 0 ;
	setAttr -s 26 ".vt[0:25]"  -0.27777779 -0.27777779 0.27777779 0.27777779 -0.27777779 0.27777779
		 -0.27777779 0.27777779 0.27777776 0.27777779 0.27777779 0.27777779 -0.27777779 0.27777776 -0.27777779
		 0.27777779 0.27777779 -0.27777779 -0.27777779 -0.27777779 -0.27777776 0.27777779 -0.27777779 -0.27777779
		 -0.375 0.375 0 0.375 0 -0.375 0 -0.375 -0.375 -0.375 0 -0.375 0.375 -0.375 0 -0.375 -0.375 0
		 0 -0.375 0.375 0.375 0 0.375 0 0.375 0.375 -0.375 0 0.375 0.375 0.375 0 0 0.375 -0.375
		 0 0 0.5 0 0.5 0 0 0 -0.5 0 -0.5 0 0.5 0 0 -0.5 0 0;
	setAttr -s 48 ".ed[0:47]"  0 14 1 14 1 1 2 16 1 16 3 1 4 19 1 19 5 1
		 6 10 1 10 7 1 0 17 1 17 2 1 1 15 1 15 3 1 2 8 1 8 4 1 3 18 1 18 5 1 4 11 1 11 6 1
		 5 9 1 9 7 1 6 13 1 13 0 1 7 12 1 12 1 1 14 20 1 20 17 1 15 20 1 16 20 1 16 21 1 21 8 1
		 18 21 1 19 21 1 19 22 1 22 11 1 9 22 1 10 22 1 10 23 1 23 13 1 12 23 1 14 23 1 12 24 1
		 24 15 1 9 24 1 18 24 1 13 25 1 25 11 1 17 25 1 8 25 1;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 24 25 -9
		mu 0 4 0 20 14 24
		f 4 1 10 26 -25
		mu 0 4 20 2 22 14
		f 4 -27 11 -4 27
		mu 0 4 14 22 5 23
		f 4 -26 -28 -3 -10
		mu 0 4 24 14 23 4
		f 4 2 28 29 -13
		mu 0 4 4 23 15 28
		f 4 3 14 30 -29
		mu 0 4 23 5 25 15
		f 4 -31 15 -6 31
		mu 0 4 15 25 8 27
		f 4 -30 -32 -5 -14
		mu 0 4 28 15 27 6
		f 4 4 32 33 -17
		mu 0 4 6 27 16 33
		f 4 5 18 34 -33
		mu 0 4 27 8 30 16
		f 4 -35 19 -8 35
		mu 0 4 16 30 12 32
		f 4 -34 -36 -7 -18
		mu 0 4 33 16 32 10
		f 4 6 36 37 -21
		mu 0 4 10 32 17 37
		f 4 7 22 38 -37
		mu 0 4 32 12 35 17
		f 4 -39 23 -2 39
		mu 0 4 17 35 3 21
		f 4 -38 -40 -1 -22
		mu 0 4 37 17 21 1
		f 4 -24 40 41 -11
		mu 0 4 2 36 18 22
		f 4 -23 -20 42 -41
		mu 0 4 36 13 31 18
		f 4 -43 -19 -16 43
		mu 0 4 18 31 9 26
		f 4 -42 -44 -15 -12
		mu 0 4 22 18 26 5
		f 4 20 44 45 17
		mu 0 4 11 38 19 34
		f 4 21 8 46 -45
		mu 0 4 38 0 24 19
		f 4 -47 9 12 47
		mu 0 4 19 24 4 29
		f 4 -46 -48 13 16
		mu 0 4 34 19 29 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "3939D347-4588-0E64-D7D4-85AB523C26EF";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode VRaySettingsNode -s -n "vraySettings";
	rename -uid "707BE895-4B2F-3661-4B6D-B9A33D941132";
	setAttr ".gi" yes;
	setAttr ".rfc" yes;
	setAttr ".pe" 2;
	setAttr ".se" 3;
	setAttr ".cmph" 60;
	setAttr ".csdu" 0;
	setAttr ".cfile" -type "string" "";
	setAttr ".cfile2" -type "string" "";
	setAttr ".casf" -type "string" "";
	setAttr ".casf2" -type "string" "";
	setAttr ".st" 3;
	setAttr ".msr" 6;
	setAttr ".aaft" 3;
	setAttr ".aafs" 2;
	setAttr ".dma" 24;
	setAttr ".dmig" 1;
	setAttr ".dmag" 48;
	setAttr ".dam" 1;
	setAttr ".pt" 0.0099999997764825821;
	setAttr ".pmt" 0;
	setAttr ".sd" 1000;
	setAttr ".ss" 0.01;
	setAttr ".pfts" 20;
	setAttr ".ufg" yes;
	setAttr ".fnm" -type "string" "";
	setAttr ".lcfnm" -type "string" "";
	setAttr ".asf" -type "string" "";
	setAttr ".lcasf" -type "string" "";
	setAttr ".urtrshd" yes;
	setAttr ".rtrshd" 2;
	setAttr ".lightCacheType" 1;
	setAttr ".ifile" -type "string" "";
	setAttr ".ifile2" -type "string" "";
	setAttr ".iasf" -type "string" "";
	setAttr ".iasf2" -type "string" "";
	setAttr ".pmfile" -type "string" "";
	setAttr ".pmfile2" -type "string" "";
	setAttr ".pmasf" -type "string" "";
	setAttr ".pmasf2" -type "string" "";
	setAttr ".dmcstd" yes;
	setAttr ".dmculs" no;
	setAttr ".dmcsat" 0.004999999888241291;
	setAttr ".cmtp" 6;
	setAttr ".cmao" 2;
	setAttr ".cg" 2.2000000476837158;
	setAttr ".mtah" yes;
	setAttr ".rgbcs" -1;
	setAttr ".suv" 0;
	setAttr ".srflc" 1;
	setAttr ".srdml" 0;
	setAttr ".seu" yes;
	setAttr ".gormio" yes;
	setAttr ".gocle" yes;
	setAttr ".gopl" 2;
	setAttr ".gopv" yes;
	setAttr ".wi" 960;
	setAttr ".he" 540;
	setAttr ".aspr" 1.7777780294418335;
	setAttr ".productionGPUResizeTextures" 0;
	setAttr ".autolt" 0;
	setAttr ".jpegq" 100;
	setAttr ".vfbOn" yes;
	setAttr ".vfbSA" -type "Int32Array" 1048 0 4182 1 4170 0 1
		 4162 1700143739 1869181810 825893486 1632379436 1936876921 578501154 1936876886 577662825 573321530 1935764579 574235251
		 1953460082 1881287714 1701867378 1701409906 2067407475 1919252002 1852795251 741423650 1835101730 574235237 1696738338 1818386798
		 1949966949 744846706 1886938402 577007201 1818322490 573334899 1634760805 1650549870 975332716 1702195828 1931619453 1814913653
		 1919252833 1530536563 1818436219 577991521 1751327290 779317089 1886611812 1132028268 1701999215 1869182051 573317742 1886351984
		 1769239141 975336293 1702240891 1869181810 825893486 1634607660 975332717 1936278562 2036427888 1919894304 1952671090 577662825
		 1852121644 1701601889 1920219682 573334901 1634760805 975332462 1702195828 2019893804 1684955504 1701601889 1920219682 573334901
		 1718579824 577072233 573321786 1869641829 1701999987 774912546 1931619376 1600484961 1600284530 1835627120 1986622569 975336293
		 1936482662 1763847269 1717527395 577072233 740434490 1667459362 1869770847 1701603686 1952539743 1849303649 745303157 1667459362
		 1852142175 1953392996 578055781 573321274 1886088290 1852793716 1715085942 1702063201 1668227628 1717530473 577072233 977478202
		 1869762607 1835102823 1818838560 1093628773 1685025909 795571045 1635344717 858927154 1936028207 1668445551 1328509797 760170819
		 1718513507 796092265 1635344717 842149938 1717920813 1953264993 1852793647 778529126 1869177711 1864510498 1601136995 1869377379
		 1634759538 975332707 1864510517 1601136995 1886611812 1685676396 1667855973 809116261 1668227628 1985965929 1953981801 1936613746
		 1836216166 741358114 1768124194 1634951023 1852401014 1734438249 1715085925 1702063201 1931619453 1814913653 1919252833 1530536563
		 1818436219 577991521 1751327290 779317089 778462578 1920298867 1868981603 1919247468 1881287714 1701867378 1701409906 2067407475
		 1919252002 1852795251 741423650 1835101730 574235237 1920298835 540697955 574768978 1852121644 1701601889 1920219682 573334901
		 1634760805 975332462 1936482662 1696738405 1851879544 1818386788 1715085925 1702063201 1818370604 1600417381 1701080941 741358114
		 1634758434 2037672291 774978082 1931619376 1601662824 1986359920 578250089 1970435130 1931619429 1952408434 577073273 746401850
		 1651864354 2036427821 577991269 578509626 1935764579 574235251 1868654691 1701981811 1768697446 1836345447 740456553 1869770786
		 1953654128 577987945 1981971258 1769173605 975335023 1847733297 577072481 1766597178 1299474535 740456553 1634624802 577072226
		 1818322490 573334899 1634760805 975332462 1936482662 1696738405 1851879544 1818386788 1949966949 2103801202 1970479660 1634479458
		 1936876921 1566259746 578497661 1935764579 574235251 1868654691 1701981811 1868770918 1936683117 577074281 1919951404 1919250543
		 1936025972 578501154 1936876918 577662825 573321530 1701667182 1126316578 1869639023 1702127987 1696738338 1818386798 1715085925
		 1702063201 2019893804 1684955504 1634089506 744846188 1886938402 1633971809 577072226 1970435130 1646406757 1684956524 1685024095
		 809116261 1886331436 1953063777 825893497 573321262 2003789939 1701998687 2003134838 1920219682 746415477 1651864354 2036427821
		 577991269 2103270202 2066513245 1634493218 975336307 1634231074 1882092399 1701064293 1936289646 740455013 1869770786 1953654128
		 577987945 1981971258 1769173605 975335023 1847733297 577072481 1698964026 1936289646 540701285 1986096757 1634494817 577072226
		 1852121644 1701601889 1634089506 744846188 1886938402 577007201 1818322490 573334899 1634760805 1650549870 975332716 1702195828
		 1818370604 1600417381 1701080941 741358114 1634758434 2037672291 774978082 1629629488 1986622563 1715085925 1702063201 1919951404
		 1952805733 741489186 1920234274 1952935525 825893480 573321262 1768186226 975336309 808333361 2003313196 1701012289 1634887020
		 975332724 1702195828 1701061164 1936289646 1834971749 577070191 746402106 1651864354 2036427821 577991269 2103270202 1663204140
		 1936941420 1663187490 1936679272 778399790 1918986355 778986864 1920298082 1881287714 1701867378 1701409906 2067407475 1919252002
		 1852795251 741423650 1835101730 574235237 1918986323 795764080 1920298050 1696738338 1818386798 1715085925 1702063201 2019893804
		 1684955504 1634089506 744846188 1886938402 1633971809 577072226 1970435130 1646406757 1684956524 1685024095 809116261 1886331436
		 1953063777 825893497 573321262 1918986355 1601070448 1920298082 1836016479 1702131056 1634089506 744846188 1634235170 1852141682
		 1869439327 578055797 808333626 1752375852 1701868129 1634885486 1937074532 774912546 1646406709 1601336684 1768186226 975336309
		 858992177 808464432 959591472 746403121 1651864354 2036427821 577991269 2103270202 1663204140 1936941420 1663187490 1936679272
		 778399790 1936614764 740456550 1869770786 1953654128 577987945 1981971258 1769173605 975335023 1847733297 577072481 1699488314
		 1159754606 1667589734 740455284 1634624802 577072226 1818322490 573334899 1634760805 975332462 1936482662 1696738405 1851879544
		 1818386788 1949966949 744846706 1701601826 1834968174 577070191 573321786 1667330159 578385001 808333626 1818698284 1600483937
		 975335023 1936482662 1730292837 1701994860 2053731167 859447909 741355056 1634494242 2002740594 1751607653 825893492 573321262
		 1869573218 1702322029 1952999273 774912546 808464436 808464432 741751093 1634494242 1952408946 1936028264 1684828008 774978082
		 1713515568 1702128745 1869766514 1769234804 975335023 741355056 1952543522 1952543349 577662825 808333626 1634214444 1635214450
		 1633641842 1818583907 1952543333 975332453 1702195828 1868767788 2002740332 577598049 1818322490 573334899 1702129257 1952670066
		 577074793 1970435130 1931619429 1600484961 1918987367 1949966949 744846706 1801544226 1818713957 1600483937 1734960503 975336552
		 1936482662 1663183973 1952540018 1717919589 1952671078 1701994355 1953265011 1634231135 1818586734 1634089506 744846188 1634624802
		 1600482402 1684106338 975336293 1702195828 1769153068 577987940 573322810 1684106338 1918858085 1952543855 577662825 775237946
		 1931619376 1634038388 1818386283 975336053 808594992 808464432 959590448 1965173816 1734305139 1769234802 975333230 1936482662
		 1730292837 1769234802 1683973998 1769172581 975337844 808333365 1919361580 1852404833 1701601127 1752459118 808532514 573321262
		 1952543335 1600613993 1836019578 775240226 1730292784 1769234802 1935632238 1701867372 774912546 1730292784 1769234802 1935632238
		 1852142196 577270887 808333626 1937056300 1668243301 1937075299 577662825 1818322490 573334899 1818452847 1869181813 2037604206
		 1952804205 576940402 1970435130 1864510565 1970037603 1852795251 1919250527 1953391971 808598050 573321262 1818452847 1869181813
		 1869766510 1769234804 975335023 741355056 1667460898 1769174380 1633644143 975332210 774910001 1965173808 1935631731 1952543331
		 975333475 1936482662 1931619429 1935635043 1701670265 1667854964 1920219682 573334901 1601332083 1953784176 577663589 573321274
		 1601332083 1953265005 1634494313 1667196274 1953396079 741423650 1919120162 1852138591 2037672307 808794658 573321262 1601332083
		 1735288172 975333492 808333365 1668489772 1819500402 1600483439 1769103734 1701015137 774912546 1931619376 2002743907 1752458345
		 1918989919 1668178281 809116261 573321262 1601332083 1684366707 741358114 1919120162 1869576799 842670701 573321262 1601332083
		 1635020658 1852795252 774912546 1931619376 1935635043 1852142196 577270887 808333626 1937056300 1969512293 975336563 1936482662
		 1679961189 1601467253 1953784176 577663589 573321274 1953723748 1852138591 2037672307 808794658 573321262 1953723748 1684107871
		 1601402217 1769103734 1701015137 774912546 1679961136 1601467253 1953786218 975336037 741355056 1937073186 1870290804 975334767
		 741355058 1937073186 1869766516 1769234804 975335023 741355056 1937073186 1953718132 1735288178 975333492 741355057 1634494242
		 1969186162 1868522867 1635021666 1600482403 1734438249 1715085925 1702063201 1818698284 1600483937 1953718895 1701602145 1634560351
		 1885300071 577270881 740434490 1935830818 1835622260 1600481121 1836019578 774978082 1864510512 1601467234 1734438249 1869766501
		 1769234804 975335023 741355056 1935830818 1835622260 1600481121 1701999731 1752459118 774978082 1965173808 1717527923 1702128745
		 1835622258 577070945 1818322490 573334899 1918987367 1835622245 1600481121 1752457584 572668450 1633886764 1634887021 1887007839
		 809116261 1953702444 1868919397 1685024095 809116261 1931619453 1814913653 1919252833 1530536563 2103278941 1663204140 1936941420
		 1663187490 1936679272 1702260526 2036427890 1635021614 740454509 1869770786 1953654128 577987945 1981971258 1769173605 975335023
		 1847733297 577072481 1951605306 577793377 1852121644 1701601889 1634089506 744846188 1886938402 577007201 1818322490 573334899
		 1634760805 1650549870 975332716 1702195828 1953702444 1601203553 1769107304 1818320762 577660777 573321530 1835103347 1702256496
		 1633645682 1852270956 842218018 1953702444 1601203553 1869377379 1530536562 741355057 741355057 1563438641 1953702444 1601203553
		 1953394534 578501154 1936876918 577662825 573321530 1852403568 1769168756 975332730 573321265 1768776038 975337836 1931619376
		 1701607796 741358114 1768257314 578054247 573321274 1701011814 1092762146 1818323314 573340962 1835103347 1953718128 1735289202
		 578501154 1936876918 577662825 573321530 1601659250 1769108595 975333230 573317666 1634625894 1953718124 1735289202 572668450
		 573341053 761427315 1702453612 975336306 1568496987 1377971325 1869178725 1852131182 578501154 1936876918 577662825 573321530
		 1937076077 1868980069 2003790956 1634624863 1684368482 1634089506 744846188 1970236706 1717527923 1869376623 1869635447 1601465961
		 1801678700 975332453 1936482662 1830956133 1702065519 1819240031 1601662828 1852403568 578314100 573321274 1937076077 1868980069
		 2003790956 1768910943 2036298862 2100312610 1699881516 1919247470 2003134806 578501154 1936876918 577662825 573321530 1650552421
		 1918854508 1701080677 1701994354 1852795239 1634089506 744846188 1852142114 1601332580 1768383858 2019520111 758784560 741355057
		 1852142114 1601332580 1768383858 2036297327 758784560 741355057 1852142114 1601332580 1768383858 2019520111 758784561 741355057
		 1852142114 1601332580 1768383858 2036297327 758784561 741355057 1701410338 1701994359 1949966948 744846706 1701410338 1919377271
		 577660261 1970435130 1981951077 1601660265 1702194274 1920219682 573334901 2003134838 1852796255 1715085935 1702063201 1868767788
		 1601335148 1835101283 1869438832 975332708 573323574 1869377379 1818451826 1601203553 975335023 1702195828 1937056300 1768972133
		 1600939384 1701868385 1868526691 1715085934 1702063201 1768956460 1600939384 1868983913 1668246623 577004907 1818322490 573334899
		 1702390128 1852399468 1667198822 1701999215 1684370531 1819239263 577991279 1818322490 746415475 1952661794 1936617321 578501154
		 1936876918 577662825 573321530 1937072496 1380993381 1701339999 1684368227 1634089506 744846188 1936028706 1936020084 1684107871
		 975335273 573321525 1953719668 1601398098 1667590243 577004907 1818322490 573334899 1969382756 1634227047 1735289188 1684107871
		 975335273 573322805 1969382756 1634227047 1735289188 1701339999 1684368227 1634089506 744846188 1702130466 1299146098 1600480367
		 1768186226 926556783 1931619384 1701995892 1685015919 1751342949 1701536613 1715085924 1702063201 32125 ;
	setAttr ".vfbSyncM" yes;
	setAttr ".mSceneName" -type "string" "C:/Users/user/Desktop/에알브알프로젝트/MAYA파일/CardGiver.ma";
	setAttr ".rt_cpuRayBundleSize" 4;
	setAttr ".rt_gpuRayBundleSize" 128;
	setAttr ".rt_maxPaths" 10000;
	setAttr ".rt_engineType" 3;
	setAttr ".rt_gpuResizeTextures" 0;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "82072C36-4BF1-576D-C4B3-3495984C20A9";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "47971D68-4B67-EC6D-0658-80B91414EE3F";
createNode displayLayerManager -n "layerManager";
	rename -uid "91B4B6AE-4613-710F-3D29-C699937EE9D3";
createNode displayLayer -n "defaultLayer";
	rename -uid "ACECA973-427B-5284-0225-B3B8ACEEA833";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "8E377DD0-4142-49CC-6E5B-92B1011AE090";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "05380DDF-4C08-B61D-CFEE-DDB2F10970CE";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "B6F26217-41C3-28BD-7442-FFA7C3E55FF8";
	setAttr ".cuv" 4;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "9CF6E20A-4D7A-8FB6-B92F-DDACAE3D4442";
	setAttr ".dc" -type "componentList" 1 "f[4]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "23739A3F-4E24-2B25-C5B3-6E918EC237CA";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "6FDF0202-4D71-25CC-4542-E4AAE840B7FA";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "4387331C-40C9-B420-F1CF-3FBBE47714CF";
	setAttr ".dc" -type "componentList" 1 "f[2]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "D16E07EB-4CF9-D010-3E49-08838692AC5E";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode polySplit -n "polySplit1";
	rename -uid "94753526-4016-AC2A-4113-EAB6212A1B11";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483648 -2147483647;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "074A56B0-4621-5E5F-EF96-1EB7B5C25071";
	setAttr -s 3 ".e[0:2]"  0.5 0.5 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483646 -2147483642 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "1C92AF92-4BCD-72B5-8A62-178243C6D81B";
	setAttr -s 3 ".e[0:2]"  0.5 0.5 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483648 -2147483638 -2147483647;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "BD40E59C-4272-02FD-5DAB-A7A79DF65F57";
	setAttr -s 3 ".e[0:2]"  0.5 0.5 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483644 -2147483637 -2147483643;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "A4A9058D-491B-FFB1-CFB7-9A90028F2D28";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483641 -2147483632 -2147483640 -2147483627 -2147483639;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "2206BD0E-4581-4621-DAAC-08B6AE3AFA74";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483646 -2147483633 -2147483642 -2147483628 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "8DEF9981-41E8-1C8E-7DAE-DE821F614AEF";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483648 -2147483612 -2147483638 -2147483621 -2147483647;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "96085A1E-406F-1D84-08A2-4B8E69F3B025";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483636 -2147483611 -2147483635 -2147483620 -2147483634;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit9";
	rename -uid "0CABE68D-49C3-DAF9-665F-7FB7FCD46B4E";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483610 -2147483637 -2147483619 -2147483643;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "AF16CFBF-4237-B492-0C80-4CB3388BB92A";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483631 -2147483609 -2147483630 -2147483618 -2147483629;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit11";
	rename -uid "72F6B759-4B55-590A-8680-3286EECEF7C1";
	setAttr -s 9 ".e[0:8]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 9 ".d[0:8]"  -2147483626 -2147483600 -2147483625 -2147483591 -2147483624 -2147483582 
		-2147483623 -2147483573 -2147483622;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "38577E24-48AB-54DE-F5EC-648D45E1925A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[2:5]" -type "float3"  0.041005015 -0.039337616 0
		 -0.041005015 -0.039337616 0 0 0 0 0 0 0;
createNode deleteComponent -n "deleteComponent6";
	rename -uid "BBF47A42-4E29-8888-40BA-8E91DB59FBEF";
	setAttr ".dc" -type "componentList" 2 "f[1]" "f[23]";
createNode deleteComponent -n "deleteComponent7";
	rename -uid "90C75366-4D96-0378-F82C-EBAB2133962F";
	setAttr ".dc" -type "componentList" 1 "f[33:34]";
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "A324B13C-467A-3A11-55E2-DFBD53C731E1";
	setAttr ".ics" -type "componentList" 1 "f[0:35]";
	setAttr ".ix" -type "matrix" 8.8745532423847742 0 0 0 0 10.175787907448061 0 0 0 0 8.8745532423847742 0
		 -0.0073394660078445369 5.0821055589323736 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.0073394659 5.0821056 4.4372768 ;
	setAttr ".rs" 53524;
	setAttr ".lt" -type "double3" 0 0 -10.607552493794078 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.4446160872002318 -0.0057883947916570477 4.4372766211923871 ;
	setAttr ".cbx" -type "double3" 4.4299371551845423 10.169999512656403 4.4372766211923871 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "2C4AB0AC-4D35-C41A-A444-38ABE51CA39B";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[33]" -type "float3" -0.032804012 -0.042913765 0 ;
	setAttr ".tk[38]" -type "float3" 0.032804012 -0.042913765 0 ;
createNode polyNormal -n "polyNormal1";
	rename -uid "94643062-4C67-27A9-62EB-29AB18B2D486";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode polySplit -n "polySplit12";
	rename -uid "45354E37-46B0-80F1-FD08-89A4E68E0A1C";
	setAttr -s 13 ".e[0:12]"  0.60000002 0.60000002 0.60000002 0.60000002
		 0.60000002 0.60000002 0.60000002 0.60000002 0.60000002 0.60000002 0.60000002 0.60000002
		 0.60000002;
	setAttr -s 13 ".d[0:12]"  -2147483584 -2147483583 -2147483582 -2147483581 -2147483562 -2147483580 
		-2147483453 -2147483456 -2147483459 -2147483462 -2147483467 -2147483465 -2147483584;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "BF533D49-42CF-99C8-3387-AC8F7034F55D";
	setAttr -s 13 ".e[0:12]"  0.40000001 0.40000001 0.40000001 0.40000001
		 0.40000001 0.40000001 0.40000001 0.40000001 0.40000001 0.40000001 0.40000001 0.40000001
		 0.40000001;
	setAttr -s 13 ".d[0:12]"  -2147483648 -2147483614 -2147483639 -2147483623 -2147483567 -2147483647 
		-2147483556 -2147483560 -2147483521 -2147483550 -2147483553 -2147483505 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit14";
	rename -uid "C5A2633F-49BE-A931-36BA-9399664F6E34";
	setAttr -s 23 ".e[0:22]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 23 ".d[0:22]"  -2147483646 -2147483503 -2147483398 -2147483504 -2147483499 -2147483501 
		-2147483494 -2147483496 -2147483489 -2147483491 -2147483422 -2147483464 -2147483645 -2147483432 -2147483579 -2147483629 -2147483588 -2147483643 
		-2147483597 -2147483634 -2147483605 -2147483408 -2147483646;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit15";
	rename -uid "754988D2-492E-A9DD-ABD4-709C244551FA";
	setAttr -s 23 ".e[0:22]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 23 ".d[0:22]"  -2147483619 -2147483549 -2147483399 -2147483552 -2147483544 -2147483542 
		-2147483545 -2147483547 -2147483531 -2147483533 -2147483423 -2147483461 -2147483615 -2147483431 -2147483578 -2147483616 -2147483587 -2147483617 
		-2147483596 -2147483618 -2147483604 -2147483407 -2147483619;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit16";
	rename -uid "EFDF823C-4EE0-D7D8-A957-C587F01D5CB6";
	setAttr -s 23 ".e[0:22]"  0.69999999 0.69999999 0.30000001 0.69999999
		 0.69999999 0.69999999 0.69999999 0.69999999 0.69999999 0.69999999 0.30000001 0.69999999
		 0.69999999 0.69999999 0.69999999 0.69999999 0.69999999 0.69999999 0.69999999 0.69999999
		 0.69999999 0.69999999 0.69999999;
	setAttr -s 23 ".d[0:22]"  -2147483619 -2147483549 -2147483350 -2147483552 -2147483544 -2147483542 
		-2147483545 -2147483547 -2147483531 -2147483533 -2147483342 -2147483461 -2147483615 -2147483431 -2147483578 -2147483616 -2147483587 -2147483617 
		-2147483596 -2147483618 -2147483604 -2147483407 -2147483619;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit17";
	rename -uid "84516FAF-4F78-B9CA-8FE5-589E448BFAEF";
	setAttr -s 23 ".e[0:22]"  0.69999999 0.30000001 0.30000001 0.30000001
		 0.30000001 0.30000001 0.30000001 0.30000001 0.69999999 0.30000001 0.30000001 0.30000001
		 0.30000001 0.30000001 0.30000001 0.30000001 0.30000001 0.30000001 0.30000001 0.30000001
		 0.30000001 0.30000001 0.69999999;
	setAttr -s 23 ".d[0:22]"  -2147483422 -2147483387 -2147483388 -2147483389 -2147483390 -2147483391 
		-2147483392 -2147483393 -2147483398 -2147483395 -2147483396 -2147483375 -2147483376 -2147483377 -2147483378 -2147483379 -2147483380 -2147483381 
		-2147483382 -2147483383 -2147483384 -2147483385 -2147483422;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "3CC04D01-4110-7089-6511-299B6B0FEFB9";
	setAttr ".ics" -type "componentList" 8 "f[38:39]" "f[41]" "f[52]" "f[56]" "f[59]" "f[63]" "f[115]" "f[139:146]";
	setAttr ".ix" -type "matrix" 8.8745532423847742 0 0 0 0 10.175787907448061 0 0 0 0 8.8745532423847742 0
		 -0.0073394660078445369 5.0821055589323736 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.0073394659 2.5381587 4.4372773 ;
	setAttr ".rs" 41067;
	setAttr ".lt" -type "double3" 0 0 -6.3378145955075142 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.0008888482526679 1.6477773827783424 4.437277150156981 ;
	setAttr ".cbx" -type "double3" 3.9862099162369784 3.428540084624486 4.437277150156981 ;
createNode polyDisc -n "polyDisc1";
	rename -uid "8879FB6A-454A-6436-750B-BAA887E3EB0A";
createNode polyPlane -n "polyPlane1";
	rename -uid "B2D8A26A-4114-47AD-90F8-59991D1FB55C";
	setAttr ".sw" 2;
	setAttr ".sh" 2;
	setAttr ".cuv" 2;
createNode polySplit -n "polySplit18";
	rename -uid "CB28A616-4449-DF81-A7B9-A791BF3B70B1";
	setAttr -s 2 ".e[0:1]"  0.69999999 0.69999999;
	setAttr -s 2 ".d[0:1]"  -2147483642 -2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit19";
	rename -uid "46F0EDAB-4C29-8432-A0D9-7DAE90199DAD";
	setAttr -s 2 ".e[0:1]"  0.30000001 0.69999999;
	setAttr -s 2 ".d[0:1]"  -2147483637 -2147483639;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent8";
	rename -uid "DED8EDCE-43C3-4CA0-618B-90AA35E1F0FE";
	setAttr ".dc" -type "componentList" 1 "f[2]";
createNode deleteComponent -n "deleteComponent9";
	rename -uid "93D57E6D-4EFC-6505-AEB4-2496D88B171E";
	setAttr ".dc" -type "componentList" 1 "f[2]";
createNode polySplit -n "polySplit20";
	rename -uid "FCC69F52-4E3A-7659-5A61-F9856AD93396";
	setAttr -s 5 ".e[0:4]"  0.528404 0.38536999 0.410072 0.62763101 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483642 -2147483643 -2147483645 -2147483641 -2147483639;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent10";
	rename -uid "CCD1259E-4F7E-EE48-0849-5E986EC50016";
	setAttr ".dc" -type "componentList" 1 "f[5]";
createNode deleteComponent -n "deleteComponent11";
	rename -uid "D969E5A7-4CAB-B15F-A4CD-909F7E5D1256";
	setAttr ".dc" -type "componentList" 1 "f[5]";
createNode deleteComponent -n "deleteComponent12";
	rename -uid "017EB327-4BA5-9388-CFB0-A989D14AB68E";
	setAttr ".dc" -type "componentList" 1 "f[5]";
createNode deleteComponent -n "deleteComponent13";
	rename -uid "F8B0473E-4313-7CB6-E37C-4D975361AF66";
	setAttr ".dc" -type "componentList" 1 "f[4]";
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "4BFC9D43-4303-E104-A152-9EAB5D599734";
	setAttr ".ics" -type "componentList" 1 "f[0:3]";
	setAttr ".ix" -type "matrix" 2.4229330277447358 0 0 0 0 0 2.4229330277447358 0 0 -2.4229330277447358 0 0
		 0 5.0967235778349211 9.3336149235491046 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 5.3451176 9.3336153 ;
	setAttr ".rs" 49191;
	setAttr ".lt" -type "double3" -5.5511151231257827e-17 8.8817841970012523e-16 0.30587963786153516 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2114665138723679 4.3820455227228763 9.3336149235491046 ;
	setAttr ".cbx" -type "double3" 1.2114665138723679 6.3081900917072886 9.3336149235491046 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "BFB1087B-465B-FDB1-9AF9-FD95585D8CDB";
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
	setAttr ".ix" -type "matrix" 1.5949278892527974 0 0 0 0 0 1.5949278892527974 0 0 -1.5949278892527974 0 0
		 2.0192522150767314 6.9291624225651116 5.8235294117647047 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.033654202 6.9291625 5.8235292 ;
	setAttr ".rs" 51441;
	setAttr ".lt" -type "double3" 0 0 0.18931564016827807 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.42432432582393398 5.3342345333123138 5.8235294117647047 ;
	setAttr ".cbx" -type "double3" 3.6141801043295287 8.5240903118179094 5.8235294117647047 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "5E5D85FE-4724-E4F3-108A-6ABB8009DFEA";
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
	setAttr ".ix" -type "matrix" 1.5949278892527974 0 0 0 0 0 1.5949278892527974 0 0 -1.5949278892527974 0 0
		 -2.086560622245953 6.9291624225651116 5.8235294117647047 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.033654202 6.9291625 5.8235292 ;
	setAttr ".rs" 51415;
	setAttr ".lt" -type "double3" 0 0 0.18931564016827807 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.6814885114987503 5.3342345333123138 5.8235294117647047 ;
	setAttr ".cbx" -type "double3" -0.49163273299315557 8.5240903118179094 5.8235294117647047 ;
createNode polyPlane -n "polyPlane2";
	rename -uid "D1DA20A5-417E-756E-51EB-A082CC7CFC1D";
	setAttr ".sw" 2;
	setAttr ".sh" 2;
	setAttr ".cuv" 2;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "917275CB-4783-2905-FF97-16BD5EB977CA";
	setAttr ".ics" -type "componentList" 1 "f[0:3]";
	setAttr ".ix" -type "matrix" 0.70710678118654746 0 0.70710678118654757 0 0 1 0 0
		 -3.4117209591082998 0 3.4117209591082993 0 14.99625535522147 0 -0.019979851322506417 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 15.006173 0 -0.018521599 ;
	setAttr ".rs" 43899;
	setAttr ".lt" -type "double3" 0 0 0.15873429839712028 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 12.936841485074046 0 -2.0793937214699301 ;
	setAttr ".cbx" -type "double3" 17.055669225368895 0 2.0394340188249171 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "C2F26464-4653-CDAB-CE72-F784C1D0ED29";
	setAttr ".ics" -type "componentList" 1 "f[0:3]";
	setAttr ".ix" -type "matrix" 0.70710678118654746 0 -0.70710678118654757 0 0 1 0 0
		 3.4117209591082998 0 3.4117209591082993 0 15.01608997912388 0 -0.017063346524968086 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 15.006173 0 -0.018521599 ;
	setAttr ".rs" 54571;
	setAttr ".lt" -type "double3" 0 0 0.15873429839712028 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 12.956676108976456 0 -2.0764772166723917 ;
	setAttr ".cbx" -type "double3" 17.075503849271303 0 2.0423505236224555 ;
createNode polyCube -n "polyCube2";
	rename -uid "A85AE14D-4DD4-EB59-3A23-B4A6B80F81DC";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube3";
	rename -uid "5DD655CD-4F5D-5CC7-9B05-5E95BF4D8315";
	setAttr ".cuv" 4;
createNode polySmoothFace -n "polySmoothFace1";
	rename -uid "F405083A-4E21-AAAA-5A98-E7B6D75B88BB";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "35189EC7-4A6D-62C1-B5F8-53BC049C23B2";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1360\n            -height 732\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n"
		+ "            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1360\\n    -height 732\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1360\\n    -height 732\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "84AB1084-4AB9-BBE9-D106-F5B6EB14C347";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polySplit -n "polySplit21";
	rename -uid "E3005DE0-4814-9649-08A1-B3A322F02450";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483648 -2147483647 -2147483646 -2147483645 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit22";
	rename -uid "68FA67E5-421A-9237-7EE6-AE819845001C";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483648 -2147483647 -2147483646 -2147483645 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit23";
	rename -uid "9577AF41-4B66-18F7-2224-2AA2EE33674B";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483648 -2147483647 -2147483646 -2147483645 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit24";
	rename -uid "20E2A9C0-4E18-9D30-0308-7CA0F5F54921";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483648 -2147483647 -2147483646 -2147483645 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit25";
	rename -uid "15ACC9CA-465C-8633-3662-EDAEA6B16217";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483648 -2147483647 -2147483646 -2147483645 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit26";
	rename -uid "781D02C8-40E0-718F-3779-CFA6520C3DA0";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483648 -2147483647 -2147483646 -2147483645 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit27";
	rename -uid "E931EC13-4224-8D98-1366-7B8D04CFC3C8";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483648 -2147483647 -2147483646 -2147483645 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode lambert -n "lambert2";
	rename -uid "D7D5D36C-433D-9FF0-A0D7-AC9E47A4405F";
	setAttr ".c" -type "float3" 0.233 0.10885686 0.025397006 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "2A7B00B4-435B-4B74-AD40-56B35FFCDAD7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "A1A08446-4AB2-F7B5-4226-149D7AB0D85A";
createNode lambert -n "lambert3";
	rename -uid "22F1430A-423D-4297-5FAA-C3924F52BF7D";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "AB260EC7-49F3-EB67-98D9-0CA63312AF34";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "00D31CDC-4FB2-7CE5-6ABB-1794544B448E";
createNode lambert -n "lambert4";
	rename -uid "11B3506E-4515-1C0F-6AB1-0FA846B4D097";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "lambert4SG";
	rename -uid "C65E1F54-4567-FA0D-7D42-559CCCF0FEBD";
	setAttr ".ihi" 0;
	setAttr -s 22 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "CE5E67AA-419C-8622-0772-168088DE2940";
createNode lambert -n "lambert5";
	rename -uid "43B123FA-41F9-3DA0-13A8-3092BD4A1ED2";
	setAttr ".c" -type "float3" 0.045000002 0.02309587 0.0083699999 ;
createNode shadingEngine -n "lambert5SG";
	rename -uid "59C912A1-4B3A-E785-ADF7-C8AD037C6620";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "E9855092-45A4-3871-0479-5697DAAC4430";
createNode polySplit -n "polySplit28";
	rename -uid "9E3D72DB-47EB-3998-8992-2D92ABBB1FCC";
	setAttr -s 43 ".e[0:42]"  0.2 0.2 0.2 0.2 0.2 0.2 0.80000001 0.2 0.2
		 0.80000001 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.80000001 0.2 0.80000001 0.2 0.2 0.80000001
		 0.80000001 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2
		 0.2;
	setAttr -s 43 ".d[0:42]"  -2147483575 -2147483536 -2147483565 -2147483345 -2147483301 -2147483568 
		-2147483255 -2147483389 -2147483521 -2147483412 -2147483520 -2147483514 -2147483516 -2147483509 -2147483511 -2147483504 -2147483506 -2147483435 
		-2147483480 -2147483378 -2147483244 -2147483482 -2147483290 -2147483334 -2147483477 -2147483474 -2147483471 -2147483469 -2147483441 -2147483540 
		-2147483543 -2147483486 -2147483487 -2147483529 -2147483527 -2147483533 -2147483552 -2147483550 -2147483554 -2147483573 -2147483418 -2147483571 
		-2147483575;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyEditEdgeFlow -n "polyEditEdgeFlow1";
	rename -uid "8B127C8E-46DD-4991-45AF-938B8FBD7B7B";
	setAttr ".ics" -type "componentList" 3 "e[303:324]" "e[471]" "e[491]";
createNode polyTweak -n "polyTweak3";
	rename -uid "2C46E570-4AF3-8CD5-E501-AEB9F255DFA4";
	setAttr ".uopa" yes;
	setAttr -s 174 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.075363226 0 ;
	setAttr ".tk[1]" -type "float3" 0 0.075363226 0 ;
	setAttr ".tk[4]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[8]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[11]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[14]" -type "float3" -0.033333343 0 0 ;
	setAttr ".tk[16]" -type "float3" 0 0.038823474 0 ;
	setAttr ".tk[18]" -type "float3" 0.033333343 0 0 ;
	setAttr ".tk[19]" -type "float3" -0.022222251 0 0 ;
	setAttr ".tk[20]" -type "float3" 0.022222251 0 0 ;
	setAttr ".tk[21]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[25]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[27]" -type "float3" 0.022222225 0.0091349455 0 ;
	setAttr ".tk[29]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[31]" -type "float3" -0.022222225 0.0091349455 0 ;
	setAttr ".tk[33]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[45]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[46]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[47]" -type "float3" 0 4.4703484e-08 1.4901161e-07 ;
	setAttr ".tk[48]" -type "float3" 0 -2.9802322e-08 1.4901161e-07 ;
	setAttr ".tk[49]" -type "float3" -0.022222251 0 1.4901161e-07 ;
	setAttr ".tk[50]" -type "float3" 0 0 1.4901161e-07 ;
	setAttr ".tk[51]" -type "float3" 0 0 1.4901161e-07 ;
	setAttr ".tk[52]" -type "float3" 0 0 1.4901161e-07 ;
	setAttr ".tk[53]" -type "float3" 0 0 1.4901161e-07 ;
	setAttr ".tk[54]" -type "float3" 0 0 1.4901161e-07 ;
	setAttr ".tk[55]" -type "float3" 0 0 1.4901161e-07 ;
	setAttr ".tk[56]" -type "float3" 0 0 1.4901161e-07 ;
	setAttr ".tk[57]" -type "float3" 0 0 1.4901161e-07 ;
	setAttr ".tk[58]" -type "float3" 0 0 1.4901161e-07 ;
	setAttr ".tk[59]" -type "float3" 0 0 1.4901161e-07 ;
	setAttr ".tk[60]" -type "float3" 0 0 1.4901161e-07 ;
	setAttr ".tk[61]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[62]" -type "float3" 0 4.4703484e-08 1.4901161e-07 ;
	setAttr ".tk[63]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[64]" -type "float3" 0 -2.9802322e-08 1.4901161e-07 ;
	setAttr ".tk[65]" -type "float3" 0 0 1.4901161e-07 ;
	setAttr ".tk[66]" -type "float3" 0 0 1.4901161e-07 ;
	setAttr ".tk[67]" -type "float3" 0 0 1.4901161e-07 ;
	setAttr ".tk[68]" -type "float3" 0 0 1.4901161e-07 ;
	setAttr ".tk[69]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[70]" -type "float3" 0 4.4703484e-08 1.4901161e-07 ;
	setAttr ".tk[71]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[72]" -type "float3" 0 4.4703484e-08 1.4901161e-07 ;
	setAttr ".tk[73]" -type "float3" 0 -2.2351742e-08 1.4901161e-07 ;
	setAttr ".tk[74]" -type "float3" -0.033333343 -2.2351742e-08 1.4901161e-07 ;
	setAttr ".tk[75]" -type "float3" 0.022222225 0.0091349231 1.4901161e-07 ;
	setAttr ".tk[76]" -type "float3" 0 -2.2351742e-08 1.4901161e-07 ;
	setAttr ".tk[77]" -type "float3" -0.022222225 0.0091349231 1.4901161e-07 ;
	setAttr ".tk[78]" -type "float3" 0 0.038823452 1.4901161e-07 ;
	setAttr ".tk[79]" -type "float3" 0 -2.2351742e-08 1.4901161e-07 ;
	setAttr ".tk[80]" -type "float3" 0 -2.2351742e-08 1.4901161e-07 ;
	setAttr ".tk[81]" -type "float3" 0 0.075363226 1.4901161e-07 ;
	setAttr ".tk[82]" -type "float3" 0 -3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[83]" -type "float3" 0 -3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[84]" -type "float3" 0 -3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[85]" -type "float3" 0 -3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[86]" -type "float3" 0 -3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[87]" -type "float3" 0 -3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[88]" -type "float3" 0 -3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[89]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[90]" -type "float3" 0 -2.9802322e-08 1.4901161e-07 ;
	setAttr ".tk[91]" -type "float3" 0.022222251 0 1.4901161e-07 ;
	setAttr ".tk[92]" -type "float3" 0 0.075363226 1.4901161e-07 ;
	setAttr ".tk[93]" -type "float3" 0 0 1.4901161e-07 ;
	setAttr ".tk[94]" -type "float3" 0.033333343 -2.2351742e-08 1.4901161e-07 ;
	setAttr ".tk[95]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[96]" -type "float3" 0 -2.9802322e-08 1.4901161e-07 ;
	setAttr ".tk[97]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[103]" -type "float3" 0 -2.9802322e-08 1.4901161e-07 ;
	setAttr ".tk[104]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[105]" -type "float3" 0 -2.2351742e-08 1.4901161e-07 ;
	setAttr ".tk[106]" -type "float3" 0 0 1.4901161e-07 ;
	setAttr ".tk[107]" -type "float3" 0 0 1.4901161e-07 ;
	setAttr ".tk[108]" -type "float3" 0 -3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[109]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[115]" -type "float3" 0 -2.9802322e-08 1.4901161e-07 ;
	setAttr ".tk[116]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[117]" -type "float3" 0 -2.2351742e-08 1.4901161e-07 ;
	setAttr ".tk[118]" -type "float3" 0 0 1.4901161e-07 ;
	setAttr ".tk[119]" -type "float3" 0 0 1.4901161e-07 ;
	setAttr ".tk[120]" -type "float3" 0 -3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[122]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[123]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[124]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[125]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[126]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[127]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[128]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[129]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[130]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[131]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[132]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[143]" -type "float3" -0.022222251 0 0 ;
	setAttr ".tk[144]" -type "float3" -0.022222251 3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[145]" -type "float3" 0 3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[146]" -type "float3" 0 3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[147]" -type "float3" 0 3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[148]" -type "float3" 0 3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[149]" -type "float3" 0 3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[150]" -type "float3" 0 3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[151]" -type "float3" 0 3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[152]" -type "float3" 0 3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[153]" -type "float3" 0 3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[154]" -type "float3" 0.022222251 3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[155]" -type "float3" 0.022222251 0 0 ;
	setAttr ".tk[165]" -type "float3" -0.022222251 0 0 ;
	setAttr ".tk[166]" -type "float3" -0.022222251 -3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[167]" -type "float3" 0 -3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[168]" -type "float3" 0 -3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[169]" -type "float3" 0 -3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[170]" -type "float3" 0 -3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[171]" -type "float3" 0 -3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[172]" -type "float3" 0 -3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[173]" -type "float3" 0 -3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[174]" -type "float3" 0 -3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[175]" -type "float3" 0 -3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[176]" -type "float3" 0.022222251 -3.7252903e-09 1.4901161e-07 ;
	setAttr ".tk[177]" -type "float3" 0.022222251 0 0 ;
	setAttr ".tk[187]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[188]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[189]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[190]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[191]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[192]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[193]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[194]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[195]" -type "float3" 0 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[196]" -type "float3" -0.011111114 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[197]" -type "float3" -0.011111114 0 0 ;
	setAttr ".tk[207]" -type "float3" 0.011111114 0 0 ;
	setAttr ".tk[208]" -type "float3" 0.011111114 -1.4901161e-08 1.4901161e-07 ;
	setAttr ".tk[236]" -type "float3" 2.9802322e-08 -7.4505806e-09 0 ;
	setAttr ".tk[237]" -type "float3" -0.03333332 -1.4901161e-08 0 ;
	setAttr ".tk[238]" -type "float3" 2.2351742e-08 0 0 ;
	setAttr ".tk[239]" -type "float3" -0.022222221 3.7252903e-09 0 ;
	setAttr ".tk[240]" -type "float3" -0.022222221 1.1175871e-08 0 ;
	setAttr ".tk[241]" -type "float3" -0.022222221 7.4505806e-09 0 ;
	setAttr ".tk[242]" -type "float3" -0.011111092 0 0 ;
	setAttr ".tk[243]" -type "float3" 2.2351742e-08 0 0 ;
	setAttr ".tk[244]" -type "float3" 2.2351742e-08 0.075363204 0 ;
	setAttr ".tk[245]" -type "float3" 0 3.7252903e-08 0 ;
	setAttr ".tk[246]" -type "float3" 0 3.7252903e-08 0 ;
	setAttr ".tk[247]" -type "float3" 1.4901161e-08 3.7252903e-08 0 ;
	setAttr ".tk[248]" -type "float3" 0 3.7252903e-08 0 ;
	setAttr ".tk[249]" -type "float3" -8.8817842e-16 3.7252903e-08 0 ;
	setAttr ".tk[250]" -type "float3" -1.1175871e-08 3.7252903e-08 0 ;
	setAttr ".tk[251]" -type "float3" -1.4901161e-08 3.7252903e-08 0 ;
	setAttr ".tk[252]" -type "float3" 7.4505806e-09 3.7252903e-08 0 ;
	setAttr ".tk[253]" -type "float3" -7.4505806e-09 3.7252903e-08 0 ;
	setAttr ".tk[254]" -type "float3" -2.9802322e-08 0.075363204 0 ;
	setAttr ".tk[255]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".tk[256]" -type "float3" 0.011111084 0 0 ;
	setAttr ".tk[257]" -type "float3" 0.022222221 7.4505806e-09 0 ;
	setAttr ".tk[258]" -type "float3" 0.022222221 1.1175871e-08 0 ;
	setAttr ".tk[259]" -type "float3" 0.022222221 3.7252903e-09 0 ;
	setAttr ".tk[260]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".tk[261]" -type "float3" 0.033333313 -1.4901161e-08 0 ;
	setAttr ".tk[262]" -type "float3" -2.9802322e-08 -7.4505806e-09 0 ;
	setAttr ".tk[263]" -type "float3" -4.4703484e-08 3.7252903e-08 0 ;
	setAttr ".tk[264]" -type "float3" -2.2351742e-08 1.4901161e-08 0 ;
	setAttr ".tk[265]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".tk[266]" -type "float3" -1.4901161e-08 -1.4901161e-08 0 ;
	setAttr ".tk[267]" -type "float3" 0 -2.2351742e-08 0 ;
	setAttr ".tk[268]" -type "float3" -7.4505806e-09 -7.4505806e-09 0 ;
	setAttr ".tk[269]" -type "float3" -0.022222234 0.0091349306 0 ;
	setAttr ".tk[270]" -type "float3" -8.8817842e-16 0.038823459 0 ;
	setAttr ".tk[271]" -type "float3" 0.022222225 0.0091349306 0 ;
	setAttr ".tk[272]" -type "float3" -3.7252903e-09 -7.4505806e-09 0 ;
	setAttr ".tk[273]" -type "float3" -1.1175871e-08 -2.2351742e-08 0 ;
	setAttr ".tk[274]" -type "float3" 7.4505806e-09 -1.4901161e-08 0 ;
	setAttr ".tk[275]" -type "float3" -7.4505806e-09 -1.4901161e-08 0 ;
	setAttr ".tk[276]" -type "float3" 2.2351742e-08 1.4901161e-08 0 ;
	setAttr ".tk[277]" -type "float3" 0 3.7252903e-08 0 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "496F7BFF-40C5-F174-27A6-C09888F8EEF9";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -72.619044733426051 -72.619044733426065 ;
	setAttr ".tgi[0].vh" -type "double2" 73.809520876596963 71.428568590255139 ;
	setAttr -s 8 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 61.428569793701172;
	setAttr ".tgi[0].ni[0].y" 137.14285278320312;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -245.71427917480469;
	setAttr ".tgi[0].ni[1].y" 137.14285278320312;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 61.428569793701172;
	setAttr ".tgi[0].ni[2].y" 137.14285278320312;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 61.428569793701172;
	setAttr ".tgi[0].ni[3].y" 137.14285278320312;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" -245.71427917480469;
	setAttr ".tgi[0].ni[4].y" 137.14285278320312;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" -245.71427917480469;
	setAttr ".tgi[0].ni[5].y" 137.14285278320312;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" 61.428569793701172;
	setAttr ".tgi[0].ni[6].y" 137.14285278320312;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" -245.71427917480469;
	setAttr ".tgi[0].ni[7].y" 137.14285278320312;
	setAttr ".tgi[0].ni[7].nvs" 1923;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 6 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 9 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
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
connectAttr "polyEditEdgeFlow1.out" "headShape.i";
connectAttr "polyExtrudeFace3.out" "noseShape.i";
connectAttr "polyExtrudeFace5.out" "pDiscShape1.i";
connectAttr "polyExtrudeFace6.out" "pPlaneShape3.i";
connectAttr "polyExtrudeFace7.out" "pPlaneShape2.i";
connectAttr "polyExtrudeFace4.out" "pDiscShape2.i";
connectAttr "polySmoothFace1.out" "pCubeShape20.i";
connectAttr "polySplit21.out" "pCubeShape7.i";
connectAttr "polySplit22.out" "pCubeShape6.i";
connectAttr "polySplit23.out" "pCubeShape3.i";
connectAttr "polySplit24.out" "pCubeShape2.i";
connectAttr "polySplit25.out" "pCubeShape4.i";
connectAttr "polySplit26.out" "pCubeShape5.i";
connectAttr "polySplit27.out" "pCubeShape8.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "polyTweak2.out" "polyExtrudeFace1.ip";
connectAttr "headShape.wm" "polyExtrudeFace1.mp";
connectAttr "deleteComponent7.og" "polyTweak2.ip";
connectAttr "polyExtrudeFace1.out" "polyNormal1.ip";
connectAttr "polyNormal1.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polySplit15.ip";
connectAttr "polySplit15.out" "polySplit16.ip";
connectAttr "polySplit16.out" "polySplit17.ip";
connectAttr "polySplit17.out" "polyExtrudeFace2.ip";
connectAttr "headShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyPlane1.out" "polySplit18.ip";
connectAttr "polySplit18.out" "polySplit19.ip";
connectAttr "polySplit19.out" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "polySplit20.ip";
connectAttr "polySplit20.out" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "deleteComponent12.ig";
connectAttr "deleteComponent12.og" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "polyExtrudeFace3.ip";
connectAttr "noseShape.wm" "polyExtrudeFace3.mp";
connectAttr "polySurfaceShape1.o" "polyExtrudeFace4.ip";
connectAttr "pDiscShape2.wm" "polyExtrudeFace4.mp";
connectAttr "polyDisc1.output" "polyExtrudeFace5.ip";
connectAttr "pDiscShape1.wm" "polyExtrudeFace5.mp";
connectAttr "|cardgiver|eyes|pPlane3|polySurfaceShape2.o" "polyExtrudeFace6.ip";
connectAttr "pPlaneShape3.wm" "polyExtrudeFace6.mp";
connectAttr "polyPlane2.out" "polyExtrudeFace7.ip";
connectAttr "pPlaneShape2.wm" "polyExtrudeFace7.mp";
connectAttr "polyCube3.out" "polySmoothFace1.ip";
connectAttr "|cardgiver|teeth|pCube7|polySurfaceShape3.o" "polySplit21.ip";
connectAttr "|cardgiver|teeth|pCube6|polySurfaceShape4.o" "polySplit22.ip";
connectAttr "|cardgiver|teeth|pCube3|polySurfaceShape5.o" "polySplit23.ip";
connectAttr "polyCube2.out" "polySplit24.ip";
connectAttr "|cardgiver|teeth|pCube4|polySurfaceShape6.o" "polySplit25.ip";
connectAttr "|cardgiver|teeth|pCube5|polySurfaceShape7.o" "polySplit26.ip";
connectAttr "|cardgiver|teeth|pCube8|polySurfaceShape8.o" "polySplit27.ip";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "headShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "pPlaneShape2.iog" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape3.iog" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape5.iog" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape4.iog" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "lambert4.oc" "lambert4SG.ss";
connectAttr "pDiscShape2.iog" "lambert4SG.dsm" -na;
connectAttr "pDiscShape1.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape22.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape32.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape24.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape25.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape26.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape27.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape28.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape29.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape30.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape31.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape23.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape21.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape8.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape5.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape4.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape2.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape3.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape6.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape7.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape20.iog" "lambert4SG.dsm" -na;
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "lambert4.msg" "materialInfo3.m";
connectAttr "lambert5.oc" "lambert5SG.ss";
connectAttr "noseShape.iog" "lambert5SG.dsm" -na;
connectAttr "lambert5SG.msg" "materialInfo4.sg";
connectAttr "lambert5.msg" "materialInfo4.m";
connectAttr "polyExtrudeFace2.out" "polySplit28.ip";
connectAttr "polyTweak3.out" "polyEditEdgeFlow1.ip";
connectAttr "polySplit28.out" "polyTweak3.ip";
connectAttr "lambert3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "lambert4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "lambert4SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "lambert2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "lambert3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "lambert5SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "lambert5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert5.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of CardGiver.ma
