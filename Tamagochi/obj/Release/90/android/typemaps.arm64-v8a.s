	.arch	armv8-a
	.file	"typemaps.arm64-v8a.s"

/* map_module_count: START */
	.section	.rodata.map_module_count,"a",@progbits
	.type	map_module_count, @object
	.p2align	2
	.global	map_module_count
map_module_count:
	.size	map_module_count, 4
	.word	13
/* map_module_count: END */

/* java_type_count: START */
	.section	.rodata.java_type_count,"a",@progbits
	.type	java_type_count, @object
	.p2align	2
	.global	java_type_count
java_type_count:
	.size	java_type_count, 4
	.word	333
/* java_type_count: END */

/* java_name_width: START */
	.section	.rodata.java_name_width,"a",@progbits
	.type	java_name_width, @object
	.p2align	2
	.global	java_name_width
java_name_width:
	.size	java_name_width, 4
	.word	82
/* java_name_width: END */

	.include	"typemaps.shared.inc"
	.include	"typemaps.arm64-v8a-managed.inc"

/* Managed to Java map: START */
	.section	.data.rel.map_modules,"aw",@progbits
	.type	map_modules, @object
	.p2align	3
	.global	map_modules
map_modules:
	/* module_uuid: 59210923-e675-48cc-8553-14c494ef79f6 */
	.byte	0x23, 0x09, 0x21, 0x59, 0x75, 0xe6, 0xcc, 0x48, 0x85, 0x53, 0x14, 0xc4, 0x94, 0xef, 0x79, 0xf6
	/* entry_count */
	.word	1
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module0_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Plugin.CurrentActivity */
	.xword	.L.map_aname.0
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 5b459123-67cc-484d-8df8-7210de5e32a8 */
	.byte	0x23, 0x91, 0x45, 0x5b, 0xcc, 0x67, 0x4d, 0x48, 0x8d, 0xf8, 0x72, 0x10, 0xde, 0x5e, 0x32, 0xa8
	/* entry_count */
	.word	9
	/* duplicate_count */
	.word	3
	/* map */
	.xword	module1_managed_to_java
	/* duplicate_map */
	.xword	module1_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.Fragment */
	.xword	.L.map_aname.1
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 0d469737-7cab-4b5d-9e93-be53a4f30d70 */
	.byte	0x37, 0x97, 0x46, 0x0d, 0xab, 0x7c, 0x5d, 0x4b, 0x9e, 0x93, 0xbe, 0x53, 0xa4, 0xf3, 0x0d, 0x70
	/* entry_count */
	.word	3
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module2_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Xamarin.Android.Support.DrawerLayout */
	.xword	.L.map_aname.2
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: b8133439-8cc7-4079-a9a3-fd61f42c670b */
	.byte	0x39, 0x34, 0x13, 0xb8, 0xc7, 0x8c, 0x79, 0x40, 0xa9, 0xa3, 0xfd, 0x61, 0xf4, 0x2c, 0x67, 0x0b
	/* entry_count */
	.word	5
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module3_managed_to_java
	/* duplicate_map */
	.xword	module3_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.Loader */
	.xword	.L.map_aname.3
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: e6cb6943-6f5b-455f-a0a6-6dc46ca4b792 */
	.byte	0x43, 0x69, 0xcb, 0xe6, 0x5b, 0x6f, 0x5f, 0x45, 0xa0, 0xa6, 0x6d, 0xc4, 0x6c, 0xa4, 0xb7, 0x92
	/* entry_count */
	.word	2
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module4_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Plugin.Geolocator */
	.xword	.L.map_aname.4
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: e8f15155-95b8-49a0-817f-93d3cceede92 */
	.byte	0x55, 0x51, 0xf1, 0xe8, 0xb8, 0x95, 0xa0, 0x49, 0x81, 0x7f, 0x93, 0xd3, 0xcc, 0xee, 0xde, 0x92
	/* entry_count */
	.word	2
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module5_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Tamagochi */
	.xword	.L.map_aname.5
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: d0906070-920c-4ebd-a390-173ac972b67c */
	.byte	0x70, 0x60, 0x90, 0xd0, 0x0c, 0x92, 0xbd, 0x4e, 0xa3, 0x90, 0x17, 0x3a, 0xc9, 0x72, 0xb6, 0x7c
	/* entry_count */
	.word	2
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module6_managed_to_java
	/* duplicate_map */
	.xword	module6_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Arch.Lifecycle.LiveData.Core */
	.xword	.L.map_aname.6
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: ce479a86-beab-47ec-95b2-d14b387378f6 */
	.byte	0x86, 0x9a, 0x47, 0xce, 0xab, 0xbe, 0xec, 0x47, 0x95, 0xb2, 0xd1, 0x4b, 0x38, 0x73, 0x78, 0xf6
	/* entry_count */
	.word	1
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module7_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Xamarin.Essentials */
	.xword	.L.map_aname.7
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 4fc9ad95-e744-4faa-a558-69e9eab9f30e */
	.byte	0x95, 0xad, 0xc9, 0x4f, 0x44, 0xe7, 0xaa, 0x4f, 0xa5, 0x58, 0x69, 0xe9, 0xea, 0xb9, 0xf3, 0x0e
	/* entry_count */
	.word	22
	/* duplicate_count */
	.word	2
	/* map */
	.xword	module8_managed_to_java
	/* duplicate_map */
	.xword	module8_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.Compat */
	.xword	.L.map_aname.8
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: b19a229d-bc59-47dd-93eb-5c88a4fe3047 */
	.byte	0x9d, 0x22, 0x9a, 0xb1, 0x59, 0xbc, 0xdd, 0x47, 0x93, 0xeb, 0x5c, 0x88, 0xa4, 0xfe, 0x30, 0x47
	/* entry_count */
	.word	30
	/* duplicate_count */
	.word	4
	/* map */
	.xword	module9_managed_to_java
	/* duplicate_map */
	.xword	module9_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.v7.AppCompat */
	.xword	.L.map_aname.9
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 6ab406c2-7f04-4088-b058-2ed5df66c238 */
	.byte	0xc2, 0x06, 0xb4, 0x6a, 0x04, 0x7f, 0x88, 0x40, 0xb0, 0x58, 0x2e, 0xd5, 0xdf, 0x66, 0xc2, 0x38
	/* entry_count */
	.word	4
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module10_managed_to_java
	/* duplicate_map */
	.xword	module10_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Arch.Lifecycle.Common */
	.xword	.L.map_aname.10
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: e4048fd9-f99b-4e68-ab20-4fc1fb513337 */
	.byte	0xd9, 0x8f, 0x04, 0xe4, 0x9b, 0xf9, 0x68, 0x4e, 0xab, 0x20, 0x4f, 0xc1, 0xfb, 0x51, 0x33, 0x37
	/* entry_count */
	.word	2
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module11_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Xamarin.Android.Arch.Lifecycle.ViewModel */
	.xword	.L.map_aname.11
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: f7b1c4f3-4b21-490e-abad-3ef78305af05 */
	.byte	0xf3, 0xc4, 0xb1, 0xf7, 0x21, 0x4b, 0x0e, 0x49, 0xab, 0xad, 0x3e, 0xf7, 0x83, 0x05, 0xaf, 0x05
	/* entry_count */
	.word	250
	/* duplicate_count */
	.word	43
	/* map */
	.xword	module12_managed_to_java
	/* duplicate_map */
	.xword	module12_managed_to_java_duplicates
	/* assembly_name: Mono.Android */
	.xword	.L.map_aname.12
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	.size	map_modules, 936
/* Managed to Java map: END */

/* Java to managed map: START */
	.section	.rodata.map_java,"a",@progbits
	.type	map_java, @object
	.p2align	2
	.global	map_java
map_java:
	/* #0 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554753
	/* java_name */
	.ascii	"android/animation/Animator"
	.zero	56

	/* #1 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554755
	/* java_name */
	.ascii	"android/animation/Animator$AnimatorListener"
	.zero	39

	/* #2 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554757
	/* java_name */
	.ascii	"android/animation/Animator$AnimatorPauseListener"
	.zero	34

	/* #3 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554759
	/* java_name */
	.ascii	"android/animation/AnimatorListenerAdapter"
	.zero	41

	/* #4 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554762
	/* java_name */
	.ascii	"android/animation/TimeInterpolator"
	.zero	48

	/* #5 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554764
	/* java_name */
	.ascii	"android/app/Activity"
	.zero	62

	/* #6 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554765
	/* java_name */
	.ascii	"android/app/Application"
	.zero	59

	/* #7 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554767
	/* java_name */
	.ascii	"android/app/Application$ActivityLifecycleCallbacks"
	.zero	32

	/* #8 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554768
	/* java_name */
	.ascii	"android/app/Dialog"
	.zero	64

	/* #9 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554774
	/* java_name */
	.ascii	"android/app/PendingIntent"
	.zero	57

	/* #10 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/arch/lifecycle/Lifecycle"
	.zero	50

	/* #11 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/arch/lifecycle/Lifecycle$State"
	.zero	44

	/* #12 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"android/arch/lifecycle/LifecycleObserver"
	.zero	42

	/* #13 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"android/arch/lifecycle/LifecycleOwner"
	.zero	45

	/* #14 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/arch/lifecycle/LiveData"
	.zero	51

	/* #15 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/arch/lifecycle/Observer"
	.zero	51

	/* #16 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/arch/lifecycle/ViewModelStore"
	.zero	45

	/* #17 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/arch/lifecycle/ViewModelStoreOwner"
	.zero	40

	/* #18 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554788
	/* java_name */
	.ascii	"android/content/ComponentCallbacks"
	.zero	48

	/* #19 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554790
	/* java_name */
	.ascii	"android/content/ComponentCallbacks2"
	.zero	47

	/* #20 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554780
	/* java_name */
	.ascii	"android/content/ComponentName"
	.zero	53

	/* #21 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554775
	/* java_name */
	.ascii	"android/content/ContentProvider"
	.zero	51

	/* #22 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554782
	/* java_name */
	.ascii	"android/content/ContentResolver"
	.zero	51

	/* #23 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554776
	/* java_name */
	.ascii	"android/content/ContentValues"
	.zero	53

	/* #24 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554777
	/* java_name */
	.ascii	"android/content/Context"
	.zero	59

	/* #25 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554785
	/* java_name */
	.ascii	"android/content/ContextWrapper"
	.zero	52

	/* #26 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554792
	/* java_name */
	.ascii	"android/content/DialogInterface"
	.zero	51

	/* #27 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554778
	/* java_name */
	.ascii	"android/content/Intent"
	.zero	60

	/* #28 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554793
	/* java_name */
	.ascii	"android/content/IntentSender"
	.zero	54

	/* #29 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554799
	/* java_name */
	.ascii	"android/content/SharedPreferences"
	.zero	49

	/* #30 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554795
	/* java_name */
	.ascii	"android/content/SharedPreferences$Editor"
	.zero	42

	/* #31 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554797
	/* java_name */
	.ascii	"android/content/SharedPreferences$OnSharedPreferenceChangeListener"
	.zero	16

	/* #32 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554801
	/* java_name */
	.ascii	"android/content/pm/ApplicationInfo"
	.zero	48

	/* #33 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554802
	/* java_name */
	.ascii	"android/content/pm/PackageInfo"
	.zero	52

	/* #34 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554804
	/* java_name */
	.ascii	"android/content/pm/PackageItemInfo"
	.zero	48

	/* #35 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554805
	/* java_name */
	.ascii	"android/content/pm/PackageManager"
	.zero	49

	/* #36 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554808
	/* java_name */
	.ascii	"android/content/res/ColorStateList"
	.zero	48

	/* #37 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554809
	/* java_name */
	.ascii	"android/content/res/Configuration"
	.zero	49

	/* #38 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554810
	/* java_name */
	.ascii	"android/content/res/Resources"
	.zero	53

	/* #39 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554583
	/* java_name */
	.ascii	"android/database/CharArrayBuffer"
	.zero	50

	/* #40 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554584
	/* java_name */
	.ascii	"android/database/ContentObserver"
	.zero	50

	/* #41 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554590
	/* java_name */
	.ascii	"android/database/Cursor"
	.zero	59

	/* #42 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554586
	/* java_name */
	.ascii	"android/database/DataSetObserver"
	.zero	50

	/* #43 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554740
	/* java_name */
	.ascii	"android/graphics/Canvas"
	.zero	59

	/* #44 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554741
	/* java_name */
	.ascii	"android/graphics/ColorFilter"
	.zero	54

	/* #45 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554742
	/* java_name */
	.ascii	"android/graphics/Matrix"
	.zero	59

	/* #46 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554743
	/* java_name */
	.ascii	"android/graphics/Paint"
	.zero	60

	/* #47 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554744
	/* java_name */
	.ascii	"android/graphics/Point"
	.zero	60

	/* #48 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554745
	/* java_name */
	.ascii	"android/graphics/PorterDuff"
	.zero	55

	/* #49 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554746
	/* java_name */
	.ascii	"android/graphics/PorterDuff$Mode"
	.zero	50

	/* #50 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554747
	/* java_name */
	.ascii	"android/graphics/Rect"
	.zero	61

	/* #51 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554748
	/* java_name */
	.ascii	"android/graphics/RectF"
	.zero	60

	/* #52 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554749
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable"
	.zero	48

	/* #53 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554751
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable$Callback"
	.zero	39

	/* #54 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554728
	/* java_name */
	.ascii	"android/location/Address"
	.zero	58

	/* #55 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554730
	/* java_name */
	.ascii	"android/location/Criteria"
	.zero	57

	/* #56 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554731
	/* java_name */
	.ascii	"android/location/Geocoder"
	.zero	57

	/* #57 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554736
	/* java_name */
	.ascii	"android/location/Location"
	.zero	57

	/* #58 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554735
	/* java_name */
	.ascii	"android/location/LocationListener"
	.zero	49

	/* #59 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554726
	/* java_name */
	.ascii	"android/location/LocationManager"
	.zero	50

	/* #60 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554737
	/* java_name */
	.ascii	"android/location/LocationProvider"
	.zero	49

	/* #61 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554724
	/* java_name */
	.ascii	"android/net/Uri"
	.zero	67

	/* #62 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554712
	/* java_name */
	.ascii	"android/os/BaseBundle"
	.zero	61

	/* #63 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554713
	/* java_name */
	.ascii	"android/os/Build"
	.zero	66

	/* #64 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554714
	/* java_name */
	.ascii	"android/os/Build$VERSION"
	.zero	58

	/* #65 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554716
	/* java_name */
	.ascii	"android/os/Bundle"
	.zero	65

	/* #66 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554711
	/* java_name */
	.ascii	"android/os/Handler"
	.zero	64

	/* #67 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554721
	/* java_name */
	.ascii	"android/os/Looper"
	.zero	65

	/* #68 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554722
	/* java_name */
	.ascii	"android/os/Parcel"
	.zero	65

	/* #69 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554720
	/* java_name */
	.ascii	"android/os/Parcelable"
	.zero	61

	/* #70 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554718
	/* java_name */
	.ascii	"android/os/Parcelable$Creator"
	.zero	53

	/* #71 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554710
	/* java_name */
	.ascii	"android/preference/PreferenceManager"
	.zero	46

	/* #72 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554856
	/* java_name */
	.ascii	"android/runtime/JavaProxyThrowable"
	.zero	48

	/* #73 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/v13/view/DragAndDropPermissionsCompat"
	.zero	29

	/* #74 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554462
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat"
	.zero	45

	/* #75 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554464
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback"
	.zero	10

	/* #76 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554466
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat$PermissionCompatDelegate"
	.zero	20

	/* #77 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554468
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat$RequestPermissionsRequestCodeValidator"
	.zero	6

	/* #78 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/support/v4/app/Fragment"
	.zero	51

	/* #79 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/support/v4/app/Fragment$SavedState"
	.zero	40

	/* #80 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/v4/app/FragmentActivity"
	.zero	43

	/* #81 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager"
	.zero	44

	/* #82 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager$BackStackEntry"
	.zero	29

	/* #83 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager$FragmentLifecycleCallbacks"
	.zero	17

	/* #84 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554444
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager$OnBackStackChangedListener"
	.zero	17

	/* #85 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554449
	/* java_name */
	.ascii	"android/support/v4/app/FragmentTransaction"
	.zero	40

	/* #86 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"android/support/v4/app/LoaderManager"
	.zero	46

	/* #87 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"android/support/v4/app/LoaderManager$LoaderCallbacks"
	.zero	30

	/* #88 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554469
	/* java_name */
	.ascii	"android/support/v4/app/SharedElementCallback"
	.zero	38

	/* #89 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554471
	/* java_name */
	.ascii	"android/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener"
	.zero	8

	/* #90 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554473
	/* java_name */
	.ascii	"android/support/v4/app/TaskStackBuilder"
	.zero	43

	/* #91 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554475
	/* java_name */
	.ascii	"android/support/v4/app/TaskStackBuilder$SupportParentable"
	.zero	25

	/* #92 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554459
	/* java_name */
	.ascii	"android/support/v4/content/ContextCompat"
	.zero	42

	/* #93 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554460
	/* java_name */
	.ascii	"android/support/v4/content/FileProvider"
	.zero	43

	/* #94 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/v4/content/Loader"
	.zero	49

	/* #95 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/support/v4/content/Loader$OnLoadCanceledListener"
	.zero	26

	/* #96 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"android/support/v4/content/Loader$OnLoadCompleteListener"
	.zero	26

	/* #97 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554461
	/* java_name */
	.ascii	"android/support/v4/content/PermissionChecker"
	.zero	38

	/* #98 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554456
	/* java_name */
	.ascii	"android/support/v4/internal/view/SupportMenu"
	.zero	38

	/* #99 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554458
	/* java_name */
	.ascii	"android/support/v4/internal/view/SupportMenuItem"
	.zero	34

	/* #100 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/support/v4/view/ActionProvider"
	.zero	44

	/* #101 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"android/support/v4/view/ActionProvider$SubUiVisibilityListener"
	.zero	20

	/* #102 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"android/support/v4/view/ActionProvider$VisibilityListener"
	.zero	25

	/* #103 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554454
	/* java_name */
	.ascii	"android/support/v4/view/ViewPropertyAnimatorCompat"
	.zero	32

	/* #104 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554451
	/* java_name */
	.ascii	"android/support/v4/view/ViewPropertyAnimatorListener"
	.zero	30

	/* #105 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554453
	/* java_name */
	.ascii	"android/support/v4/view/ViewPropertyAnimatorUpdateListener"
	.zero	24

	/* #106 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/v4/widget/DrawerLayout"
	.zero	44

	/* #107 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/support/v4/widget/DrawerLayout$DrawerListener"
	.zero	29

	/* #108 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar"
	.zero	50

	/* #109 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$LayoutParams"
	.zero	37

	/* #110 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$OnMenuVisibilityListener"
	.zero	25

	/* #111 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554443
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$OnNavigationListener"
	.zero	29

	/* #112 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554444
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$Tab"
	.zero	46

	/* #113 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554447
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$TabListener"
	.zero	38

	/* #114 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554451
	/* java_name */
	.ascii	"android/support/v7/app/ActionBarDrawerToggle"
	.zero	38

	/* #115 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554453
	/* java_name */
	.ascii	"android/support/v7/app/ActionBarDrawerToggle$Delegate"
	.zero	29

	/* #116 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554455
	/* java_name */
	.ascii	"android/support/v7/app/ActionBarDrawerToggle$DelegateProvider"
	.zero	21

	/* #117 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554456
	/* java_name */
	.ascii	"android/support/v7/app/AppCompatActivity"
	.zero	42

	/* #118 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554460
	/* java_name */
	.ascii	"android/support/v7/app/AppCompatCallback"
	.zero	42

	/* #119 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554457
	/* java_name */
	.ascii	"android/support/v7/app/AppCompatDelegate"
	.zero	42

	/* #120 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/v7/graphics/drawable/DrawerArrowDrawable"
	.zero	26

	/* #121 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554474
	/* java_name */
	.ascii	"android/support/v7/view/ActionMode"
	.zero	48

	/* #122 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554476
	/* java_name */
	.ascii	"android/support/v7/view/ActionMode$Callback"
	.zero	39

	/* #123 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554478
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuBuilder"
	.zero	42

	/* #124 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554480
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuBuilder$Callback"
	.zero	33

	/* #125 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554487
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuItemImpl"
	.zero	41

	/* #126 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554484
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuPresenter"
	.zero	40

	/* #127 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554482
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuPresenter$Callback"
	.zero	31

	/* #128 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554486
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuView"
	.zero	45

	/* #129 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554488
	/* java_name */
	.ascii	"android/support/v7/view/menu/SubMenuBuilder"
	.zero	39

	/* #130 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554471
	/* java_name */
	.ascii	"android/support/v7/widget/DecorToolbar"
	.zero	44

	/* #131 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554472
	/* java_name */
	.ascii	"android/support/v7/widget/ScrollingTabContainerView"
	.zero	31

	/* #132 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554473
	/* java_name */
	.ascii	"android/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener"
	.zero	8

	/* #133 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554461
	/* java_name */
	.ascii	"android/support/v7/widget/Toolbar"
	.zero	49

	/* #134 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554465
	/* java_name */
	.ascii	"android/support/v7/widget/Toolbar$OnMenuItemClickListener"
	.zero	25

	/* #135 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554462
	/* java_name */
	.ascii	"android/support/v7/widget/Toolbar_NavigationOnClickEventDispatcher"
	.zero	16

	/* #136 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554708
	/* java_name */
	.ascii	"android/telephony/PhoneNumberUtils"
	.zero	48

	/* #137 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554709
	/* java_name */
	.ascii	"android/telephony/SmsManager"
	.zero	54

	/* #138 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554703
	/* java_name */
	.ascii	"android/text/Html"
	.zero	65

	/* #139 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554705
	/* java_name */
	.ascii	"android/text/Spanned"
	.zero	62

	/* #140 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554699
	/* java_name */
	.ascii	"android/util/AttributeSet"
	.zero	57

	/* #141 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554697
	/* java_name */
	.ascii	"android/util/DisplayMetrics"
	.zero	55

	/* #142 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554696
	/* java_name */
	.ascii	"android/util/Log"
	.zero	66

	/* #143 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554700
	/* java_name */
	.ascii	"android/util/Patterns"
	.zero	61

	/* #144 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554701
	/* java_name */
	.ascii	"android/util/SparseArray"
	.zero	58

	/* #145 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554634
	/* java_name */
	.ascii	"android/view/ActionMode"
	.zero	59

	/* #146 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554636
	/* java_name */
	.ascii	"android/view/ActionMode$Callback"
	.zero	50

	/* #147 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554639
	/* java_name */
	.ascii	"android/view/ActionProvider"
	.zero	55

	/* #148 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554648
	/* java_name */
	.ascii	"android/view/ContextMenu"
	.zero	58

	/* #149 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554646
	/* java_name */
	.ascii	"android/view/ContextMenu$ContextMenuInfo"
	.zero	42

	/* #150 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554641
	/* java_name */
	.ascii	"android/view/ContextThemeWrapper"
	.zero	50

	/* #151 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554642
	/* java_name */
	.ascii	"android/view/Display"
	.zero	62

	/* #152 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554643
	/* java_name */
	.ascii	"android/view/DragEvent"
	.zero	60

	/* #153 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554657
	/* java_name */
	.ascii	"android/view/InputEvent"
	.zero	59

	/* #154 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554619
	/* java_name */
	.ascii	"android/view/KeyEvent"
	.zero	61

	/* #155 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554621
	/* java_name */
	.ascii	"android/view/KeyEvent$Callback"
	.zero	52

	/* #156 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554622
	/* java_name */
	.ascii	"android/view/LayoutInflater"
	.zero	55

	/* #157 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554624
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory"
	.zero	47

	/* #158 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554626
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory2"
	.zero	46

	/* #159 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554650
	/* java_name */
	.ascii	"android/view/Menu"
	.zero	65

	/* #160 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554672
	/* java_name */
	.ascii	"android/view/MenuInflater"
	.zero	57

	/* #161 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554656
	/* java_name */
	.ascii	"android/view/MenuItem"
	.zero	61

	/* #162 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554652
	/* java_name */
	.ascii	"android/view/MenuItem$OnActionExpandListener"
	.zero	38

	/* #163 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554654
	/* java_name */
	.ascii	"android/view/MenuItem$OnMenuItemClickListener"
	.zero	37

	/* #164 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554627
	/* java_name */
	.ascii	"android/view/MotionEvent"
	.zero	58

	/* #165 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554675
	/* java_name */
	.ascii	"android/view/SearchEvent"
	.zero	58

	/* #166 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554660
	/* java_name */
	.ascii	"android/view/SubMenu"
	.zero	62

	/* #167 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554611
	/* java_name */
	.ascii	"android/view/View"
	.zero	65

	/* #168 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554613
	/* java_name */
	.ascii	"android/view/View$OnClickListener"
	.zero	49

	/* #169 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554616
	/* java_name */
	.ascii	"android/view/View$OnCreateContextMenuListener"
	.zero	37

	/* #170 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554679
	/* java_name */
	.ascii	"android/view/ViewGroup"
	.zero	60

	/* #171 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554680
	/* java_name */
	.ascii	"android/view/ViewGroup$LayoutParams"
	.zero	47

	/* #172 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554681
	/* java_name */
	.ascii	"android/view/ViewGroup$MarginLayoutParams"
	.zero	41

	/* #173 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554662
	/* java_name */
	.ascii	"android/view/ViewManager"
	.zero	58

	/* #174 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554664
	/* java_name */
	.ascii	"android/view/ViewParent"
	.zero	59

	/* #175 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554683
	/* java_name */
	.ascii	"android/view/ViewPropertyAnimator"
	.zero	49

	/* #176 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554628
	/* java_name */
	.ascii	"android/view/ViewTreeObserver"
	.zero	53

	/* #177 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554630
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnPreDrawListener"
	.zero	35

	/* #178 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554631
	/* java_name */
	.ascii	"android/view/Window"
	.zero	63

	/* #179 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554633
	/* java_name */
	.ascii	"android/view/Window$Callback"
	.zero	54

	/* #180 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554667
	/* java_name */
	.ascii	"android/view/WindowManager"
	.zero	56

	/* #181 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554665
	/* java_name */
	.ascii	"android/view/WindowManager$LayoutParams"
	.zero	43

	/* #182 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554689
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEvent"
	.zero	37

	/* #183 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554695
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEventSource"
	.zero	31

	/* #184 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554690
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityRecord"
	.zero	36

	/* #185 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554685
	/* java_name */
	.ascii	"android/view/animation/Animation"
	.zero	50

	/* #186 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554688
	/* java_name */
	.ascii	"android/view/animation/Interpolator"
	.zero	47

	/* #187 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554582
	/* java_name */
	.ascii	"android/webkit/MimeTypeMap"
	.zero	56

	/* #188 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554604
	/* java_name */
	.ascii	"android/widget/Adapter"
	.zero	60

	/* #189 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554591
	/* java_name */
	.ascii	"android/widget/AdapterView"
	.zero	56

	/* #190 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554593
	/* java_name */
	.ascii	"android/widget/AdapterView$OnItemSelectedListener"
	.zero	33

	/* #191 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554596
	/* java_name */
	.ascii	"android/widget/Button"
	.zero	61

	/* #192 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554597
	/* java_name */
	.ascii	"android/widget/CheckBox"
	.zero	59

	/* #193 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554606
	/* java_name */
	.ascii	"android/widget/Checkable"
	.zero	58

	/* #194 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554598
	/* java_name */
	.ascii	"android/widget/CompoundButton"
	.zero	53

	/* #195 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554600
	/* java_name */
	.ascii	"android/widget/EditText"
	.zero	59

	/* #196 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554601
	/* java_name */
	.ascii	"android/widget/FrameLayout"
	.zero	56

	/* #197 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554602
	/* java_name */
	.ascii	"android/widget/HorizontalScrollView"
	.zero	47

	/* #198 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554608
	/* java_name */
	.ascii	"android/widget/SpinnerAdapter"
	.zero	53

	/* #199 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554594
	/* java_name */
	.ascii	"android/widget/TextView"
	.zero	59

	/* #200 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554609
	/* java_name */
	.ascii	"android/widget/Toast"
	.zero	62

	/* #201 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"crc641ce4a313234a694a/MainActivity"
	.zero	48

	/* #202 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"crc641ce4a313234a694a/SettingsActivity"
	.zero	44

	/* #203 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"crc64435a5ac349fa9fda/ActivityLifecycleContextListener"
	.zero	28

	/* #204 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"crc649efb5bdbf2d8cfa5/GeolocationContinuousListener"
	.zero	31

	/* #205 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"crc649efb5bdbf2d8cfa5/GeolocationSingleListener"
	.zero	35

	/* #206 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554455
	/* java_name */
	.ascii	"crc64a0e0a82d0db9a07d/ActivityLifecycleContextListener"
	.zero	28

	/* #207 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33555007
	/* java_name */
	.ascii	"java/io/Closeable"
	.zero	65

	/* #208 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33555003
	/* java_name */
	.ascii	"java/io/File"
	.zero	70

	/* #209 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33555004
	/* java_name */
	.ascii	"java/io/FileDescriptor"
	.zero	60

	/* #210 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33555005
	/* java_name */
	.ascii	"java/io/FileInputStream"
	.zero	59

	/* #211 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33555009
	/* java_name */
	.ascii	"java/io/Flushable"
	.zero	65

	/* #212 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33555013
	/* java_name */
	.ascii	"java/io/IOException"
	.zero	63

	/* #213 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33555010
	/* java_name */
	.ascii	"java/io/InputStream"
	.zero	63

	/* #214 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33555012
	/* java_name */
	.ascii	"java/io/InterruptedIOException"
	.zero	52

	/* #215 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33555016
	/* java_name */
	.ascii	"java/io/OutputStream"
	.zero	62

	/* #216 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33555018
	/* java_name */
	.ascii	"java/io/PrintWriter"
	.zero	63

	/* #217 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33555015
	/* java_name */
	.ascii	"java/io/Serializable"
	.zero	62

	/* #218 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33555019
	/* java_name */
	.ascii	"java/io/StringWriter"
	.zero	62

	/* #219 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33555020
	/* java_name */
	.ascii	"java/io/Writer"
	.zero	68

	/* #220 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554971
	/* java_name */
	.ascii	"java/lang/Appendable"
	.zero	62

	/* #221 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554947
	/* java_name */
	.ascii	"java/lang/Boolean"
	.zero	65

	/* #222 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554948
	/* java_name */
	.ascii	"java/lang/Byte"
	.zero	68

	/* #223 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554972
	/* java_name */
	.ascii	"java/lang/CharSequence"
	.zero	60

	/* #224 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554949
	/* java_name */
	.ascii	"java/lang/Character"
	.zero	63

	/* #225 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554950
	/* java_name */
	.ascii	"java/lang/Class"
	.zero	67

	/* #226 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554966
	/* java_name */
	.ascii	"java/lang/ClassCastException"
	.zero	54

	/* #227 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554951
	/* java_name */
	.ascii	"java/lang/ClassNotFoundException"
	.zero	50

	/* #228 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554975
	/* java_name */
	.ascii	"java/lang/Cloneable"
	.zero	63

	/* #229 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554977
	/* java_name */
	.ascii	"java/lang/Comparable"
	.zero	62

	/* #230 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554952
	/* java_name */
	.ascii	"java/lang/Double"
	.zero	66

	/* #231 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554967
	/* java_name */
	.ascii	"java/lang/Enum"
	.zero	68

	/* #232 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554969
	/* java_name */
	.ascii	"java/lang/Error"
	.zero	67

	/* #233 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554953
	/* java_name */
	.ascii	"java/lang/Exception"
	.zero	63

	/* #234 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554954
	/* java_name */
	.ascii	"java/lang/Float"
	.zero	67

	/* #235 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554980
	/* java_name */
	.ascii	"java/lang/IllegalArgumentException"
	.zero	48

	/* #236 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554981
	/* java_name */
	.ascii	"java/lang/IllegalStateException"
	.zero	51

	/* #237 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554982
	/* java_name */
	.ascii	"java/lang/IndexOutOfBoundsException"
	.zero	47

	/* #238 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554956
	/* java_name */
	.ascii	"java/lang/Integer"
	.zero	65

	/* #239 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554979
	/* java_name */
	.ascii	"java/lang/Iterable"
	.zero	64

	/* #240 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554985
	/* java_name */
	.ascii	"java/lang/LinkageError"
	.zero	60

	/* #241 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554957
	/* java_name */
	.ascii	"java/lang/Long"
	.zero	68

	/* #242 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554986
	/* java_name */
	.ascii	"java/lang/NoClassDefFoundError"
	.zero	52

	/* #243 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554987
	/* java_name */
	.ascii	"java/lang/NullPointerException"
	.zero	52

	/* #244 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554988
	/* java_name */
	.ascii	"java/lang/Number"
	.zero	66

	/* #245 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554958
	/* java_name */
	.ascii	"java/lang/Object"
	.zero	66

	/* #246 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554990
	/* java_name */
	.ascii	"java/lang/ReflectiveOperationException"
	.zero	44

	/* #247 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554984
	/* java_name */
	.ascii	"java/lang/Runnable"
	.zero	64

	/* #248 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554959
	/* java_name */
	.ascii	"java/lang/RuntimeException"
	.zero	56

	/* #249 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554991
	/* java_name */
	.ascii	"java/lang/SecurityException"
	.zero	55

	/* #250 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554960
	/* java_name */
	.ascii	"java/lang/Short"
	.zero	67

	/* #251 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554961
	/* java_name */
	.ascii	"java/lang/String"
	.zero	66

	/* #252 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554963
	/* java_name */
	.ascii	"java/lang/Thread"
	.zero	66

	/* #253 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554965
	/* java_name */
	.ascii	"java/lang/Throwable"
	.zero	63

	/* #254 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554992
	/* java_name */
	.ascii	"java/lang/UnsupportedOperationException"
	.zero	43

	/* #255 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554994
	/* java_name */
	.ascii	"java/lang/annotation/Annotation"
	.zero	51

	/* #256 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554996
	/* java_name */
	.ascii	"java/lang/reflect/AnnotatedElement"
	.zero	48

	/* #257 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554998
	/* java_name */
	.ascii	"java/lang/reflect/GenericDeclaration"
	.zero	46

	/* #258 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33555000
	/* java_name */
	.ascii	"java/lang/reflect/Type"
	.zero	60

	/* #259 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33555002
	/* java_name */
	.ascii	"java/lang/reflect/TypeVariable"
	.zero	52

	/* #260 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554880
	/* java_name */
	.ascii	"java/net/ConnectException"
	.zero	57

	/* #261 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554882
	/* java_name */
	.ascii	"java/net/HttpURLConnection"
	.zero	56

	/* #262 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554884
	/* java_name */
	.ascii	"java/net/InetSocketAddress"
	.zero	56

	/* #263 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554885
	/* java_name */
	.ascii	"java/net/ProtocolException"
	.zero	56

	/* #264 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554886
	/* java_name */
	.ascii	"java/net/Proxy"
	.zero	68

	/* #265 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554887
	/* java_name */
	.ascii	"java/net/Proxy$Type"
	.zero	63

	/* #266 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554888
	/* java_name */
	.ascii	"java/net/ProxySelector"
	.zero	60

	/* #267 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554890
	/* java_name */
	.ascii	"java/net/SocketAddress"
	.zero	60

	/* #268 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554892
	/* java_name */
	.ascii	"java/net/SocketException"
	.zero	58

	/* #269 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554893
	/* java_name */
	.ascii	"java/net/SocketTimeoutException"
	.zero	51

	/* #270 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554895
	/* java_name */
	.ascii	"java/net/URI"
	.zero	70

	/* #271 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554896
	/* java_name */
	.ascii	"java/net/URL"
	.zero	70

	/* #272 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554897
	/* java_name */
	.ascii	"java/net/URLConnection"
	.zero	60

	/* #273 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554894
	/* java_name */
	.ascii	"java/net/UnknownServiceException"
	.zero	50

	/* #274 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554923
	/* java_name */
	.ascii	"java/nio/Buffer"
	.zero	67

	/* #275 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554925
	/* java_name */
	.ascii	"java/nio/ByteBuffer"
	.zero	63

	/* #276 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554930
	/* java_name */
	.ascii	"java/nio/channels/ByteChannel"
	.zero	53

	/* #277 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554932
	/* java_name */
	.ascii	"java/nio/channels/Channel"
	.zero	57

	/* #278 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554927
	/* java_name */
	.ascii	"java/nio/channels/FileChannel"
	.zero	53

	/* #279 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554934
	/* java_name */
	.ascii	"java/nio/channels/GatheringByteChannel"
	.zero	44

	/* #280 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554936
	/* java_name */
	.ascii	"java/nio/channels/InterruptibleChannel"
	.zero	44

	/* #281 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554938
	/* java_name */
	.ascii	"java/nio/channels/ReadableByteChannel"
	.zero	45

	/* #282 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554940
	/* java_name */
	.ascii	"java/nio/channels/ScatteringByteChannel"
	.zero	43

	/* #283 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554942
	/* java_name */
	.ascii	"java/nio/channels/SeekableByteChannel"
	.zero	45

	/* #284 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554944
	/* java_name */
	.ascii	"java/nio/channels/WritableByteChannel"
	.zero	45

	/* #285 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554945
	/* java_name */
	.ascii	"java/nio/channels/spi/AbstractInterruptibleChannel"
	.zero	32

	/* #286 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554910
	/* java_name */
	.ascii	"java/security/KeyStore"
	.zero	60

	/* #287 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554912
	/* java_name */
	.ascii	"java/security/KeyStore$LoadStoreParameter"
	.zero	41

	/* #288 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554914
	/* java_name */
	.ascii	"java/security/KeyStore$ProtectionParameter"
	.zero	40

	/* #289 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554909
	/* java_name */
	.ascii	"java/security/Principal"
	.zero	59

	/* #290 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554915
	/* java_name */
	.ascii	"java/security/SecureRandom"
	.zero	56

	/* #291 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554916
	/* java_name */
	.ascii	"java/security/cert/Certificate"
	.zero	52

	/* #292 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554918
	/* java_name */
	.ascii	"java/security/cert/CertificateFactory"
	.zero	45

	/* #293 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554921
	/* java_name */
	.ascii	"java/security/cert/X509Certificate"
	.zero	48

	/* #294 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554920
	/* java_name */
	.ascii	"java/security/cert/X509Extension"
	.zero	50

	/* #295 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554848
	/* java_name */
	.ascii	"java/util/ArrayList"
	.zero	63

	/* #296 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554837
	/* java_name */
	.ascii	"java/util/Collection"
	.zero	62

	/* #297 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554900
	/* java_name */
	.ascii	"java/util/Enumeration"
	.zero	61

	/* #298 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554839
	/* java_name */
	.ascii	"java/util/HashMap"
	.zero	65

	/* #299 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554857
	/* java_name */
	.ascii	"java/util/HashSet"
	.zero	65

	/* #300 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554902
	/* java_name */
	.ascii	"java/util/Iterator"
	.zero	64

	/* #301 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554903
	/* java_name */
	.ascii	"java/util/Random"
	.zero	66

	/* #302 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554905
	/* java_name */
	.ascii	"java/util/regex/MatchResult"
	.zero	55

	/* #303 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554906
	/* java_name */
	.ascii	"java/util/regex/Matcher"
	.zero	59

	/* #304 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554907
	/* java_name */
	.ascii	"java/util/regex/Pattern"
	.zero	59

	/* #305 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554559
	/* java_name */
	.ascii	"javax/net/SocketFactory"
	.zero	59

	/* #306 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554564
	/* java_name */
	.ascii	"javax/net/ssl/HostnameVerifier"
	.zero	52

	/* #307 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554561
	/* java_name */
	.ascii	"javax/net/ssl/HttpsURLConnection"
	.zero	50

	/* #308 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554566
	/* java_name */
	.ascii	"javax/net/ssl/KeyManager"
	.zero	58

	/* #309 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554575
	/* java_name */
	.ascii	"javax/net/ssl/KeyManagerFactory"
	.zero	51

	/* #310 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554576
	/* java_name */
	.ascii	"javax/net/ssl/SSLContext"
	.zero	58

	/* #311 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554568
	/* java_name */
	.ascii	"javax/net/ssl/SSLSession"
	.zero	58

	/* #312 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554570
	/* java_name */
	.ascii	"javax/net/ssl/SSLSessionContext"
	.zero	51

	/* #313 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554577
	/* java_name */
	.ascii	"javax/net/ssl/SSLSocketFactory"
	.zero	52

	/* #314 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554572
	/* java_name */
	.ascii	"javax/net/ssl/TrustManager"
	.zero	56

	/* #315 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554579
	/* java_name */
	.ascii	"javax/net/ssl/TrustManagerFactory"
	.zero	49

	/* #316 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554574
	/* java_name */
	.ascii	"javax/net/ssl/X509TrustManager"
	.zero	52

	/* #317 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554555
	/* java_name */
	.ascii	"javax/security/cert/Certificate"
	.zero	51

	/* #318 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554557
	/* java_name */
	.ascii	"javax/security/cert/X509Certificate"
	.zero	47

	/* #319 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33555043
	/* java_name */
	.ascii	"mono/android/TypeManager"
	.zero	58

	/* #320 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554833
	/* java_name */
	.ascii	"mono/android/runtime/InputStreamAdapter"
	.zero	43

	/* #321 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"mono/android/runtime/JavaArray"
	.zero	52

	/* #322 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554854
	/* java_name */
	.ascii	"mono/android/runtime/JavaObject"
	.zero	51

	/* #323 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554872
	/* java_name */
	.ascii	"mono/android/runtime/OutputStreamAdapter"
	.zero	42

	/* #324 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554445
	/* java_name */
	.ascii	"mono/android/support/v4/app/FragmentManager_OnBackStackChangedListenerImplementor"
	.zero	1

	/* #325 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"mono/android/support/v4/view/ActionProvider_SubUiVisibilityListenerImplementor"
	.zero	4

	/* #326 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554444
	/* java_name */
	.ascii	"mono/android/support/v4/view/ActionProvider_VisibilityListenerImplementor"
	.zero	9

	/* #327 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"mono/android/support/v4/widget/DrawerLayout_DrawerListenerImplementor"
	.zero	13

	/* #328 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"mono/android/support/v7/app/ActionBar_OnMenuVisibilityListenerImplementor"
	.zero	9

	/* #329 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554467
	/* java_name */
	.ascii	"mono/android/support/v7/widget/Toolbar_OnMenuItemClickListenerImplementor"
	.zero	9

	/* #330 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554614
	/* java_name */
	.ascii	"mono/android/view/View_OnClickListenerImplementor"
	.zero	33

	/* #331 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554964
	/* java_name */
	.ascii	"mono/java/lang/RunnableImplementor"
	.zero	48

	/* #332 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554551
	/* java_name */
	.ascii	"xamarin/android/net/OldAndroidSSLSocketFactory"
	.zero	36

	.size	map_java, 29970
/* Java to managed map: END */

