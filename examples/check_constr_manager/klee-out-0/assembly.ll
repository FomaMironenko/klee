; ModuleID = 'main.bc'
source_filename = "main.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

$_ZSt4swapIiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_ = comdat any

$_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !0
@.str = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"main.cpp\00", align 1
@__PRETTY_FUNCTION__._Z3fooii = private unnamed_addr constant [18 x i8] c"int foo(int, int)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_main.cpp, i8* null }]
@__dso_handle = hidden global i8* null, align 8, !dbg !28

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !935 {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit), !dbg !936
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* bitcast (i8** @__dso_handle to i8*)) #3, !dbg !936
  ret void, !dbg !936
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline nounwind uwtable
define zeroext i1 @_Z9check_powi(i32) #4 !dbg !937 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !940, metadata !DIExpression()), !dbg !941
  %3 = load i32, i32* %2, align 4, !dbg !942
  %4 = load i32, i32* %2, align 4, !dbg !943
  %5 = load i32, i32* %2, align 4, !dbg !944
  %6 = sub nsw i32 0, %5, !dbg !945
  %7 = and i32 %4, %6, !dbg !946
  %8 = icmp eq i32 %3, %7, !dbg !947
  ret i1 %8, !dbg !948
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

; Function Attrs: noinline nounwind uwtable
define i32 @_Z3fooii(i32, i32) #4 !dbg !949 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !952, metadata !DIExpression()), !dbg !953
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !954, metadata !DIExpression()), !dbg !955
  %6 = load i32, i32* %3, align 4, !dbg !956
  %7 = load i32, i32* %4, align 4, !dbg !958
  %8 = icmp sgt i32 %6, %7, !dbg !959
  br i1 %8, label %9, label %10, !dbg !960

; <label>:9:                                      ; preds = %2
  call void @_ZSt4swapIiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(i32* dereferenceable(4) %3, i32* dereferenceable(4) %4) #3, !dbg !961
  br label %10, !dbg !963

; <label>:10:                                     ; preds = %9, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !964, metadata !DIExpression()), !dbg !965
  store i32 0, i32* %5, align 4, !dbg !965
  br label %11, !dbg !966

; <label>:11:                                     ; preds = %39, %10
  %12 = load i32, i32* %3, align 4, !dbg !967
  %13 = load i32, i32* %4, align 4, !dbg !970
  %14 = icmp slt i32 %12, %13, !dbg !971
  br i1 %14, label %15, label %42, !dbg !972

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %3, align 4, !dbg !973
  %17 = icmp eq i32 %16, 42, !dbg !976
  br i1 %17, label %18, label %19, !dbg !977

; <label>:18:                                     ; preds = %15
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__PRETTY_FUNCTION__._Z3fooii, i32 0, i32 0)) #8, !dbg !978
  unreachable, !dbg !978

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %3, align 4, !dbg !980
  %21 = srem i32 %20, 4, !dbg !981
  switch i32 %21, label %39 [
    i32 0, label %22
    i32 1, label %27
    i32 2, label %30
    i32 3, label %33
  ], !dbg !982

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %3, align 4, !dbg !983
  %24 = mul nsw i32 3, %23, !dbg !985
  %25 = load i32, i32* %5, align 4, !dbg !986
  %26 = add nsw i32 %25, %24, !dbg !986
  store i32 %26, i32* %5, align 4, !dbg !986
  br label %39, !dbg !987

; <label>:27:                                     ; preds = %19
  %28 = load i32, i32* %5, align 4, !dbg !988
  %29 = add nsw i32 %28, 349034, !dbg !988
  store i32 %29, i32* %5, align 4, !dbg !988
  br label %39, !dbg !989

; <label>:30:                                     ; preds = %19
  %31 = load i32, i32* %5, align 4, !dbg !990
  %32 = mul nsw i32 %31, 2, !dbg !990
  store i32 %32, i32* %5, align 4, !dbg !990
  br label %33, !dbg !991

; <label>:33:                                     ; preds = %19, %30
  %34 = load i32, i32* %3, align 4, !dbg !992
  %35 = load i32, i32* %4, align 4, !dbg !993
  %36 = mul nsw i32 %34, %35, !dbg !994
  %37 = load i32, i32* %5, align 4, !dbg !995
  %38 = add nsw i32 %37, %36, !dbg !995
  store i32 %38, i32* %5, align 4, !dbg !995
  br label %39, !dbg !996

; <label>:39:                                     ; preds = %22, %27, %19, %33
  %40 = load i32, i32* %3, align 4, !dbg !997
  %41 = add nsw i32 %40, 1, !dbg !997
  store i32 %41, i32* %3, align 4, !dbg !997
  br label %11, !dbg !998, !llvm.loop !999

; <label>:42:                                     ; preds = %11
  %43 = load i32, i32* %5, align 4, !dbg !1001
  ret i32 %43, !dbg !1002
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZSt4swapIiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(i32* dereferenceable(4), i32* dereferenceable(4)) #4 comdat !dbg !1003 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !1016, metadata !DIExpression()), !dbg !1017
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1018, metadata !DIExpression()), !dbg !1019
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1020, metadata !DIExpression()), !dbg !1021
  %6 = load i32*, i32** %3, align 8, !dbg !1022
  %7 = call dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* dereferenceable(4) %6) #3, !dbg !1022
  %8 = load i32, i32* %7, align 4, !dbg !1022
  store i32 %8, i32* %5, align 4, !dbg !1021
  %9 = load i32*, i32** %4, align 8, !dbg !1023
  %10 = call dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* dereferenceable(4) %9) #3, !dbg !1023
  %11 = load i32, i32* %10, align 4, !dbg !1023
  %12 = load i32*, i32** %3, align 8, !dbg !1024
  store i32 %11, i32* %12, align 4, !dbg !1025
  %13 = call dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* dereferenceable(4) %5) #3, !dbg !1026
  %14 = load i32, i32* %13, align 4, !dbg !1026
  %15 = load i32*, i32** %4, align 8, !dbg !1027
  store i32 %14, i32* %15, align 4, !dbg !1028
  ret void, !dbg !1029
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #6

; Function Attrs: noinline norecurse uwtable
define i32 @main() #7 !dbg !1030 {
  call void @klee.ctor_stub()
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1031, metadata !DIExpression()), !dbg !1032
  store i32 0, i32* %2, align 4, !dbg !1032
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1033, metadata !DIExpression()), !dbg !1034
  store i32 0, i32* %3, align 4, !dbg !1034
  %5 = bitcast i32* %2 to i8*, !dbg !1035
  call void @klee_make_symbolic(i8* %5, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !1036
  %6 = bitcast i32* %3 to i8*, !dbg !1037
  call void @klee_make_symbolic(i8* %6, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)), !dbg !1038
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1039, metadata !DIExpression()), !dbg !1040
  %7 = load i32, i32* %2, align 4, !dbg !1041
  %8 = load i32, i32* %3, align 4, !dbg !1042
  %9 = call i32 @_Z3fooii(i32 %7, i32 %8), !dbg !1043
  store i32 %9, i32* %4, align 4, !dbg !1040
  ret i32 0, !dbg !1044
}

declare void @klee_make_symbolic(i8*, i64, i8*) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* dereferenceable(4)) #4 comdat !dbg !1045 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !1053, metadata !DIExpression()), !dbg !1054
  %3 = load i32*, i32** %2, align 8, !dbg !1055
  ret i32* %3, !dbg !1056
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" !dbg !1057 {
  call void @__cxx_global_var_init(), !dbg !1059
  ret void
}

define internal void @klee.ctor_stub() {
entry:
  call void @_GLOBAL__sub_I_main.cpp()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!35, !30}
!llvm.module.flags = !{!931, !932, !933}
!llvm.ident = !{!934, !934}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !2, file: !3, line: 74, type: !4, isLocal: true, isDefinition: true)
!2 = !DINamespace(name: "std", scope: null)
!3 = !DIFile(filename: "/usr/bin/../lib64/gcc/x86_64-pc-linux-gnu/9.2.1/../../../../include/c++/9.2.1/iostream", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!4 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !6, file: !5, line: 603, size: 8, elements: !7, identifier: "_ZTSNSt8ios_base4InitE")
!5 = !DIFile(filename: "/usr/bin/../lib64/gcc/x86_64-pc-linux-gnu/9.2.1/../../../../include/c++/9.2.1/bits/ios_base.h", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!6 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !2, file: !5, line: 228, flags: DIFlagFwdDecl, identifier: "_ZTSSt8ios_base")
!7 = !{!8, !12, !14, !18, !19, !24}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "_S_refcount", scope: !4, file: !5, line: 616, baseType: !9, flags: DIFlagStaticMember)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Atomic_word", file: !10, line: 32, baseType: !11)
!10 = !DIFile(filename: "/usr/bin/../lib64/gcc/x86_64-pc-linux-gnu/9.2.1/../../../../include/c++/9.2.1/x86_64-pc-linux-gnu/bits/atomic_word.h", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "_S_synced_with_stdio", scope: !4, file: !5, line: 617, baseType: !13, flags: DIFlagStaticMember)
!13 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!14 = !DISubprogram(name: "Init", scope: !4, file: !5, line: 607, type: !15, isLocal: false, isDefinition: false, scopeLine: 607, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!18 = !DISubprogram(name: "~Init", scope: !4, file: !5, line: 608, type: !15, isLocal: false, isDefinition: false, scopeLine: 608, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!19 = !DISubprogram(name: "Init", scope: !4, file: !5, line: 611, type: !20, isLocal: false, isDefinition: false, scopeLine: 611, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !17, !22}
!22 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!24 = !DISubprogram(name: "operator=", linkageName: "_ZNSt8ios_base4InitaSERKS0_", scope: !4, file: !5, line: 612, type: !25, isLocal: false, isDefinition: false, scopeLine: 612, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!25 = !DISubroutineType(types: !26)
!26 = !{!27, !17, !22}
!27 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "__dso_handle", scope: !30, file: !31, line: 1, type: !34, isLocal: false, isDefinition: true)
!30 = distinct !DICompileUnit(language: DW_LANG_C89, file: !31, producer: "clang version 6.0.0 (tags/RELEASE_600/rc2) (llvm/tags/RELEASE_600/rc2 324817)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !32, globals: !33)
!31 = !DIFile(filename: "/home/fomius2000/states_and_lemmas/runtime/Intrinsic/dso_handle.c", directory: "/home/fomius2000/states_and_lemmas/build/runtime/Intrinsic")
!32 = !{}
!33 = !{!28}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !36, producer: "clang version 6.0.0 (tags/RELEASE_600/rc2) (llvm/tags/RELEASE_600/rc2 324817)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !32, globals: !37, imports: !38)
!36 = !DIFile(filename: "main.cpp", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!37 = !{!0}
!38 = !{!39, !58, !61, !66, !74, !82, !86, !93, !97, !101, !103, !105, !109, !121, !125, !131, !137, !139, !143, !147, !151, !155, !166, !168, !172, !176, !180, !182, !188, !192, !196, !198, !200, !204, !212, !216, !220, !224, !226, !232, !234, !241, !246, !250, !255, !259, !263, !267, !269, !271, !275, !279, !283, !285, !289, !293, !295, !297, !301, !307, !312, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !382, !386, !390, !397, !401, !404, !407, !410, !412, !414, !416, !419, !422, !425, !428, !431, !433, !438, !442, !445, !448, !450, !452, !454, !456, !459, !462, !465, !468, !471, !473, !477, !481, !486, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !521, !523, !527, !531, !537, !541, !546, !548, !552, !556, !560, !570, !574, !578, !582, !586, !590, !594, !598, !602, !606, !610, !614, !618, !620, !624, !628, !632, !638, !642, !646, !648, !652, !656, !662, !664, !668, !672, !676, !680, !684, !688, !692, !693, !694, !695, !697, !698, !699, !700, !701, !702, !703, !707, !713, !718, !722, !724, !726, !728, !730, !737, !741, !745, !749, !753, !757, !762, !766, !768, !772, !778, !782, !787, !789, !791, !795, !799, !801, !803, !805, !807, !811, !813, !815, !819, !823, !827, !831, !835, !839, !841, !845, !849, !853, !857, !859, !861, !865, !869, !870, !871, !872, !873, !874, !880, !883, !884, !886, !888, !890, !892, !896, !898, !900, !902, !904, !906, !908, !910, !912, !916, !920, !922, !926, !930}
!39 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !40, file: !57, line: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !41, line: 6, baseType: !42)
!41 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !43, line: 21, baseType: !44)
!43 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 13, size: 64, elements: !45, identifier: "_ZTS11__mbstate_t")
!45 = !{!46, !47}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !44, file: !43, line: 15, baseType: !11, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !44, file: !43, line: 20, baseType: !48, size: 32, offset: 32)
!48 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !44, file: !43, line: 16, size: 32, elements: !49, identifier: "_ZTSN11__mbstate_tUt_E")
!49 = !{!50, !52}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !48, file: !43, line: 18, baseType: !51, size: 32)
!51 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !48, file: !43, line: 19, baseType: !53, size: 32)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 32, elements: !55)
!54 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!55 = !{!56}
!56 = !DISubrange(count: 4)
!57 = !DIFile(filename: "/usr/bin/../lib64/gcc/x86_64-pc-linux-gnu/9.2.1/../../../../include/c++/9.2.1/cwchar", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!58 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !59, file: !57, line: 141)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !60, line: 20, baseType: !51)
!60 = !DIFile(filename: "/usr/include/bits/types/wint_t.h", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!61 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !62, file: !57, line: 143)
!62 = !DISubprogram(name: "btowc", scope: !63, file: !63, line: 284, type: !64, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!63 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!64 = !DISubroutineType(types: !65)
!65 = !{!59, !11}
!66 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !67, file: !57, line: 144)
!67 = !DISubprogram(name: "fgetwc", scope: !63, file: !63, line: 725, type: !68, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!68 = !DISubroutineType(types: !69)
!69 = !{!59, !70}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !72, line: 5, baseType: !73)
!72 = !DIFile(filename: "/usr/include/bits/types/__FILE.h", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !72, line: 4, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!74 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !75, file: !57, line: 145)
!75 = !DISubprogram(name: "fgetws", scope: !63, file: !63, line: 754, type: !76, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!76 = !DISubroutineType(types: !77)
!77 = !{!78, !80, !11, !81}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!80 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !78)
!81 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!82 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !83, file: !57, line: 146)
!83 = !DISubprogram(name: "fputwc", scope: !63, file: !63, line: 739, type: !84, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!84 = !DISubroutineType(types: !85)
!85 = !{!59, !79, !70}
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !87, file: !57, line: 147)
!87 = !DISubprogram(name: "fputws", scope: !63, file: !63, line: 761, type: !88, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!88 = !DISubroutineType(types: !89)
!89 = !{!11, !90, !81}
!90 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !94, file: !57, line: 148)
!94 = !DISubprogram(name: "fwide", scope: !63, file: !63, line: 573, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!95 = !DISubroutineType(types: !96)
!96 = !{!11, !70, !11}
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !98, file: !57, line: 149)
!98 = !DISubprogram(name: "fwprintf", scope: !63, file: !63, line: 580, type: !99, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!99 = !DISubroutineType(types: !100)
!100 = !{!11, !81, !90, null}
!101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !102, file: !57, line: 150)
!102 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !63, file: !63, line: 640, type: !99, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !104, file: !57, line: 151)
!104 = !DISubprogram(name: "getwc", scope: !63, file: !63, line: 726, type: !68, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !106, file: !57, line: 152)
!106 = !DISubprogram(name: "getwchar", scope: !63, file: !63, line: 732, type: !107, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!107 = !DISubroutineType(types: !108)
!108 = !{!59}
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !110, file: !57, line: 153)
!110 = !DISubprogram(name: "mbrlen", scope: !63, file: !63, line: 307, type: !111, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!111 = !DISubroutineType(types: !112)
!112 = !{!113, !116, !113, !119}
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !114, line: 62, baseType: !115)
!114 = !DIFile(filename: "/usr/lib/clang/6.0.0/include/stddef.h", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!115 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!116 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!119 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !122, file: !57, line: 154)
!122 = !DISubprogram(name: "mbrtowc", scope: !63, file: !63, line: 296, type: !123, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!123 = !DISubroutineType(types: !124)
!124 = !{!113, !80, !116, !113, !119}
!125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !126, file: !57, line: 155)
!126 = !DISubprogram(name: "mbsinit", scope: !63, file: !63, line: 292, type: !127, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!127 = !DISubroutineType(types: !128)
!128 = !{!11, !129}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !132, file: !57, line: 156)
!132 = !DISubprogram(name: "mbsrtowcs", scope: !63, file: !63, line: 337, type: !133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!133 = !DISubroutineType(types: !134)
!134 = !{!113, !80, !135, !113, !119}
!135 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !138, file: !57, line: 157)
!138 = !DISubprogram(name: "putwc", scope: !63, file: !63, line: 740, type: !84, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !140, file: !57, line: 158)
!140 = !DISubprogram(name: "putwchar", scope: !63, file: !63, line: 746, type: !141, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!141 = !DISubroutineType(types: !142)
!142 = !{!59, !79}
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !144, file: !57, line: 160)
!144 = !DISubprogram(name: "swprintf", scope: !63, file: !63, line: 590, type: !145, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!145 = !DISubroutineType(types: !146)
!146 = !{!11, !80, !113, !90, null}
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !148, file: !57, line: 162)
!148 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !63, file: !63, line: 647, type: !149, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!149 = !DISubroutineType(types: !150)
!150 = !{!11, !90, !90, null}
!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !152, file: !57, line: 163)
!152 = !DISubprogram(name: "ungetwc", scope: !63, file: !63, line: 769, type: !153, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!153 = !DISubroutineType(types: !154)
!154 = !{!59, !59, !70}
!155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !156, file: !57, line: 164)
!156 = !DISubprogram(name: "vfwprintf", scope: !63, file: !63, line: 598, type: !157, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!157 = !DISubroutineType(types: !158)
!158 = !{!11, !81, !90, !159}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !36, size: 192, elements: !161, identifier: "_ZTS13__va_list_tag")
!161 = !{!162, !163, !164, !165}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !160, file: !36, baseType: !51, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !160, file: !36, baseType: !51, size: 32, offset: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !160, file: !36, baseType: !34, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !160, file: !36, baseType: !34, size: 64, offset: 128)
!166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !167, file: !57, line: 166)
!167 = !DISubprogram(name: "vfwscanf", scope: !63, file: !63, line: 671, type: !157, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !169, file: !57, line: 169)
!169 = !DISubprogram(name: "vswprintf", scope: !63, file: !63, line: 611, type: !170, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!170 = !DISubroutineType(types: !171)
!171 = !{!11, !80, !113, !90, !159}
!172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !173, file: !57, line: 172)
!173 = !DISubprogram(name: "vswscanf", scope: !63, file: !63, line: 683, type: !174, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!174 = !DISubroutineType(types: !175)
!175 = !{!11, !90, !90, !159}
!176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !177, file: !57, line: 174)
!177 = !DISubprogram(name: "vwprintf", scope: !63, file: !63, line: 606, type: !178, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!178 = !DISubroutineType(types: !179)
!179 = !{!11, !90, !159}
!180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !181, file: !57, line: 176)
!181 = !DISubprogram(name: "vwscanf", scope: !63, file: !63, line: 679, type: !178, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !183, file: !57, line: 178)
!183 = !DISubprogram(name: "wcrtomb", scope: !63, file: !63, line: 301, type: !184, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!184 = !DISubroutineType(types: !185)
!185 = !{!113, !186, !79, !119}
!186 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !189, file: !57, line: 179)
!189 = !DISubprogram(name: "wcscat", scope: !63, file: !63, line: 97, type: !190, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!190 = !DISubroutineType(types: !191)
!191 = !{!78, !80, !90}
!192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !193, file: !57, line: 180)
!193 = !DISubprogram(name: "wcscmp", scope: !63, file: !63, line: 106, type: !194, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!194 = !DISubroutineType(types: !195)
!195 = !{!11, !91, !91}
!196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !197, file: !57, line: 181)
!197 = !DISubprogram(name: "wcscoll", scope: !63, file: !63, line: 131, type: !194, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !199, file: !57, line: 182)
!199 = !DISubprogram(name: "wcscpy", scope: !63, file: !63, line: 87, type: !190, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !201, file: !57, line: 183)
!201 = !DISubprogram(name: "wcscspn", scope: !63, file: !63, line: 187, type: !202, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!202 = !DISubroutineType(types: !203)
!203 = !{!113, !91, !91}
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !205, file: !57, line: 184)
!205 = !DISubprogram(name: "wcsftime", scope: !63, file: !63, line: 833, type: !206, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!206 = !DISubroutineType(types: !207)
!207 = !{!113, !80, !113, !90, !208}
!208 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!211 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !63, line: 83, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !213, file: !57, line: 185)
!213 = !DISubprogram(name: "wcslen", scope: !63, file: !63, line: 222, type: !214, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!214 = !DISubroutineType(types: !215)
!215 = !{!113, !91}
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !217, file: !57, line: 186)
!217 = !DISubprogram(name: "wcsncat", scope: !63, file: !63, line: 101, type: !218, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!218 = !DISubroutineType(types: !219)
!219 = !{!78, !80, !90, !113}
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !221, file: !57, line: 187)
!221 = !DISubprogram(name: "wcsncmp", scope: !63, file: !63, line: 109, type: !222, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!222 = !DISubroutineType(types: !223)
!223 = !{!11, !91, !91, !113}
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !225, file: !57, line: 188)
!225 = !DISubprogram(name: "wcsncpy", scope: !63, file: !63, line: 92, type: !218, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !227, file: !57, line: 189)
!227 = !DISubprogram(name: "wcsrtombs", scope: !63, file: !63, line: 343, type: !228, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!228 = !DISubroutineType(types: !229)
!229 = !{!113, !186, !230, !113, !119}
!230 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !233, file: !57, line: 190)
!233 = !DISubprogram(name: "wcsspn", scope: !63, file: !63, line: 191, type: !202, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !235, file: !57, line: 191)
!235 = !DISubprogram(name: "wcstod", scope: !63, file: !63, line: 377, type: !236, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!236 = !DISubroutineType(types: !237)
!237 = !{!238, !90, !239}
!238 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!239 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !242, file: !57, line: 193)
!242 = !DISubprogram(name: "wcstof", scope: !63, file: !63, line: 382, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!243 = !DISubroutineType(types: !244)
!244 = !{!245, !90, !239}
!245 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !247, file: !57, line: 195)
!247 = !DISubprogram(name: "wcstok", scope: !63, file: !63, line: 217, type: !248, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!248 = !DISubroutineType(types: !249)
!249 = !{!78, !80, !90, !239}
!250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !251, file: !57, line: 196)
!251 = !DISubprogram(name: "wcstol", scope: !63, file: !63, line: 428, type: !252, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!252 = !DISubroutineType(types: !253)
!253 = !{!254, !90, !239, !11}
!254 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !256, file: !57, line: 197)
!256 = !DISubprogram(name: "wcstoul", scope: !63, file: !63, line: 433, type: !257, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!257 = !DISubroutineType(types: !258)
!258 = !{!115, !90, !239, !11}
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !260, file: !57, line: 198)
!260 = !DISubprogram(name: "wcsxfrm", scope: !63, file: !63, line: 135, type: !261, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!261 = !DISubroutineType(types: !262)
!262 = !{!113, !80, !90, !113}
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !264, file: !57, line: 199)
!264 = !DISubprogram(name: "wctob", scope: !63, file: !63, line: 288, type: !265, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!265 = !DISubroutineType(types: !266)
!266 = !{!11, !59}
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !268, file: !57, line: 200)
!268 = !DISubprogram(name: "wmemcmp", scope: !63, file: !63, line: 258, type: !222, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !270, file: !57, line: 201)
!270 = !DISubprogram(name: "wmemcpy", scope: !63, file: !63, line: 262, type: !218, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !272, file: !57, line: 202)
!272 = !DISubprogram(name: "wmemmove", scope: !63, file: !63, line: 267, type: !273, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!273 = !DISubroutineType(types: !274)
!274 = !{!78, !78, !91, !113}
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !276, file: !57, line: 203)
!276 = !DISubprogram(name: "wmemset", scope: !63, file: !63, line: 271, type: !277, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!277 = !DISubroutineType(types: !278)
!278 = !{!78, !78, !79, !113}
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !280, file: !57, line: 204)
!280 = !DISubprogram(name: "wprintf", scope: !63, file: !63, line: 587, type: !281, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!281 = !DISubroutineType(types: !282)
!282 = !{!11, !90, null}
!283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !284, file: !57, line: 205)
!284 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !63, file: !63, line: 644, type: !281, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !286, file: !57, line: 206)
!286 = !DISubprogram(name: "wcschr", scope: !63, file: !63, line: 164, type: !287, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!287 = !DISubroutineType(types: !288)
!288 = !{!78, !91, !79}
!289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !290, file: !57, line: 207)
!290 = !DISubprogram(name: "wcspbrk", scope: !63, file: !63, line: 201, type: !291, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!291 = !DISubroutineType(types: !292)
!292 = !{!78, !91, !91}
!293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !294, file: !57, line: 208)
!294 = !DISubprogram(name: "wcsrchr", scope: !63, file: !63, line: 174, type: !287, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !296, file: !57, line: 209)
!296 = !DISubprogram(name: "wcsstr", scope: !63, file: !63, line: 212, type: !291, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !298, file: !57, line: 210)
!298 = !DISubprogram(name: "wmemchr", scope: !63, file: !63, line: 253, type: !299, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!299 = !DISubroutineType(types: !300)
!300 = !{!78, !91, !79, !113}
!301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !303, file: !57, line: 251)
!302 = !DINamespace(name: "__gnu_cxx", scope: null)
!303 = !DISubprogram(name: "wcstold", scope: !63, file: !63, line: 384, type: !304, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!304 = !DISubroutineType(types: !305)
!305 = !{!306, !90, !239}
!306 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !308, file: !57, line: 260)
!308 = !DISubprogram(name: "wcstoll", scope: !63, file: !63, line: 441, type: !309, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!309 = !DISubroutineType(types: !310)
!310 = !{!311, !90, !239, !11}
!311 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !313, file: !57, line: 261)
!313 = !DISubprogram(name: "wcstoull", scope: !63, file: !63, line: 448, type: !314, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!314 = !DISubroutineType(types: !315)
!315 = !{!316, !90, !239, !11}
!316 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !303, file: !57, line: 267)
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !308, file: !57, line: 268)
!319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !313, file: !57, line: 269)
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !242, file: !57, line: 283)
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !167, file: !57, line: 286)
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !173, file: !57, line: 289)
!323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !181, file: !57, line: 292)
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !303, file: !57, line: 296)
!325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !308, file: !57, line: 297)
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !313, file: !57, line: 298)
!327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !328, file: !329, line: 57)
!328 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !330, file: !329, line: 79, size: 64, elements: !331, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!329 = !DIFile(filename: "/usr/bin/../lib64/gcc/x86_64-pc-linux-gnu/9.2.1/../../../../include/c++/9.2.1/bits/exception_ptr.h", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!330 = !DINamespace(name: "__exception_ptr", scope: !2)
!331 = !{!332, !333, !337, !340, !341, !346, !347, !351, !357, !361, !365, !368, !369, !372, !375}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !328, file: !329, line: 81, baseType: !34, size: 64)
!333 = !DISubprogram(name: "exception_ptr", scope: !328, file: !329, line: 83, type: !334, isLocal: false, isDefinition: false, scopeLine: 83, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !336, !34}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!337 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !328, file: !329, line: 85, type: !338, isLocal: false, isDefinition: false, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !336}
!340 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !328, file: !329, line: 86, type: !338, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false)
!341 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !328, file: !329, line: 88, type: !342, isLocal: false, isDefinition: false, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false)
!342 = !DISubroutineType(types: !343)
!343 = !{!34, !344}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!346 = !DISubprogram(name: "exception_ptr", scope: !328, file: !329, line: 96, type: !338, isLocal: false, isDefinition: false, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!347 = !DISubprogram(name: "exception_ptr", scope: !328, file: !329, line: 98, type: !348, isLocal: false, isDefinition: false, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !336, !350}
!350 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !345, size: 64)
!351 = !DISubprogram(name: "exception_ptr", scope: !328, file: !329, line: 101, type: !352, isLocal: false, isDefinition: false, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !336, !354}
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !2, file: !355, line: 258, baseType: !356)
!355 = !DIFile(filename: "/usr/bin/../lib64/gcc/x86_64-pc-linux-gnu/9.2.1/../../../../include/c++/9.2.1/x86_64-pc-linux-gnu/bits/c++config.h", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!356 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!357 = !DISubprogram(name: "exception_ptr", scope: !328, file: !329, line: 105, type: !358, isLocal: false, isDefinition: false, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !336, !360}
!360 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !328, size: 64)
!361 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !328, file: !329, line: 118, type: !362, isLocal: false, isDefinition: false, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!362 = !DISubroutineType(types: !363)
!363 = !{!364, !336, !350}
!364 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !328, size: 64)
!365 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !328, file: !329, line: 122, type: !366, isLocal: false, isDefinition: false, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!366 = !DISubroutineType(types: !367)
!367 = !{!364, !336, !360}
!368 = !DISubprogram(name: "~exception_ptr", scope: !328, file: !329, line: 129, type: !338, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!369 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !328, file: !329, line: 132, type: !370, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !336, !364}
!372 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !328, file: !329, line: 144, type: !373, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!373 = !DISubroutineType(types: !374)
!374 = !{!13, !344}
!375 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !328, file: !329, line: 153, type: !376, isLocal: false, isDefinition: false, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!376 = !DISubroutineType(types: !377)
!377 = !{!378, !344}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!380 = !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !2, file: !381, line: 88, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")
!381 = !DIFile(filename: "/usr/bin/../lib64/gcc/x86_64-pc-linux-gnu/9.2.1/../../../../include/c++/9.2.1/typeinfo", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !383, file: !329, line: 73)
!383 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !2, file: !329, line: 69, type: !384, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !328}
!386 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !387, entity: !388, file: !389, line: 58)
!387 = !DINamespace(name: "__gnu_debug", scope: null)
!388 = !DINamespace(name: "__debug", scope: !2)
!389 = !DIFile(filename: "/usr/bin/../lib64/gcc/x86_64-pc-linux-gnu/9.2.1/../../../../include/c++/9.2.1/debug/debug.h", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !391, file: !396, line: 47)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !392, line: 24, baseType: !393)
!392 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !394, line: 37, baseType: !395)
!394 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!395 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!396 = !DIFile(filename: "/usr/bin/../lib64/gcc/x86_64-pc-linux-gnu/9.2.1/../../../../include/c++/9.2.1/cstdint", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !398, file: !396, line: 48)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !392, line: 25, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !394, line: 39, baseType: !400)
!400 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !402, file: !396, line: 49)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !392, line: 26, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !394, line: 41, baseType: !11)
!404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !405, file: !396, line: 50)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !392, line: 27, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !394, line: 44, baseType: !254)
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !408, file: !396, line: 52)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !409, line: 58, baseType: !395)
!409 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !411, file: !396, line: 53)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !409, line: 60, baseType: !254)
!412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !413, file: !396, line: 54)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !409, line: 61, baseType: !254)
!414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !415, file: !396, line: 55)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !409, line: 62, baseType: !254)
!416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !417, file: !396, line: 57)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !409, line: 43, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !394, line: 52, baseType: !393)
!419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !420, file: !396, line: 58)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !409, line: 44, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !394, line: 54, baseType: !399)
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !423, file: !396, line: 59)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !409, line: 45, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !394, line: 56, baseType: !403)
!425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !426, file: !396, line: 60)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !409, line: 46, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !394, line: 58, baseType: !406)
!428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !429, file: !396, line: 62)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !409, line: 101, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !394, line: 72, baseType: !254)
!431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !432, file: !396, line: 63)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !409, line: 87, baseType: !254)
!433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !434, file: !396, line: 65)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !435, line: 24, baseType: !436)
!435 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !394, line: 38, baseType: !437)
!437 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !439, file: !396, line: 66)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !435, line: 25, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !394, line: 40, baseType: !441)
!441 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !443, file: !396, line: 67)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !435, line: 26, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !394, line: 42, baseType: !51)
!445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !446, file: !396, line: 68)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !435, line: 27, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !394, line: 45, baseType: !115)
!448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !449, file: !396, line: 70)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !409, line: 71, baseType: !437)
!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !451, file: !396, line: 71)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !409, line: 73, baseType: !115)
!452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !453, file: !396, line: 72)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !409, line: 74, baseType: !115)
!454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !455, file: !396, line: 73)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !409, line: 75, baseType: !115)
!456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !457, file: !396, line: 75)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !409, line: 49, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !394, line: 53, baseType: !436)
!459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !460, file: !396, line: 76)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !409, line: 50, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !394, line: 55, baseType: !440)
!462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !463, file: !396, line: 77)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !409, line: 51, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !394, line: 57, baseType: !444)
!465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !466, file: !396, line: 78)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !409, line: 52, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !394, line: 59, baseType: !447)
!468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !469, file: !396, line: 80)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !409, line: 102, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !394, line: 73, baseType: !115)
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !472, file: !396, line: 81)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !409, line: 90, baseType: !115)
!473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !474, file: !476, line: 53)
!474 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !475, line: 51, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!475 = !DIFile(filename: "/usr/include/locale.h", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!476 = !DIFile(filename: "/usr/bin/../lib64/gcc/x86_64-pc-linux-gnu/9.2.1/../../../../include/c++/9.2.1/clocale", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !478, file: !476, line: 54)
!478 = !DISubprogram(name: "setlocale", scope: !475, file: !475, line: 122, type: !479, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!479 = !DISubroutineType(types: !480)
!480 = !{!187, !11, !117}
!481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !482, file: !476, line: 55)
!482 = !DISubprogram(name: "localeconv", scope: !475, file: !475, line: 125, type: !483, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!483 = !DISubroutineType(types: !484)
!484 = !{!485}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !487, file: !491, line: 64)
!487 = !DISubprogram(name: "isalnum", scope: !488, file: !488, line: 108, type: !489, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!488 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!489 = !DISubroutineType(types: !490)
!490 = !{!11, !11}
!491 = !DIFile(filename: "/usr/bin/../lib64/gcc/x86_64-pc-linux-gnu/9.2.1/../../../../include/c++/9.2.1/cctype", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !493, file: !491, line: 65)
!493 = !DISubprogram(name: "isalpha", scope: !488, file: !488, line: 109, type: !489, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !495, file: !491, line: 66)
!495 = !DISubprogram(name: "iscntrl", scope: !488, file: !488, line: 110, type: !489, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !497, file: !491, line: 67)
!497 = !DISubprogram(name: "isdigit", scope: !488, file: !488, line: 111, type: !489, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !499, file: !491, line: 68)
!499 = !DISubprogram(name: "isgraph", scope: !488, file: !488, line: 113, type: !489, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !501, file: !491, line: 69)
!501 = !DISubprogram(name: "islower", scope: !488, file: !488, line: 112, type: !489, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !503, file: !491, line: 70)
!503 = !DISubprogram(name: "isprint", scope: !488, file: !488, line: 114, type: !489, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !505, file: !491, line: 71)
!505 = !DISubprogram(name: "ispunct", scope: !488, file: !488, line: 115, type: !489, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !507, file: !491, line: 72)
!507 = !DISubprogram(name: "isspace", scope: !488, file: !488, line: 116, type: !489, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !509, file: !491, line: 73)
!509 = !DISubprogram(name: "isupper", scope: !488, file: !488, line: 117, type: !489, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !511, file: !491, line: 74)
!511 = !DISubprogram(name: "isxdigit", scope: !488, file: !488, line: 118, type: !489, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !513, file: !491, line: 75)
!513 = !DISubprogram(name: "tolower", scope: !488, file: !488, line: 122, type: !489, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !515, file: !491, line: 76)
!515 = !DISubprogram(name: "toupper", scope: !488, file: !488, line: 125, type: !489, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !517, file: !491, line: 87)
!517 = !DISubprogram(name: "isblank", scope: !488, file: !488, line: 130, type: !489, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !519, file: !520, line: 44)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !2, file: !355, line: 254, baseType: !115)
!520 = !DIFile(filename: "/usr/bin/../lib64/gcc/x86_64-pc-linux-gnu/9.2.1/../../../../include/c++/9.2.1/ext/new_allocator.h", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !522, file: !520, line: 45)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !2, file: !355, line: 255, baseType: !254)
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !524, file: !526, line: 52)
!524 = !DISubprogram(name: "abs", scope: !525, file: !525, line: 840, type: !489, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!525 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!526 = !DIFile(filename: "/usr/bin/../lib64/gcc/x86_64-pc-linux-gnu/9.2.1/../../../../include/c++/9.2.1/bits/std_abs.h", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !528, file: !530, line: 127)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !525, line: 62, baseType: !529)
!529 = !DICompositeType(tag: DW_TAG_structure_type, file: !525, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!530 = !DIFile(filename: "/usr/bin/../lib64/gcc/x86_64-pc-linux-gnu/9.2.1/../../../../include/c++/9.2.1/cstdlib", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !532, file: !530, line: 128)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !525, line: 70, baseType: !533)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !525, line: 66, size: 128, elements: !534, identifier: "_ZTS6ldiv_t")
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !533, file: !525, line: 68, baseType: !254, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !533, file: !525, line: 69, baseType: !254, size: 64, offset: 64)
!537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !538, file: !530, line: 130)
!538 = !DISubprogram(name: "abort", scope: !525, file: !525, line: 591, type: !539, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!539 = !DISubroutineType(types: !540)
!540 = !{null}
!541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !542, file: !530, line: 134)
!542 = !DISubprogram(name: "atexit", scope: !525, file: !525, line: 595, type: !543, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!543 = !DISubroutineType(types: !544)
!544 = !{!11, !545}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !547, file: !530, line: 137)
!547 = !DISubprogram(name: "at_quick_exit", scope: !525, file: !525, line: 600, type: !543, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !549, file: !530, line: 140)
!549 = !DISubprogram(name: "atof", scope: !525, file: !525, line: 101, type: !550, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!550 = !DISubroutineType(types: !551)
!551 = !{!238, !117}
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !553, file: !530, line: 141)
!553 = !DISubprogram(name: "atoi", scope: !525, file: !525, line: 104, type: !554, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!554 = !DISubroutineType(types: !555)
!555 = !{!11, !117}
!556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !557, file: !530, line: 142)
!557 = !DISubprogram(name: "atol", scope: !525, file: !525, line: 107, type: !558, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!558 = !DISubroutineType(types: !559)
!559 = !{!254, !117}
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !561, file: !530, line: 143)
!561 = !DISubprogram(name: "bsearch", scope: !525, file: !525, line: 820, type: !562, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!562 = !DISubroutineType(types: !563)
!563 = !{!34, !564, !564, !113, !113, !566}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !525, line: 808, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!11, !564, !564}
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !571, file: !530, line: 144)
!571 = !DISubprogram(name: "calloc", scope: !525, file: !525, line: 542, type: !572, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!572 = !DISubroutineType(types: !573)
!573 = !{!34, !113, !113}
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !575, file: !530, line: 145)
!575 = !DISubprogram(name: "div", scope: !525, file: !525, line: 852, type: !576, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!576 = !DISubroutineType(types: !577)
!577 = !{!528, !11, !11}
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !579, file: !530, line: 146)
!579 = !DISubprogram(name: "exit", scope: !525, file: !525, line: 617, type: !580, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !11}
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !583, file: !530, line: 147)
!583 = !DISubprogram(name: "free", scope: !525, file: !525, line: 565, type: !584, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !34}
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !587, file: !530, line: 148)
!587 = !DISubprogram(name: "getenv", scope: !525, file: !525, line: 634, type: !588, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!588 = !DISubroutineType(types: !589)
!589 = !{!187, !117}
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !591, file: !530, line: 149)
!591 = !DISubprogram(name: "labs", scope: !525, file: !525, line: 841, type: !592, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!592 = !DISubroutineType(types: !593)
!593 = !{!254, !254}
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !595, file: !530, line: 150)
!595 = !DISubprogram(name: "ldiv", scope: !525, file: !525, line: 854, type: !596, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!596 = !DISubroutineType(types: !597)
!597 = !{!532, !254, !254}
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !599, file: !530, line: 151)
!599 = !DISubprogram(name: "malloc", scope: !525, file: !525, line: 539, type: !600, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!600 = !DISubroutineType(types: !601)
!601 = !{!34, !113}
!602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !603, file: !530, line: 153)
!603 = !DISubprogram(name: "mblen", scope: !525, file: !525, line: 922, type: !604, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!604 = !DISubroutineType(types: !605)
!605 = !{!11, !117, !113}
!606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !607, file: !530, line: 154)
!607 = !DISubprogram(name: "mbstowcs", scope: !525, file: !525, line: 933, type: !608, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!608 = !DISubroutineType(types: !609)
!609 = !{!113, !80, !116, !113}
!610 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !611, file: !530, line: 155)
!611 = !DISubprogram(name: "mbtowc", scope: !525, file: !525, line: 925, type: !612, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!612 = !DISubroutineType(types: !613)
!613 = !{!11, !80, !116, !113}
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !615, file: !530, line: 157)
!615 = !DISubprogram(name: "qsort", scope: !525, file: !525, line: 830, type: !616, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !34, !113, !113, !566}
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !619, file: !530, line: 160)
!619 = !DISubprogram(name: "quick_exit", scope: !525, file: !525, line: 623, type: !580, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !621, file: !530, line: 163)
!621 = !DISubprogram(name: "rand", scope: !525, file: !525, line: 453, type: !622, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!622 = !DISubroutineType(types: !623)
!623 = !{!11}
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !625, file: !530, line: 164)
!625 = !DISubprogram(name: "realloc", scope: !525, file: !525, line: 550, type: !626, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!626 = !DISubroutineType(types: !627)
!627 = !{!34, !34, !113}
!628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !629, file: !530, line: 165)
!629 = !DISubprogram(name: "srand", scope: !525, file: !525, line: 455, type: !630, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !51}
!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !633, file: !530, line: 166)
!633 = !DISubprogram(name: "strtod", scope: !525, file: !525, line: 117, type: !634, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!634 = !DISubroutineType(types: !635)
!635 = !{!238, !116, !636}
!636 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !637)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !639, file: !530, line: 167)
!639 = !DISubprogram(name: "strtol", scope: !525, file: !525, line: 176, type: !640, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!640 = !DISubroutineType(types: !641)
!641 = !{!254, !116, !636, !11}
!642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !643, file: !530, line: 168)
!643 = !DISubprogram(name: "strtoul", scope: !525, file: !525, line: 180, type: !644, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!644 = !DISubroutineType(types: !645)
!645 = !{!115, !116, !636, !11}
!646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !647, file: !530, line: 169)
!647 = !DISubprogram(name: "system", scope: !525, file: !525, line: 784, type: !554, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !649, file: !530, line: 171)
!649 = !DISubprogram(name: "wcstombs", scope: !525, file: !525, line: 936, type: !650, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!650 = !DISubroutineType(types: !651)
!651 = !{!113, !186, !90, !113}
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !653, file: !530, line: 172)
!653 = !DISubprogram(name: "wctomb", scope: !525, file: !525, line: 929, type: !654, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!654 = !DISubroutineType(types: !655)
!655 = !{!11, !187, !79}
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !657, file: !530, line: 200)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !525, line: 80, baseType: !658)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !525, line: 76, size: 128, elements: !659, identifier: "_ZTS7lldiv_t")
!659 = !{!660, !661}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !658, file: !525, line: 78, baseType: !311, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !658, file: !525, line: 79, baseType: !311, size: 64, offset: 64)
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !663, file: !530, line: 206)
!663 = !DISubprogram(name: "_Exit", scope: !525, file: !525, line: 629, type: !580, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !665, file: !530, line: 210)
!665 = !DISubprogram(name: "llabs", scope: !525, file: !525, line: 844, type: !666, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!666 = !DISubroutineType(types: !667)
!667 = !{!311, !311}
!668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !669, file: !530, line: 216)
!669 = !DISubprogram(name: "lldiv", scope: !525, file: !525, line: 858, type: !670, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!670 = !DISubroutineType(types: !671)
!671 = !{!657, !311, !311}
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !673, file: !530, line: 227)
!673 = !DISubprogram(name: "atoll", scope: !525, file: !525, line: 112, type: !674, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!674 = !DISubroutineType(types: !675)
!675 = !{!311, !117}
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !677, file: !530, line: 228)
!677 = !DISubprogram(name: "strtoll", scope: !525, file: !525, line: 200, type: !678, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!678 = !DISubroutineType(types: !679)
!679 = !{!311, !116, !636, !11}
!680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !681, file: !530, line: 229)
!681 = !DISubprogram(name: "strtoull", scope: !525, file: !525, line: 205, type: !682, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!682 = !DISubroutineType(types: !683)
!683 = !{!316, !116, !636, !11}
!684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !685, file: !530, line: 231)
!685 = !DISubprogram(name: "strtof", scope: !525, file: !525, line: 123, type: !686, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!686 = !DISubroutineType(types: !687)
!687 = !{!245, !116, !636}
!688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !689, file: !530, line: 232)
!689 = !DISubprogram(name: "strtold", scope: !525, file: !525, line: 126, type: !690, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!690 = !DISubroutineType(types: !691)
!691 = !{!306, !116, !636}
!692 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !657, file: !530, line: 240)
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !663, file: !530, line: 242)
!694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !665, file: !530, line: 244)
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !696, file: !530, line: 245)
!696 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !302, file: !530, line: 213, type: !670, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !669, file: !530, line: 246)
!698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !673, file: !530, line: 248)
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !685, file: !530, line: 249)
!700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !677, file: !530, line: 250)
!701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !681, file: !530, line: 251)
!702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !689, file: !530, line: 252)
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !704, file: !706, line: 98)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !705, line: 7, baseType: !73)
!705 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!706 = !DIFile(filename: "/usr/bin/../lib64/gcc/x86_64-pc-linux-gnu/9.2.1/../../../../include/c++/9.2.1/cstdio", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !708, file: !706, line: 99)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !709, line: 84, baseType: !710)
!709 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !711, line: 14, baseType: !712)
!711 = !DIFile(filename: "/usr/include/bits/types/__fpos_t.h", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!712 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !711, line: 10, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !714, file: !706, line: 101)
!714 = !DISubprogram(name: "clearerr", scope: !709, file: !709, line: 757, type: !715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!715 = !DISubroutineType(types: !716)
!716 = !{null, !717}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !719, file: !706, line: 102)
!719 = !DISubprogram(name: "fclose", scope: !709, file: !709, line: 213, type: !720, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!720 = !DISubroutineType(types: !721)
!721 = !{!11, !717}
!722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !723, file: !706, line: 103)
!723 = !DISubprogram(name: "feof", scope: !709, file: !709, line: 759, type: !720, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!724 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !725, file: !706, line: 104)
!725 = !DISubprogram(name: "ferror", scope: !709, file: !709, line: 761, type: !720, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !727, file: !706, line: 105)
!727 = !DISubprogram(name: "fflush", scope: !709, file: !709, line: 218, type: !720, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!728 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !729, file: !706, line: 106)
!729 = !DISubprogram(name: "fgetc", scope: !709, file: !709, line: 485, type: !720, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!730 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !731, file: !706, line: 107)
!731 = !DISubprogram(name: "fgetpos", scope: !709, file: !709, line: 731, type: !732, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!732 = !DISubroutineType(types: !733)
!733 = !{!11, !734, !735}
!734 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !717)
!735 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !736)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !738, file: !706, line: 108)
!738 = !DISubprogram(name: "fgets", scope: !709, file: !709, line: 564, type: !739, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!739 = !DISubroutineType(types: !740)
!740 = !{!187, !186, !11, !734}
!741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !742, file: !706, line: 109)
!742 = !DISubprogram(name: "fopen", scope: !709, file: !709, line: 246, type: !743, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!743 = !DISubroutineType(types: !744)
!744 = !{!717, !116, !116}
!745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !746, file: !706, line: 110)
!746 = !DISubprogram(name: "fprintf", scope: !709, file: !709, line: 326, type: !747, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!747 = !DISubroutineType(types: !748)
!748 = !{!11, !734, !116, null}
!749 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !750, file: !706, line: 111)
!750 = !DISubprogram(name: "fputc", scope: !709, file: !709, line: 521, type: !751, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!751 = !DISubroutineType(types: !752)
!752 = !{!11, !11, !717}
!753 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !754, file: !706, line: 112)
!754 = !DISubprogram(name: "fputs", scope: !709, file: !709, line: 626, type: !755, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!755 = !DISubroutineType(types: !756)
!756 = !{!11, !116, !734}
!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !758, file: !706, line: 113)
!758 = !DISubprogram(name: "fread", scope: !709, file: !709, line: 646, type: !759, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!759 = !DISubroutineType(types: !760)
!760 = !{!113, !761, !113, !113, !734}
!761 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !34)
!762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !763, file: !706, line: 114)
!763 = !DISubprogram(name: "freopen", scope: !709, file: !709, line: 252, type: !764, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!764 = !DISubroutineType(types: !765)
!765 = !{!717, !116, !116, !734}
!766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !767, file: !706, line: 115)
!767 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !709, file: !709, line: 407, type: !747, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !769, file: !706, line: 116)
!769 = !DISubprogram(name: "fseek", scope: !709, file: !709, line: 684, type: !770, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!770 = !DISubroutineType(types: !771)
!771 = !{!11, !717, !254, !11}
!772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !773, file: !706, line: 117)
!773 = !DISubprogram(name: "fsetpos", scope: !709, file: !709, line: 736, type: !774, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!774 = !DISubroutineType(types: !775)
!775 = !{!11, !717, !776}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !708)
!778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !779, file: !706, line: 118)
!779 = !DISubprogram(name: "ftell", scope: !709, file: !709, line: 689, type: !780, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!780 = !DISubroutineType(types: !781)
!781 = !{!254, !717}
!782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !783, file: !706, line: 119)
!783 = !DISubprogram(name: "fwrite", scope: !709, file: !709, line: 652, type: !784, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!784 = !DISubroutineType(types: !785)
!785 = !{!113, !786, !113, !113, !734}
!786 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !564)
!787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !788, file: !706, line: 120)
!788 = !DISubprogram(name: "getc", scope: !709, file: !709, line: 486, type: !720, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !790, file: !706, line: 121)
!790 = !DISubprogram(name: "getchar", scope: !709, file: !709, line: 492, type: !622, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !792, file: !706, line: 126)
!792 = !DISubprogram(name: "perror", scope: !709, file: !709, line: 775, type: !793, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !117}
!795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !796, file: !706, line: 127)
!796 = !DISubprogram(name: "printf", scope: !709, file: !709, line: 332, type: !797, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!797 = !DISubroutineType(types: !798)
!798 = !{!11, !116, null}
!799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !800, file: !706, line: 128)
!800 = !DISubprogram(name: "putc", scope: !709, file: !709, line: 522, type: !751, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !802, file: !706, line: 129)
!802 = !DISubprogram(name: "putchar", scope: !709, file: !709, line: 528, type: !489, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !804, file: !706, line: 130)
!804 = !DISubprogram(name: "puts", scope: !709, file: !709, line: 632, type: !554, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !806, file: !706, line: 131)
!806 = !DISubprogram(name: "remove", scope: !709, file: !709, line: 146, type: !554, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !808, file: !706, line: 132)
!808 = !DISubprogram(name: "rename", scope: !709, file: !709, line: 148, type: !809, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!809 = !DISubroutineType(types: !810)
!810 = !{!11, !117, !117}
!811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !812, file: !706, line: 133)
!812 = !DISubprogram(name: "rewind", scope: !709, file: !709, line: 694, type: !715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !814, file: !706, line: 134)
!814 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !709, file: !709, line: 410, type: !797, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !816, file: !706, line: 135)
!816 = !DISubprogram(name: "setbuf", scope: !709, file: !709, line: 304, type: !817, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!817 = !DISubroutineType(types: !818)
!818 = !{null, !734, !186}
!819 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !820, file: !706, line: 136)
!820 = !DISubprogram(name: "setvbuf", scope: !709, file: !709, line: 308, type: !821, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!821 = !DISubroutineType(types: !822)
!822 = !{!11, !734, !186, !11, !113}
!823 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !824, file: !706, line: 137)
!824 = !DISubprogram(name: "sprintf", scope: !709, file: !709, line: 334, type: !825, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!825 = !DISubroutineType(types: !826)
!826 = !{!11, !186, !116, null}
!827 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !828, file: !706, line: 138)
!828 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !709, file: !709, line: 412, type: !829, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!829 = !DISubroutineType(types: !830)
!830 = !{!11, !116, !116, null}
!831 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !832, file: !706, line: 139)
!832 = !DISubprogram(name: "tmpfile", scope: !709, file: !709, line: 173, type: !833, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!833 = !DISubroutineType(types: !834)
!834 = !{!717}
!835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !836, file: !706, line: 141)
!836 = !DISubprogram(name: "tmpnam", scope: !709, file: !709, line: 187, type: !837, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!837 = !DISubroutineType(types: !838)
!838 = !{!187, !187}
!839 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !840, file: !706, line: 143)
!840 = !DISubprogram(name: "ungetc", scope: !709, file: !709, line: 639, type: !751, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!841 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !842, file: !706, line: 144)
!842 = !DISubprogram(name: "vfprintf", scope: !709, file: !709, line: 341, type: !843, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!843 = !DISubroutineType(types: !844)
!844 = !{!11, !734, !116, !159}
!845 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !846, file: !706, line: 145)
!846 = !DISubprogram(name: "vprintf", scope: !709, file: !709, line: 347, type: !847, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!847 = !DISubroutineType(types: !848)
!848 = !{!11, !116, !159}
!849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !850, file: !706, line: 146)
!850 = !DISubprogram(name: "vsprintf", scope: !709, file: !709, line: 349, type: !851, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!851 = !DISubroutineType(types: !852)
!852 = !{!11, !186, !116, !159}
!853 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !854, file: !706, line: 175)
!854 = !DISubprogram(name: "snprintf", scope: !709, file: !709, line: 354, type: !855, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!855 = !DISubroutineType(types: !856)
!856 = !{!11, !186, !113, !116, null}
!857 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !858, file: !706, line: 176)
!858 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !709, file: !709, line: 451, type: !843, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!859 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !860, file: !706, line: 177)
!860 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !709, file: !709, line: 456, type: !847, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!861 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !862, file: !706, line: 178)
!862 = !DISubprogram(name: "vsnprintf", scope: !709, file: !709, line: 358, type: !863, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!863 = !DISubroutineType(types: !864)
!864 = !{!11, !186, !113, !116, !159}
!865 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !866, file: !706, line: 179)
!866 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !709, file: !709, line: 459, type: !867, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!867 = !DISubroutineType(types: !868)
!868 = !{!11, !116, !116, !159}
!869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !854, file: !706, line: 185)
!870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !858, file: !706, line: 186)
!871 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !860, file: !706, line: 187)
!872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !862, file: !706, line: 188)
!873 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !866, file: !706, line: 189)
!874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !875, file: !879, line: 82)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !876, line: 48, baseType: !877)
!876 = !DIFile(filename: "/usr/include/wctype.h", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!879 = !DIFile(filename: "/usr/bin/../lib64/gcc/x86_64-pc-linux-gnu/9.2.1/../../../../include/c++/9.2.1/cwctype", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !881, file: !879, line: 83)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !882, line: 38, baseType: !115)
!882 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!883 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !59, file: !879, line: 84)
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !885, file: !879, line: 86)
!885 = !DISubprogram(name: "iswalnum", scope: !882, file: !882, line: 95, type: !265, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !887, file: !879, line: 87)
!887 = !DISubprogram(name: "iswalpha", scope: !882, file: !882, line: 101, type: !265, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !889, file: !879, line: 89)
!889 = !DISubprogram(name: "iswblank", scope: !882, file: !882, line: 146, type: !265, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!890 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !891, file: !879, line: 91)
!891 = !DISubprogram(name: "iswcntrl", scope: !882, file: !882, line: 104, type: !265, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !893, file: !879, line: 92)
!893 = !DISubprogram(name: "iswctype", scope: !882, file: !882, line: 159, type: !894, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!894 = !DISubroutineType(types: !895)
!895 = !{!11, !59, !881}
!896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !897, file: !879, line: 93)
!897 = !DISubprogram(name: "iswdigit", scope: !882, file: !882, line: 108, type: !265, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!898 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !899, file: !879, line: 94)
!899 = !DISubprogram(name: "iswgraph", scope: !882, file: !882, line: 112, type: !265, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!900 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !901, file: !879, line: 95)
!901 = !DISubprogram(name: "iswlower", scope: !882, file: !882, line: 117, type: !265, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !903, file: !879, line: 96)
!903 = !DISubprogram(name: "iswprint", scope: !882, file: !882, line: 120, type: !265, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!904 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !905, file: !879, line: 97)
!905 = !DISubprogram(name: "iswpunct", scope: !882, file: !882, line: 125, type: !265, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!906 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !907, file: !879, line: 98)
!907 = !DISubprogram(name: "iswspace", scope: !882, file: !882, line: 130, type: !265, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!908 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !909, file: !879, line: 99)
!909 = !DISubprogram(name: "iswupper", scope: !882, file: !882, line: 135, type: !265, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!910 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !911, file: !879, line: 100)
!911 = !DISubprogram(name: "iswxdigit", scope: !882, file: !882, line: 140, type: !265, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!912 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !913, file: !879, line: 101)
!913 = !DISubprogram(name: "towctrans", scope: !876, file: !876, line: 55, type: !914, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!914 = !DISubroutineType(types: !915)
!915 = !{!59, !59, !875}
!916 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !917, file: !879, line: 102)
!917 = !DISubprogram(name: "towlower", scope: !882, file: !882, line: 166, type: !918, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!918 = !DISubroutineType(types: !919)
!919 = !{!59, !59}
!920 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !921, file: !879, line: 103)
!921 = !DISubprogram(name: "towupper", scope: !882, file: !882, line: 169, type: !918, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !923, file: !879, line: 104)
!923 = !DISubprogram(name: "wctrans", scope: !876, file: !876, line: 52, type: !924, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!924 = !DISubroutineType(types: !925)
!925 = !{!875, !117}
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !927, file: !879, line: 105)
!927 = !DISubprogram(name: "wctype", scope: !882, file: !882, line: 155, type: !928, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!928 = !DISubroutineType(types: !929)
!929 = !{!881, !117}
!930 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !35, entity: !2, file: !36, line: 7)
!931 = !{i32 2, !"Dwarf Version", i32 4}
!932 = !{i32 2, !"Debug Info Version", i32 3}
!933 = !{i32 1, !"wchar_size", i32 4}
!934 = !{!"clang version 6.0.0 (tags/RELEASE_600/rc2) (llvm/tags/RELEASE_600/rc2 324817)"}
!935 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !3, file: !3, line: 74, type: !539, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, unit: !35, variables: !32)
!936 = !DILocation(line: 74, column: 25, scope: !935)
!937 = distinct !DISubprogram(name: "check_pow", linkageName: "_Z9check_powi", scope: !36, file: !36, line: 10, type: !938, isLocal: false, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: false, unit: !35, variables: !32)
!938 = !DISubroutineType(types: !939)
!939 = !{!13, !11}
!940 = !DILocalVariable(name: "x", arg: 1, scope: !937, file: !36, line: 10, type: !11)
!941 = !DILocation(line: 10, column: 20, scope: !937)
!942 = !DILocation(line: 12, column: 12, scope: !937)
!943 = !DILocation(line: 12, column: 18, scope: !937)
!944 = !DILocation(line: 12, column: 23, scope: !937)
!945 = !DILocation(line: 12, column: 22, scope: !937)
!946 = !DILocation(line: 12, column: 20, scope: !937)
!947 = !DILocation(line: 12, column: 14, scope: !937)
!948 = !DILocation(line: 12, column: 5, scope: !937)
!949 = distinct !DISubprogram(name: "foo", linkageName: "_Z3fooii", scope: !36, file: !36, line: 15, type: !950, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: false, unit: !35, variables: !32)
!950 = !DISubroutineType(types: !951)
!951 = !{!11, !11, !11}
!952 = !DILocalVariable(name: "i", arg: 1, scope: !949, file: !36, line: 15, type: !11)
!953 = !DILocation(line: 15, column: 13, scope: !949)
!954 = !DILocalVariable(name: "j", arg: 2, scope: !949, file: !36, line: 15, type: !11)
!955 = !DILocation(line: 15, column: 20, scope: !949)
!956 = !DILocation(line: 17, column: 5, scope: !957)
!957 = distinct !DILexicalBlock(scope: !949, file: !36, line: 17, column: 5)
!958 = !DILocation(line: 17, column: 9, scope: !957)
!959 = !DILocation(line: 17, column: 7, scope: !957)
!960 = !DILocation(line: 17, column: 5, scope: !949)
!961 = !DILocation(line: 19, column: 6, scope: !962)
!962 = distinct !DILexicalBlock(scope: !957, file: !36, line: 18, column: 5)
!963 = !DILocation(line: 20, column: 5, scope: !962)
!964 = !DILocalVariable(name: "ans", scope: !949, file: !36, line: 21, type: !11)
!965 = !DILocation(line: 21, column: 6, scope: !949)
!966 = !DILocation(line: 22, column: 2, scope: !949)
!967 = !DILocation(line: 22, column: 8, scope: !968)
!968 = distinct !DILexicalBlock(scope: !969, file: !36, line: 22, column: 2)
!969 = distinct !DILexicalBlock(scope: !949, file: !36, line: 22, column: 2)
!970 = !DILocation(line: 22, column: 12, scope: !968)
!971 = !DILocation(line: 22, column: 10, scope: !968)
!972 = !DILocation(line: 22, column: 2, scope: !969)
!973 = !DILocation(line: 24, column: 9, scope: !974)
!974 = distinct !DILexicalBlock(scope: !975, file: !36, line: 24, column: 9)
!975 = distinct !DILexicalBlock(scope: !968, file: !36, line: 23, column: 5)
!976 = !DILocation(line: 24, column: 11, scope: !974)
!977 = !DILocation(line: 24, column: 9, scope: !975)
!978 = !DILocation(line: 26, column: 10, scope: !979)
!979 = distinct !DILexicalBlock(scope: !974, file: !36, line: 25, column: 9)
!980 = !DILocation(line: 28, column: 13, scope: !975)
!981 = !DILocation(line: 28, column: 14, scope: !975)
!982 = !DILocation(line: 28, column: 6, scope: !975)
!983 = !DILocation(line: 31, column: 23, scope: !984)
!984 = distinct !DILexicalBlock(scope: !975, file: !36, line: 29, column: 9)
!985 = !DILocation(line: 31, column: 22, scope: !984)
!986 = !DILocation(line: 31, column: 18, scope: !984)
!987 = !DILocation(line: 32, column: 14, scope: !984)
!988 = !DILocation(line: 34, column: 21, scope: !984)
!989 = !DILocation(line: 35, column: 17, scope: !984)
!990 = !DILocation(line: 37, column: 21, scope: !984)
!991 = !DILocation(line: 37, column: 17, scope: !984)
!992 = !DILocation(line: 39, column: 24, scope: !984)
!993 = !DILocation(line: 39, column: 26, scope: !984)
!994 = !DILocation(line: 39, column: 25, scope: !984)
!995 = !DILocation(line: 39, column: 21, scope: !984)
!996 = !DILocation(line: 40, column: 9, scope: !984)
!997 = !DILocation(line: 22, column: 16, scope: !968)
!998 = !DILocation(line: 22, column: 2, scope: !968)
!999 = distinct !{!999, !972, !1000}
!1000 = !DILocation(line: 41, column: 5, scope: !969)
!1001 = !DILocation(line: 42, column: 9, scope: !949)
!1002 = !DILocation(line: 42, column: 2, scope: !949)
!1003 = distinct !DISubprogram(name: "swap<int>", linkageName: "_ZSt4swapIiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_", scope: !2, file: !1004, line: 182, type: !1005, isLocal: false, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: false, unit: !35, templateParams: !1014, variables: !32)
!1004 = !DIFile(filename: "/usr/bin/../lib64/gcc/x86_64-pc-linux-gnu/9.2.1/../../../../include/c++/9.2.1/bits/move.h", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!1007, !1013, !1013}
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1009, file: !1008, line: 2051, baseType: null)
!1008 = !DIFile(filename: "/usr/bin/../lib64/gcc/x86_64-pc-linux-gnu/9.2.1/../../../../include/c++/9.2.1/type_traits", directory: "/home/fomius2000/states_and_lemmas/examples/check_constr_manager")
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "enable_if<true, void>", scope: !2, file: !1008, line: 2050, size: 8, elements: !32, templateParams: !1010, identifier: "_ZTSSt9enable_ifILb1EvE")
!1010 = !{!1011, !1012}
!1011 = !DITemplateValueParameter(type: !13, value: i8 1)
!1012 = !DITemplateTypeParameter(name: "_Tp", type: null)
!1013 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !11, size: 64)
!1014 = !{!1015}
!1015 = !DITemplateTypeParameter(name: "_Tp", type: !11)
!1016 = !DILocalVariable(name: "__a", arg: 1, scope: !1003, file: !1004, line: 182, type: !1013)
!1017 = !DILocation(line: 182, column: 15, scope: !1003)
!1018 = !DILocalVariable(name: "__b", arg: 2, scope: !1003, file: !1004, line: 182, type: !1013)
!1019 = !DILocation(line: 182, column: 25, scope: !1003)
!1020 = !DILocalVariable(name: "__tmp", scope: !1003, file: !1004, line: 193, type: !11)
!1021 = !DILocation(line: 193, column: 11, scope: !1003)
!1022 = !DILocation(line: 193, column: 19, scope: !1003)
!1023 = !DILocation(line: 194, column: 13, scope: !1003)
!1024 = !DILocation(line: 194, column: 7, scope: !1003)
!1025 = !DILocation(line: 194, column: 11, scope: !1003)
!1026 = !DILocation(line: 195, column: 13, scope: !1003)
!1027 = !DILocation(line: 195, column: 7, scope: !1003)
!1028 = !DILocation(line: 195, column: 11, scope: !1003)
!1029 = !DILocation(line: 196, column: 5, scope: !1003)
!1030 = distinct !DISubprogram(name: "main", scope: !36, file: !36, line: 46, type: !622, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !35, variables: !32)
!1031 = !DILocalVariable(name: "i", scope: !1030, file: !36, line: 48, type: !11)
!1032 = !DILocation(line: 48, column: 9, scope: !1030)
!1033 = !DILocalVariable(name: "j", scope: !1030, file: !36, line: 48, type: !11)
!1034 = !DILocation(line: 48, column: 16, scope: !1030)
!1035 = !DILocation(line: 49, column: 24, scope: !1030)
!1036 = !DILocation(line: 49, column: 5, scope: !1030)
!1037 = !DILocation(line: 50, column: 24, scope: !1030)
!1038 = !DILocation(line: 50, column: 5, scope: !1030)
!1039 = !DILocalVariable(name: "ans", scope: !1030, file: !36, line: 51, type: !11)
!1040 = !DILocation(line: 51, column: 9, scope: !1030)
!1041 = !DILocation(line: 51, column: 19, scope: !1030)
!1042 = !DILocation(line: 51, column: 22, scope: !1030)
!1043 = !DILocation(line: 51, column: 15, scope: !1030)
!1044 = !DILocation(line: 53, column: 5, scope: !1030)
!1045 = distinct !DISubprogram(name: "move<int &>", linkageName: "_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_", scope: !2, file: !1004, line: 99, type: !1046, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, unit: !35, templateParams: !1051, variables: !32)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!1048, !1013}
!1048 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1050, file: !1008, line: 1461, baseType: !11)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<int &>", scope: !2, file: !1008, line: 1460, size: 8, elements: !32, templateParams: !1051, identifier: "_ZTSSt16remove_referenceIRiE")
!1051 = !{!1052}
!1052 = !DITemplateTypeParameter(name: "_Tp", type: !1013)
!1053 = !DILocalVariable(name: "__t", arg: 1, scope: !1045, file: !1004, line: 99, type: !1013)
!1054 = !DILocation(line: 99, column: 16, scope: !1045)
!1055 = !DILocation(line: 100, column: 71, scope: !1045)
!1056 = !DILocation(line: 100, column: 7, scope: !1045)
!1057 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_main.cpp", scope: !36, file: !36, type: !1058, isLocal: true, isDefinition: true, flags: DIFlagArtificial, isOptimized: false, unit: !35, variables: !32)
!1058 = !DISubroutineType(types: !32)
!1059 = !DILocation(line: 0, scope: !1057)
