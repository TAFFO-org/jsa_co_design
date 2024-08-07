; ModuleID = './build/bin/fixed/gemm/24/gemm-standard-1-fixed-24.out.ll.3.taffotmp.ll'
source_filename = "./sources/gemm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@C_float = dso_local global [10 x [12 x float]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.8 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !13 !taffo.funinfo !14 {
entry:
  %div = fdiv float %val, 1.000000e+01, !taffo.constinfo !15
  %cmp = fcmp oeq float %val, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end11

if.else:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %i.0 = phi i32 [ 1, %if.else ], [ %inc, %for.inc ]
  %x.0 = phi float [ %div, %if.else ], [ %x.1, %for.inc ]
  %flag.0 = phi i32 [ 0, %if.else ], [ %flag.2, %for.inc ]
  %cmp1 = icmp slt i32 %i.0, 20
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tobool = icmp ne i32 %flag.0, 0
  br i1 %tobool, label %if.end10, label %if.then2

if.then2:                                         ; preds = %for.body
  %mul = fmul float %x.0, %x.0
  %sub = fsub float %val, %mul
  %mul3 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !18
  %div4 = fdiv float %sub, %mul3
  %add = fadd float %x.0, %div4
  %mul5 = fmul float %add, %add
  %sub6 = fsub float %val, %mul5
  %cmp7 = fcmp oge float %sub6, 0.000000e+00
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %fneg = fneg float %sub6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %sub6, %cond.true ], [ %fneg, %cond.false ]
  %cmp8 = fcmp ole float %cond, 0x3F50624DE0000000
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %cond.end
  br label %if.end

if.end:                                           ; preds = %if.then9, %cond.end
  %flag.1 = phi i32 [ 1, %if.then9 ], [ %flag.0, %cond.end ]
  br label %if.end10

if.end10:                                         ; preds = %if.end, %for.body
  %x.1 = phi float [ %x.0, %for.body ], [ %add, %if.end ]
  %flag.2 = phi i32 [ %flag.0, %for.body ], [ %flag.1, %if.end ]
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %x.2 = phi float [ 0.000000e+00, %if.then ], [ %x.0, %for.end ]
  ret float %x.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !24 !taffo.funinfo !24 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !24 !taffo.funinfo !24 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !25 !taffo.funinfo !26 !taffo.start !27 {
entry:
  %alpha = alloca float, align 4, !taffo.info !28, !taffo.initweight !31
  %beta = alloca float, align 4, !taffo.info !32, !taffo.initweight !31
  %C = alloca [10 x [12 x float]], align 4, !taffo.info !34, !taffo.initweight !31, !taffo.target !36
  %A = alloca [10 x [16 x float]], align 4, !taffo.info !37, !taffo.initweight !31
  %B = alloca [16 x [12 x float]], align 4, !taffo.info !40, !taffo.initweight !31
  %alpha1 = bitcast float* %alpha to i8*, !taffo.info !42, !taffo.initweight !43
  %beta2 = bitcast float* %beta to i8*, !taffo.info !42, !taffo.initweight !43
  %C3 = bitcast [10 x [12 x float]]* %C to i8*, !taffo.info !44, !taffo.initweight !43, !taffo.target !36
  %A4 = bitcast [10 x [16 x float]]* %A to i8*, !taffo.info !45, !taffo.initweight !43
  %B5 = bitcast [16 x [12 x float]]* %B to i8*, !taffo.info !45, !taffo.initweight !43
  %arraydecay = getelementptr inbounds [10 x [12 x float]], [10 x [12 x float]]* %C, i32 0, i32 0, !taffo.info !34, !taffo.initweight !43, !taffo.target !36
  %arraydecay6 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %A, i32 0, i32 0, !taffo.info !37, !taffo.initweight !43
  %arraydecay7 = getelementptr inbounds [16 x [12 x float]], [16 x [12 x float]]* %B, i32 0, i32 0, !taffo.info !40, !taffo.initweight !43
  call void @init_array.2(i32 noundef 10, i32 noundef 12, i32 noundef 16, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %arraydecay, [16 x float]* noundef %arraydecay6, [12 x float]* noundef %arraydecay7), !taffo.info !46, !taffo.initweight !43, !taffo.constinfo !47, !taffo.originalCall !48
  call void @timer_start(), !taffo.constinfo !49
  %0 = load float, float* %alpha, align 4, !taffo.info !28, !taffo.initweight !43
  %1 = load float, float* %beta, align 4, !taffo.info !50, !taffo.initweight !43
  %arraydecay8 = getelementptr inbounds [10 x [12 x float]], [10 x [12 x float]]* %C, i32 0, i32 0, !taffo.info !34, !taffo.initweight !43, !taffo.target !36
  %arraydecay9 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %A, i32 0, i32 0, !taffo.info !37, !taffo.initweight !43
  %arraydecay10 = getelementptr inbounds [16 x [12 x float]], [16 x [12 x float]]* %B, i32 0, i32 0, !taffo.info !40, !taffo.initweight !43
  call void @kernel_gemm.1(i32 noundef 10, i32 noundef 12, i32 noundef 16, float noundef %0, float noundef %1, [12 x float]* noundef %arraydecay8, [16 x float]* noundef %arraydecay9, [12 x float]* noundef %arraydecay10), !taffo.info !46, !taffo.initweight !51, !taffo.constinfo !47, !taffo.originalCall !52
  call void @timer_stop(), !taffo.constinfo !49
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !taffo.info !53
  %cmp = icmp slt i32 %i.0, 10, !taffo.info !55
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !57
  %cmp12 = icmp slt i32 %j.0, 12, !taffo.info !55
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %arrayidx = getelementptr inbounds [10 x [12 x float]], [10 x [12 x float]]* %C, i32 0, i32 %i.0, !taffo.info !34, !taffo.initweight !43, !taffo.target !36
  %arrayidx14 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !34, !taffo.initweight !51, !taffo.target !36
  %2 = load float, float* %arrayidx14, align 4, !taffo.info !34, !taffo.initweight !59, !taffo.target !36
  %arrayidx15 = getelementptr inbounds [10 x [12 x float]], [10 x [12 x float]]* @C_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx16 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx15, i32 0, i32 %j.0, !taffo.info !0
  store float %2, float* %arrayidx16, align 4, !taffo.info !60, !taffo.initweight !61, !taffo.target !36
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %inc = add nsw i32 %j.0, 1, !taffo.info !62, !taffo.constinfo !21
  br label %for.cond11, !llvm.loop !64

for.end:                                          ; preds = %for.cond11
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %i.0, 1, !taffo.info !65, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !67

for.end19:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 10, i32 noundef 12, [12 x float]* noundef getelementptr inbounds ([10 x [12 x float]], [10 x [12 x float]]* @C_float, i32 0, i32 0)), !taffo.constinfo !68
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %ni, i32 noundef %nj, [12 x float]* noundef %C) #0 !taffo.initweight !69 !taffo.funinfo !70 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !55
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !73
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !55
  %cmp2 = icmp slt i32 %j.0, %nj, !taffo.info !73
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %ni, !taffo.info !75
  %add = add nsw i32 %mul, %j.0, !taffo.info !75
  %rem = srem i32 %add, 20, !taffo.info !75, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !73
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !77
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %C, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv), !taffo.constinfo !68
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !78

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !79

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemm.1(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, float noundef %alpha, float noundef %beta, [12 x float]* noundef %C, [16 x float]* noundef %A, [12 x float]* noundef %B) #0 !taffo.initweight !80 !taffo.funinfo !81 !taffo.sourceFunction !52 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc26, %for.inc25 ], !taffo.info !55
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !73
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !55
  %cmp2 = icmp slt i32 %j.0, %nj, !taffo.info !73
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %C, i32 %i.0, !taffo.info !34, !taffo.initweight !84
  %arrayidx4 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !34, !taffo.initweight !85
  %0 = load float, float* %arrayidx4, align 4, !taffo.info !34, !taffo.initweight !86
  %mul = fmul float %0, %beta, !taffo.info !87, !taffo.initweight !84
  store float %mul, float* %arrayidx4, align 4, !taffo.info !89, !taffo.initweight !85
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !90

for.end:                                          ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc22, %for.end
  %k.0 = phi i32 [ 0, %for.end ], [ %inc23, %for.inc22 ], !taffo.info !55
  %cmp6 = icmp slt i32 %k.0, %nk, !taffo.info !73
  br i1 %cmp6, label %for.body7, label %for.end24

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc19, %for.body7
  %j.1 = phi i32 [ 0, %for.body7 ], [ %inc20, %for.inc19 ], !taffo.info !55
  %cmp9 = icmp slt i32 %j.1, %nj, !taffo.info !73
  br i1 %cmp9, label %for.body10, label %for.end21

for.body10:                                       ; preds = %for.cond8
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %A, i32 %i.0, !taffo.info !37, !taffo.initweight !84
  %arrayidx12 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx11, i32 0, i32 %k.0, !taffo.info !37, !taffo.initweight !85
  %1 = load float, float* %arrayidx12, align 4, !taffo.info !91, !taffo.initweight !86
  %mul13 = fmul float %alpha, %1, !taffo.info !92, !taffo.initweight !84
  %arrayidx14 = getelementptr inbounds [12 x float], [12 x float]* %B, i32 %k.0, !taffo.info !40, !taffo.initweight !84
  %arrayidx15 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx14, i32 0, i32 %j.1, !taffo.info !40, !taffo.initweight !85
  %2 = load float, float* %arrayidx15, align 4, !taffo.info !94, !taffo.initweight !86
  %mul16 = fmul float %mul13, %2, !taffo.info !95, !taffo.initweight !85
  %arrayidx17 = getelementptr inbounds [12 x float], [12 x float]* %C, i32 %i.0, !taffo.info !34, !taffo.initweight !84
  %arrayidx18 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx17, i32 0, i32 %j.1, !taffo.info !34, !taffo.initweight !85
  %3 = load float, float* %arrayidx18, align 4, !taffo.info !34, !taffo.initweight !86
  %add = fadd float %3, %mul16, !taffo.info !97, !taffo.initweight !86
  store float %add, float* %arrayidx18, align 4, !taffo.info !60, !taffo.initweight !86
  br label %for.inc19

for.inc19:                                        ; preds = %for.body10
  %inc20 = add nsw i32 %j.1, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond8, !llvm.loop !99

for.end21:                                        ; preds = %for.cond8
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %inc23 = add nsw i32 %k.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !100

for.end24:                                        ; preds = %for.cond5
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %inc26 = add nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !101

for.end27:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %C, [16 x float]* noundef %A, [12 x float]* noundef %B) #0 !taffo.initweight !102 !taffo.funinfo !103 !taffo.sourceFunction !48 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.info !46, !taffo.initweight !61, !taffo.constinfo !104
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.info !89, !taffo.initweight !61, !taffo.constinfo !106
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.info !109, !taffo.initweight !31
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !111, !taffo.initweight !51
  br i1 %cmp, label %for.body, label %for.end10, !taffo.info !112, !taffo.initweight !59

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !109, !taffo.initweight !31
  %cmp4 = icmp slt i32 %j.0, %nj, !taffo.info !111, !taffo.initweight !51
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !112, !taffo.initweight !59

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !114, !taffo.initweight !51
  %add = add nsw i32 %mul, 1, !taffo.info !116, !taffo.initweight !59, !taffo.constinfo !21
  %rem = srem i32 %add, %ni, !taffo.info !118, !taffo.initweight !61
  %conv = sitofp i32 %rem to float, !taffo.info !120, !taffo.initweight !84
  %conv6 = sitofp i32 %ni to float, !taffo.info !121
  %div = fdiv float %conv, %conv6, !taffo.info !122, !taffo.initweight !85
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %C, i32 %i.0, !taffo.info !124, !taffo.initweight !51
  %arrayidx7 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !124, !taffo.initweight !51
  store float %div, float* %arrayidx7, align 4, !taffo.info !125, !taffo.initweight !59
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !126, !taffo.initweight !51, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !128

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.info !126, !taffo.initweight !51, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !129

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc31, %for.inc30 ], !taffo.info !109, !taffo.initweight !31
  %cmp12 = icmp slt i32 %i.1, %ni, !taffo.info !111, !taffo.initweight !51
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.info !112, !taffo.initweight !59

for.body14:                                       ; preds = %for.cond11
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %j.1 = phi i32 [ 0, %for.body14 ], [ %inc28, %for.inc27 ], !taffo.info !109, !taffo.initweight !31
  %cmp16 = icmp slt i32 %j.1, %nk, !taffo.info !111, !taffo.initweight !51
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.info !112, !taffo.initweight !59

for.body18:                                       ; preds = %for.cond15
  %add19 = add nsw i32 %j.1, 1, !taffo.info !126, !taffo.initweight !51, !taffo.constinfo !21
  %mul20 = mul nsw i32 %i.1, %add19, !taffo.info !130, !taffo.initweight !51
  %rem21 = srem i32 %mul20, %nk, !taffo.info !132, !taffo.initweight !59
  %conv22 = sitofp i32 %rem21 to float, !taffo.info !134, !taffo.initweight !61
  %conv23 = sitofp i32 %nk to float, !taffo.info !135
  %div24 = fdiv float %conv22, %conv23, !taffo.info !137, !taffo.initweight !84
  %arrayidx25 = getelementptr inbounds [16 x float], [16 x float]* %A, i32 %i.1, !taffo.info !137, !taffo.initweight !51
  %arrayidx26 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx25, i32 0, i32 %j.1, !taffo.info !137, !taffo.initweight !51
  store float %div24, float* %arrayidx26, align 4, !taffo.info !125, !taffo.initweight !59
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %inc28 = add nsw i32 %j.1, 1, !taffo.info !126, !taffo.initweight !51, !taffo.constinfo !21
  br label %for.cond15, !llvm.loop !138

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i.1, 1, !taffo.info !126, !taffo.initweight !51, !taffo.constinfo !21
  br label %for.cond11, !llvm.loop !139

for.end32:                                        ; preds = %for.cond11
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc52, %for.end32
  %i.2 = phi i32 [ 0, %for.end32 ], [ %inc53, %for.inc52 ], !taffo.info !109, !taffo.initweight !31
  %cmp34 = icmp slt i32 %i.2, %nk, !taffo.info !111, !taffo.initweight !51
  br i1 %cmp34, label %for.body36, label %for.end54, !taffo.info !112, !taffo.initweight !59

for.body36:                                       ; preds = %for.cond33
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc49, %for.body36
  %j.2 = phi i32 [ 0, %for.body36 ], [ %inc50, %for.inc49 ], !taffo.info !109, !taffo.initweight !31
  %cmp38 = icmp slt i32 %j.2, %nj, !taffo.info !111, !taffo.initweight !51
  br i1 %cmp38, label %for.body40, label %for.end51, !taffo.info !112, !taffo.initweight !59

for.body40:                                       ; preds = %for.cond37
  %add41 = add nsw i32 %j.2, 2, !taffo.info !140, !taffo.initweight !51, !taffo.constinfo !21
  %mul42 = mul nsw i32 %i.2, %add41, !taffo.info !142, !taffo.initweight !51
  %rem43 = srem i32 %mul42, %nj, !taffo.info !144, !taffo.initweight !59
  %conv44 = sitofp i32 %rem43 to float, !taffo.info !145, !taffo.initweight !61
  %conv45 = sitofp i32 %nj to float, !taffo.info !146
  %div46 = fdiv float %conv44, %conv45, !taffo.info !147, !taffo.initweight !84
  %arrayidx47 = getelementptr inbounds [12 x float], [12 x float]* %B, i32 %i.2, !taffo.info !149, !taffo.initweight !51
  %arrayidx48 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx47, i32 0, i32 %j.2, !taffo.info !149, !taffo.initweight !51
  store float %div46, float* %arrayidx48, align 4, !taffo.info !125, !taffo.initweight !59
  br label %for.inc49

for.inc49:                                        ; preds = %for.body40
  %inc50 = add nsw i32 %j.2, 1, !taffo.info !126, !taffo.initweight !51, !taffo.constinfo !21
  br label %for.cond37, !llvm.loop !150

for.end51:                                        ; preds = %for.cond37
  br label %for.inc52

for.inc52:                                        ; preds = %for.end51
  %inc53 = add nsw i32 %i.2, 1, !taffo.info !126, !taffo.initweight !51, !taffo.constinfo !21
  br label %for.cond33, !llvm.loop !151

for.end54:                                        ; preds = %for.cond33
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 7.210000e+00}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.000000e+01}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.020000e+02}
!6 = !{i32 1, !"NumRegisterParameters", i32 0}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!13 = !{i32 -1}
!14 = !{i32 0, i1 false}
!15 = !{i1 false, !16}
!16 = !{i1 false, !17, i1 false, i2 0}
!17 = !{double 1.000000e+01, double 1.000000e+01}
!18 = !{!19, i1 false}
!19 = !{i1 false, !20, i1 false, i2 0}
!20 = !{double 2.000000e+00, double 2.000000e+00}
!21 = !{i1 false, i1 false}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{}
!25 = !{i32 -1, i32 -1}
!26 = !{i32 0, i1 false, i32 0, i1 false}
!27 = !{i1 true}
!28 = !{!29, !30, i1 false, i2 -1}
!29 = !{!"fixp", i32 32, i32 30}
!30 = !{double 1.500000e+00, double 1.500000e+00}
!31 = !{i32 0}
!32 = !{!29, !33, i1 false, i2 -1}
!33 = !{double 1.200000e+00, double 1.200000e+00}
!34 = !{!35, !1, i1 false, i2 -1}
!35 = !{!"fixp", i32 32, i32 28}
!36 = !{!"C"}
!37 = !{!38, !39, i1 false, i2 -1}
!38 = !{!"fixp", i32 32, i32 31}
!39 = !{double 0.000000e+00, double 9.375000e-01}
!40 = !{!38, !41, i1 false, i2 -1}
!41 = !{double 0.000000e+00, double 9.166670e-01}
!42 = !{!29, i1 false, i1 false, i2 -1}
!43 = !{i32 1}
!44 = !{!35, i1 false, i1 false, i2 -1}
!45 = !{!38, i1 false, i1 false, i2 -1}
!46 = !{i1 false, !30, i1 false, i2 -1}
!47 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!48 = distinct !{null}
!49 = !{i1 false}
!50 = !{!35, !33, i1 false, i2 -1}
!51 = !{i32 2}
!52 = distinct !{null}
!53 = !{i1 false, !54, i1 false, i2 0}
!54 = !{double 0.000000e+00, double 1.100000e+01}
!55 = !{i1 false, !56, i1 false, i2 0}
!56 = !{double 0.000000e+00, double 1.000000e+00}
!57 = !{i1 false, !58, i1 false, i2 0}
!58 = !{double 0.000000e+00, double 1.430000e+02}
!59 = !{i32 3}
!60 = !{i1 false, !1, i1 false, i2 -1}
!61 = !{i32 4}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 1.000000e+00, double 1.430000e+02}
!64 = distinct !{!64, !23}
!65 = !{i1 false, !66, i1 false, i2 0}
!66 = !{double 1.000000e+00, double 1.100000e+01}
!67 = distinct !{!67, !23}
!68 = !{i1 false, i1 false, i1 false, i1 false}
!69 = !{i32 -1, i32 -1, i32 -1}
!70 = !{i32 1, !16, i32 1, !71, i32 1, !0}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 1.200000e+01, double 1.200000e+01}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 1.000000e+00, double 1.000000e+00}
!75 = !{i1 false, !76, i1 false, i2 0}
!76 = !{double 0.000000e+00, double 0.000000e+00}
!77 = !{i1 false, i1 false, i1 false}
!78 = distinct !{!78, !23}
!79 = distinct !{!79, !23}
!80 = !{i32 -1, i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!81 = !{i32 1, !16, i32 1, !71, i32 1, !82, i32 1, !28, i32 1, !50, i32 1, !34, i32 1, !37, i32 1, !40}
!82 = !{i1 false, !83, i1 false, i2 0}
!83 = !{double 1.600000e+01, double 1.600000e+01}
!84 = !{i32 5}
!85 = !{i32 6}
!86 = !{i32 7}
!87 = !{!35, !88, i1 false, i2 -1}
!88 = !{double 0.000000e+00, double 8.652000e+00}
!89 = !{i1 false, !33, i1 false, i2 -1}
!90 = distinct !{!90, !23}
!91 = !{!29, !39, i1 false, i2 -1}
!92 = !{!29, !93, i1 false, i2 -1}
!93 = !{double 0.000000e+00, double 1.406250e+00}
!94 = !{!29, !41, i1 false, i2 -1}
!95 = !{!35, !96, i1 false, i2 -1}
!96 = !{double 0.000000e+00, double 0x3FF4A0007DD44135}
!97 = !{!35, !98, i1 false, i2 -1}
!98 = !{double 0.000000e+00, double 0x4020FF852E72DA12}
!99 = distinct !{!99, !23}
!100 = distinct !{!100, !23}
!101 = distinct !{!101, !23}
!102 = !{i32 -1, i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2}
!103 = !{i32 1, !16, i32 1, !71, i32 1, !82, i32 1, !28, i32 1, !32, i32 1, !34, i32 1, !37, i32 1, !40}
!104 = !{!105, i1 false}
!105 = !{i1 false, !30, i1 false, i2 0}
!106 = !{!107, i1 false}
!107 = !{i1 false, !108, i1 false, i2 0}
!108 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!109 = !{i1 false, !110, i1 false, i2 1}
!110 = !{double 0.000000e+00, double 1.700000e+01}
!111 = !{i1 false, !56, i1 false, i2 1}
!112 = !{i1 false, !113, i1 false, i2 1}
!113 = !{double 0.000000e+00, double 1.600000e+01}
!114 = !{i1 false, !115, i1 false, i2 1}
!115 = !{double 0.000000e+00, double 2.560000e+02}
!116 = !{i1 false, !117, i1 false, i2 1}
!117 = !{double 1.000000e+00, double 2.570000e+02}
!118 = !{i1 false, !119, i1 false, i2 1}
!119 = !{double 0.000000e+00, double 9.000000e+00}
!120 = !{!35, !119, i1 false, i2 1}
!121 = !{!35, !17, i1 false, i2 1}
!122 = !{!38, !123, i1 false, i2 1}
!123 = !{double 0.000000e+00, double 9.000000e-01}
!124 = !{!35, !1, i1 false, i2 1}
!125 = !{i1 false, i1 false, i1 false, i2 1}
!126 = !{i1 false, !127, i1 false, i2 1}
!127 = !{double 1.000000e+00, double 1.700000e+01}
!128 = distinct !{!128, !23}
!129 = distinct !{!129, !23}
!130 = !{i1 false, !131, i1 false, i2 1}
!131 = !{double 0.000000e+00, double 2.720000e+02}
!132 = !{i1 false, !133, i1 false, i2 1}
!133 = !{double 0.000000e+00, double 1.500000e+01}
!134 = !{!35, !133, i1 false, i2 1}
!135 = !{!136, !83, i1 false, i2 1}
!136 = !{!"fixp", i32 32, i32 27}
!137 = !{!38, !39, i1 false, i2 1}
!138 = distinct !{!138, !23}
!139 = distinct !{!139, !23}
!140 = !{i1 false, !141, i1 false, i2 1}
!141 = !{double 2.000000e+00, double 1.800000e+01}
!142 = !{i1 false, !143, i1 false, i2 1}
!143 = !{double 0.000000e+00, double 2.880000e+02}
!144 = !{i1 false, !54, i1 false, i2 1}
!145 = !{!35, !54, i1 false, i2 1}
!146 = !{!35, !72, i1 false, i2 1}
!147 = !{!38, !148, i1 false, i2 1}
!148 = !{double 0.000000e+00, double 0x3FED555555555555}
!149 = !{!38, !41, i1 false, i2 1}
!150 = distinct !{!150, !23}
!151 = distinct !{!151, !23}
