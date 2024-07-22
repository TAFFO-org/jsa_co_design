; ModuleID = './build/bin/fixed/syrk/8/syrk-standard-1-fixed-8.out.ll.3.taffotmp.ll'
source_filename = "./sources/syrk.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@C_float = dso_local global [16 x [16 x float]] zeroinitializer, align 4, !taffo.info !0
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
  %C = alloca [16 x [16 x float]], align 4, !taffo.info !34, !taffo.initweight !31, !taffo.target !36
  %A = alloca [16 x [10 x float]], align 4, !taffo.info !37, !taffo.initweight !31
  %alpha1 = bitcast float* %alpha to i8*, !taffo.info !40, !taffo.initweight !41
  %beta2 = bitcast float* %beta to i8*, !taffo.info !40, !taffo.initweight !41
  %C3 = bitcast [16 x [16 x float]]* %C to i8*, !taffo.info !42, !taffo.initweight !41, !taffo.target !36
  %A4 = bitcast [16 x [10 x float]]* %A to i8*, !taffo.info !43, !taffo.initweight !41
  %arraydecay = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 0, !taffo.info !34, !taffo.initweight !41, !taffo.target !36
  %arraydecay5 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !37, !taffo.initweight !41
  call void @init_array.2(i32 noundef 16, i32 noundef 10, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %arraydecay, [10 x float]* noundef %arraydecay5), !taffo.info !44, !taffo.initweight !41, !taffo.constinfo !45, !taffo.originalCall !46
  call void @timer_start(), !taffo.constinfo !47
  %0 = load float, float* %alpha, align 4, !taffo.info !28, !taffo.initweight !41
  %1 = load float, float* %beta, align 4, !taffo.info !48, !taffo.initweight !41
  %arraydecay6 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 0, !taffo.info !34, !taffo.initweight !41, !taffo.target !36
  %arraydecay7 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !37, !taffo.initweight !41
  call void @kernel_syrk.1(i32 noundef 16, i32 noundef 10, float noundef %0, float noundef %1, [16 x float]* noundef %arraydecay6, [10 x float]* noundef %arraydecay7), !taffo.info !44, !taffo.initweight !49, !taffo.constinfo !45, !taffo.originalCall !50
  call void @timer_stop(), !taffo.constinfo !47
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc15, %for.inc14 ], !taffo.info !51
  %cmp = icmp slt i32 %i.0, 16, !taffo.info !53
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !51
  %cmp9 = icmp sle i32 %j.0, %i.0, !taffo.info !53
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %arrayidx = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 %i.0, !taffo.info !34, !taffo.initweight !41, !taffo.target !36
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !34, !taffo.initweight !49, !taffo.target !36
  %2 = load float, float* %arrayidx11, align 4, !taffo.info !34, !taffo.initweight !55, !taffo.target !36
  %arrayidx12 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx13 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx12, i32 0, i32 %j.0, !taffo.info !0
  store float %2, float* %arrayidx13, align 4, !taffo.info !56, !taffo.initweight !57, !taffo.target !36
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %inc = add nsw i32 %j.0, 1, !taffo.info !58, !taffo.constinfo !21
  br label %for.cond8, !llvm.loop !60

for.end:                                          ; preds = %for.cond8
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %i.0, 1, !taffo.info !58, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !61

for.end16:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 16, [16 x float]* noundef getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 0)), !taffo.constinfo !62
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [16 x float]* noundef %C) #0 !taffo.initweight !25 !taffo.funinfo !63 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !53
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !66
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !53
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !66
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !68
  %add = add nsw i32 %mul, %j.0, !taffo.info !68
  %rem = srem i32 %add, 20, !taffo.info !68, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !66
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !62
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv), !taffo.constinfo !70
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !71

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !72

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_syrk.1(i32 noundef %n, i32 noundef %m, float noundef %alpha, float noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A) #0 !taffo.initweight !73 !taffo.funinfo !74 !taffo.sourceFunction !50 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc26, %for.inc25 ], !taffo.info !53
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !66
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !53
  %cmp2 = icmp sle i32 %j.0, %i.0, !taffo.info !53
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !34, !taffo.initweight !75
  %arrayidx4 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !34, !taffo.initweight !76
  %0 = load float, float* %arrayidx4, align 4, !taffo.info !34, !taffo.initweight !77
  %mul = fmul float %0, %beta, !taffo.info !78, !taffo.initweight !75
  store float %mul, float* %arrayidx4, align 4, !taffo.info !80, !taffo.initweight !76
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !81

for.end:                                          ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc22, %for.end
  %k.0 = phi i32 [ 0, %for.end ], [ %inc23, %for.inc22 ], !taffo.info !53
  %cmp6 = icmp slt i32 %k.0, %m, !taffo.info !66
  br i1 %cmp6, label %for.body7, label %for.end24

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc19, %for.body7
  %j.1 = phi i32 [ 0, %for.body7 ], [ %inc20, %for.inc19 ], !taffo.info !53
  %cmp9 = icmp sle i32 %j.1, %i.0, !taffo.info !53
  br i1 %cmp9, label %for.body10, label %for.end21

for.body10:                                       ; preds = %for.cond8
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.info !37, !taffo.initweight !75
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx11, i32 0, i32 %k.0, !taffo.info !37, !taffo.initweight !76
  %1 = load float, float* %arrayidx12, align 4, !taffo.info !82, !taffo.initweight !77
  %mul13 = fmul float %alpha, %1, !taffo.info !83, !taffo.initweight !75
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %j.1, !taffo.info !37, !taffo.initweight !75
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i32 0, i32 %k.0, !taffo.info !37, !taffo.initweight !76
  %2 = load float, float* %arrayidx15, align 4, !taffo.info !82, !taffo.initweight !77
  %mul16 = fmul float %mul13, %2, !taffo.info !85, !taffo.initweight !76
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !34, !taffo.initweight !75
  %arrayidx18 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx17, i32 0, i32 %j.1, !taffo.info !34, !taffo.initweight !76
  %3 = load float, float* %arrayidx18, align 4, !taffo.info !34, !taffo.initweight !77
  %add = fadd float %3, %mul16, !taffo.info !87, !taffo.initweight !77
  store float %add, float* %arrayidx18, align 4, !taffo.info !56, !taffo.initweight !77
  br label %for.inc19

for.inc19:                                        ; preds = %for.body10
  %inc20 = add nsw i32 %j.1, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond8, !llvm.loop !89

for.end21:                                        ; preds = %for.cond8
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %inc23 = add nsw i32 %k.0, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !90

for.end24:                                        ; preds = %for.cond5
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %inc26 = add nsw i32 %i.0, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !91

for.end27:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, i32 noundef %m, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A) #0 !taffo.initweight !92 !taffo.funinfo !93 !taffo.sourceFunction !46 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.info !44, !taffo.initweight !57, !taffo.constinfo !94
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.info !80, !taffo.initweight !57, !taffo.constinfo !96
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.info !99, !taffo.initweight !31
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !100, !taffo.initweight !49
  br i1 %cmp, label %for.body, label %for.end10, !taffo.info !101, !taffo.initweight !55

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !103, !taffo.initweight !31
  %cmp4 = icmp slt i32 %j.0, %m, !taffo.info !100, !taffo.initweight !49
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !105, !taffo.initweight !55

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !106, !taffo.initweight !49
  %add = add nsw i32 %mul, 1, !taffo.info !108, !taffo.initweight !55, !taffo.constinfo !21
  %rem = srem i32 %add, %n, !taffo.info !110, !taffo.initweight !57
  %conv = sitofp i32 %rem to float, !taffo.info !112, !taffo.initweight !75
  %conv6 = sitofp i32 %n to float, !taffo.info !113
  %div = fdiv float %conv, %conv6, !taffo.info !115, !taffo.initweight !76
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.info !115, !taffo.initweight !49
  %arrayidx7 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !115, !taffo.initweight !49
  store float %div, float* %arrayidx7, align 4, !taffo.info !116, !taffo.initweight !55
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !117, !taffo.initweight !49, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !119

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.info !120, !taffo.initweight !49, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !121

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc31, %for.inc30 ], !taffo.info !99, !taffo.initweight !31
  %cmp12 = icmp slt i32 %i.1, %n, !taffo.info !100, !taffo.initweight !49
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.info !101, !taffo.initweight !55

for.body14:                                       ; preds = %for.cond11
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %j.1 = phi i32 [ 0, %for.body14 ], [ %inc28, %for.inc27 ], !taffo.info !103, !taffo.initweight !31
  %cmp16 = icmp slt i32 %j.1, %n, !taffo.info !122, !taffo.initweight !49
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.info !105, !taffo.initweight !55

for.body18:                                       ; preds = %for.cond15
  %mul19 = mul nsw i32 %i.1, %j.1, !taffo.info !106, !taffo.initweight !49
  %add20 = add nsw i32 %mul19, 2, !taffo.info !123, !taffo.initweight !55, !taffo.constinfo !21
  %rem21 = srem i32 %add20, %m, !taffo.info !125, !taffo.initweight !57
  %conv22 = sitofp i32 %rem21 to float, !taffo.info !127, !taffo.initweight !75
  %conv23 = sitofp i32 %m to float, !taffo.info !128
  %div24 = fdiv float %conv22, %conv23, !taffo.info !129, !taffo.initweight !76
  %arrayidx25 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.1, !taffo.info !131, !taffo.initweight !49
  %arrayidx26 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx25, i32 0, i32 %j.1, !taffo.info !131, !taffo.initweight !49
  store float %div24, float* %arrayidx26, align 4, !taffo.info !116, !taffo.initweight !55
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %inc28 = add nsw i32 %j.1, 1, !taffo.info !117, !taffo.initweight !49, !taffo.constinfo !21
  br label %for.cond15, !llvm.loop !132

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i.1, 1, !taffo.info !120, !taffo.initweight !49, !taffo.constinfo !21
  br label %for.cond11, !llvm.loop !133

for.end32:                                        ; preds = %for.cond11
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x401D2A28FE260B2D}
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
!40 = !{!29, i1 false, i1 false, i2 -1}
!41 = !{i32 1}
!42 = !{!35, i1 false, i1 false, i2 -1}
!43 = !{!38, i1 false, i1 false, i2 -1}
!44 = !{i1 false, !30, i1 false, i2 -1}
!45 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!46 = distinct !{null}
!47 = !{i1 false}
!48 = !{!35, !33, i1 false, i2 -1}
!49 = !{i32 2}
!50 = distinct !{null}
!51 = !{i1 false, !52, i1 false, i2 0}
!52 = !{double 0.000000e+00, double 1.700000e+01}
!53 = !{i1 false, !54, i1 false, i2 0}
!54 = !{double 0.000000e+00, double 1.000000e+00}
!55 = !{i32 3}
!56 = !{i1 false, !1, i1 false, i2 -1}
!57 = !{i32 4}
!58 = !{i1 false, !59, i1 false, i2 0}
!59 = !{double 1.000000e+00, double 1.700000e+01}
!60 = distinct !{!60, !23}
!61 = distinct !{!61, !23}
!62 = !{i1 false, i1 false, i1 false}
!63 = !{i32 1, !64, i32 1, !0}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 1.600000e+01, double 1.600000e+01}
!66 = !{i1 false, !67, i1 false, i2 0}
!67 = !{double 1.000000e+00, double 1.000000e+00}
!68 = !{i1 false, !69, i1 false, i2 0}
!69 = !{double 0.000000e+00, double 0.000000e+00}
!70 = !{i1 false, i1 false, i1 false, i1 false}
!71 = distinct !{!71, !23}
!72 = distinct !{!72, !23}
!73 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2}
!74 = !{i32 1, !64, i32 1, !16, i32 1, !28, i32 1, !48, i32 1, !34, i32 1, !37}
!75 = !{i32 5}
!76 = !{i32 6}
!77 = !{i32 7}
!78 = !{!35, !79, i1 false, i2 -1}
!79 = !{double 0.000000e+00, double 0x40217FB23216D381}
!80 = !{i1 false, !33, i1 false, i2 -1}
!81 = distinct !{!81, !23}
!82 = !{!29, !39, i1 false, i2 -1}
!83 = !{!29, !84, i1 false, i2 -1}
!84 = !{double 0.000000e+00, double 1.406250e+00}
!85 = !{!35, !86, i1 false, i2 -1}
!86 = !{double 0.000000e+00, double 0x3FF5180000000000}
!87 = !{!35, !88, i1 false, i2 -1}
!88 = !{double 0.000000e+00, double 0x402138147F130596}
!89 = distinct !{!89, !23}
!90 = distinct !{!90, !23}
!91 = distinct !{!91, !23}
!92 = !{i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2}
!93 = !{i32 1, !64, i32 1, !16, i32 1, !28, i32 1, !32, i32 1, !34, i32 1, !37}
!94 = !{!95, i1 false}
!95 = !{i1 false, !30, i1 false, i2 0}
!96 = !{!97, i1 false}
!97 = !{i1 false, !98, i1 false, i2 0}
!98 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!99 = !{i1 false, !52, i1 false, i2 1}
!100 = !{i1 false, !54, i1 false, i2 1}
!101 = !{i1 false, !102, i1 false, i2 1}
!102 = !{double 0.000000e+00, double 1.600000e+01}
!103 = !{i1 false, !104, i1 false, i2 1}
!104 = !{double 0.000000e+00, double 1.100000e+01}
!105 = !{i1 false, !3, i1 false, i2 1}
!106 = !{i1 false, !107, i1 false, i2 1}
!107 = !{double 0.000000e+00, double 1.600000e+02}
!108 = !{i1 false, !109, i1 false, i2 1}
!109 = !{double 1.000000e+00, double 1.610000e+02}
!110 = !{i1 false, !111, i1 false, i2 1}
!111 = !{double 0.000000e+00, double 1.500000e+01}
!112 = !{!35, !111, i1 false, i2 1}
!113 = !{!114, !65, i1 false, i2 1}
!114 = !{!"fixp", i32 32, i32 27}
!115 = !{!38, !39, i1 false, i2 1}
!116 = !{i1 false, i1 false, i1 false, i2 1}
!117 = !{i1 false, !118, i1 false, i2 1}
!118 = !{double 1.000000e+00, double 1.100000e+01}
!119 = distinct !{!119, !23}
!120 = !{i1 false, !59, i1 false, i2 1}
!121 = distinct !{!121, !23}
!122 = !{i1 false, !67, i1 false, i2 1}
!123 = !{i1 false, !124, i1 false, i2 1}
!124 = !{double 2.000000e+00, double 1.620000e+02}
!125 = !{i1 false, !126, i1 false, i2 1}
!126 = !{double 0.000000e+00, double 9.000000e+00}
!127 = !{!35, !126, i1 false, i2 1}
!128 = !{!35, !17, i1 false, i2 1}
!129 = !{!38, !130, i1 false, i2 1}
!130 = !{double 0.000000e+00, double 9.000000e-01}
!131 = !{!35, !1, i1 false, i2 1}
!132 = distinct !{!132, !23}
!133 = distinct !{!133, !23}
